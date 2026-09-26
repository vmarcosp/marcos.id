import { getArticles, siteUrl } from "@/lib/articles.js"

export const dynamic = "force-static"

const staticRoutes = [
  { path: "", changeFrequency: "yearly", priority: 1 },
  { path: "/projects", changeFrequency: "monthly", priority: 0.6 },
  { path: "/studio/snippets", changeFrequency: "monthly", priority: 0.6 },
  { path: "/studio/snippets/png-to-webp", changeFrequency: "yearly", priority: 0.4 },
  { path: "/studio/snippets/mktouch", changeFrequency: "yearly", priority: 0.4 },
  { path: "/featured", changeFrequency: "monthly", priority: 0.5 },
  { path: "/writing", changeFrequency: "weekly", priority: 0.8 },
]

export default function sitemap() {
  const articles = getArticles()

  return [
    ...staticRoutes.map((route) => ({
      url: `${siteUrl}${route.path}`,
      changeFrequency: route.changeFrequency,
      priority: route.priority,
    })),
    ...articles.map((article) => ({
      url: `${siteUrl}${article.href}`,
      lastModified: article.date,
      changeFrequency: "yearly",
      priority: 0.7,
    })),
  ]
}
