import { notFound } from "next/navigation"
import { getArticles, getArticleSource, siteUrl } from "@/lib/articles.js"
import { compileArticle } from "@/lib/compile-article.js"
import { make as Article } from "./Article.res.js"

export const dynamicParams = false

export function generateStaticParams() {
  return getArticles().map((article) => ({ slug: article.slug }))
}

export async function generateMetadata({ params }) {
  const { slug } = await params
  const article = getArticleSource(slug)
  if (!article) return {}

  const url = `${siteUrl}${article.href}`
  const title = `${article.title} — Marcos Oliveira`

  return {
    title,
    description: article.description,
    authors: [{ name: "Marcos Oliveira", url: siteUrl }],
    alternates: { canonical: url },
    openGraph: {
      title: article.title,
      description: article.description,
      url,
      siteName: "Marcos Oliveira",
      type: "article",
      publishedTime: article.date,
      authors: ["Marcos Oliveira"],
      images: [{ url: `${siteUrl}/og.jpg`, width: 1200, height: 630 }],
    },
    twitter: {
      card: "summary_large_image",
      title,
      description: article.description,
      images: [`${siteUrl}/og.jpg`],
    },
  }
}

export default async function Page({ params }) {
  const { slug } = await params
  const article = await compileArticle(slug)
  if (!article) notFound()

  return (
    <Article
      title={article.title}
      description={article.description}
      date={article.date}
      dateLabel={article.dateLabel}
      minutesLabel={article.minutesLabel}
      href={article.href}
    >
      {article.body}
    </Article>
  )
}
