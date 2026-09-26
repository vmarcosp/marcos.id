import { getArticles, siteUrl } from "@/lib/articles.js"
import { make as Writing } from "./Writing.res.js"

const description = "Notes that need more than a snippet."

export const metadata = {
  title: "Writing — Marcos Oliveira",
  description,
  alternates: { canonical: `${siteUrl}/writing` },
  openGraph: {
    title: "Writing",
    description,
    url: `${siteUrl}/writing`,
    siteName: "Marcos Oliveira",
    type: "website",
    images: [{ url: `${siteUrl}/og.jpg`, width: 1200, height: 630 }],
  },
  twitter: {
    card: "summary_large_image",
    title: "Writing — Marcos Oliveira",
    description,
    images: [`${siteUrl}/og.jpg`],
  },
}

export default function Page() {
  return <Writing articles={getArticles()} />
}
