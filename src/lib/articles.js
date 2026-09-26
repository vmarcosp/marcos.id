// Drop a .md or .mdx file in /articles.
// Frontmatter: title, description, date (YYYY-MM-DD).
// The filename is the URL: articles/my-note.md → /writing/my-note
// Files starting with _ or . are ignored.

import fs from "node:fs"
import path from "node:path"
import matter from "gray-matter"

export const siteUrl = "https://marcos.id"

const articlesDir = path.join(process.cwd(), "articles")
const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/

export function formatDate(iso) {
  const [year, month, day] = iso.split("-").map(Number)
  return new Intl.DateTimeFormat("en-US", {
    month: "short",
    day: "numeric",
    year: "numeric",
    timeZone: "UTC",
  }).format(new Date(Date.UTC(year, month - 1, day)))
}

function asIsoDate(value, file) {
  if (value instanceof Date && !Number.isNaN(value.getTime())) {
    return value.toISOString().slice(0, 10)
  }
  if (typeof value === "string" && /^\d{4}-\d{2}-\d{2}$/.test(value)) {
    return value
  }
  throw new Error(`${file}: frontmatter "date" must be YYYY-MM-DD`)
}

function requireString(data, key, file) {
  const value = data[key]
  if (typeof value !== "string" || value.trim() === "") {
    throw new Error(`${file}: frontmatter "${key}" must be a non-empty string`)
  }
  return value.trim()
}

function readingMinutes(markdown) {
  const text = markdown.replace(/```[\s\S]*?```/g, " ")
  const words = text.trim().split(/\s+/).filter(Boolean).length
  return Math.max(1, Math.round(words / 200))
}

function resolveFile(slug) {
  if (!slugPattern.test(slug)) return null
  const mdx = path.join(articlesDir, `${slug}.mdx`)
  const md = path.join(articlesDir, `${slug}.md`)
  if (fs.existsSync(mdx)) return mdx
  if (fs.existsSync(md)) return md
  return null
}

function toMeta(slug, file, data, content) {
  const filename = path.basename(file)
  const date = asIsoDate(data.date, filename)
  const minutes = readingMinutes(content)
  return {
    slug,
    title: requireString(data, "title", filename),
    description: requireString(data, "description", filename),
    date,
    dateLabel: formatDate(date),
    minutes,
    minutesLabel: `${minutes} min`,
    href: `/writing/${slug}`,
  }
}

export function getArticleSource(slug) {
  const file = resolveFile(slug)
  if (!file) return null
  const raw = fs.readFileSync(file, "utf8")
  const { data, content } = matter(raw)
  return { ...toMeta(slug, file, data, content), content }
}

export function getArticles() {
  if (!fs.existsSync(articlesDir)) return []

  const slugs = new Set()
  for (const name of fs.readdirSync(articlesDir)) {
    if (name.startsWith("_") || name.startsWith(".")) continue
    if (!/\.mdx?$/.test(name)) continue
    const slug = name.replace(/\.mdx?$/, "")
    if (!slugPattern.test(slug)) {
      throw new Error(`${name}: use a lowercase slug, like my-note.md`)
    }
    slugs.add(slug)
  }

  return [...slugs]
    .map((slug) => {
      const article = getArticleSource(slug)
      if (!article) return null
      const { content, ...meta } = article
      return meta
    })
    .filter(Boolean)
    .sort((a, b) => {
      if (a.date === b.date) return a.title.localeCompare(b.title)
      return a.date < b.date ? 1 : -1
    })
}
