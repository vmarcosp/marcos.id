import { compileMDX } from "next-mdx-remote/rsc"
import rehypeSlug from "rehype-slug"
import remarkGfm from "remark-gfm"
import { getArticleSource } from "./articles.js"

function remarkDemoteH1() {
  return (tree) => {
    const walk = (node) => {
      if (!node || typeof node !== "object") return
      if (node.type === "heading" && node.depth === 1) node.depth = 2
      if (Array.isArray(node.children)) node.children.forEach(walk)
    }
    walk(tree)
  }
}

function Anchor({ href = "", ...props }) {
  const external = /^https?:\/\//.test(href)
  if (external) {
    return <a href={href} rel="noreferrer noopener" target="_blank" {...props} />
  }
  return <a href={href} {...props} />
}

export async function compileArticle(slug) {
  const article = getArticleSource(slug)
  if (!article) return null

  const { content, ...meta } = article
  const { content: body } = await compileMDX({
    source: content,
    components: { a: Anchor },
    options: {
      blockJS: false,
      mdxOptions: {
        remarkPlugins: [remarkDemoteH1, remarkGfm],
        rehypePlugins: [rehypeSlug],
      },
    },
  })

  return { ...meta, body }
}
