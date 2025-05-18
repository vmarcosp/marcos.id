let classes = css("./snippets.module.css")

type snippet = {
  name: string,
  description: string,
  category: string,
  href: string,
}

let snippets = [
  {
    name: "png2webp",
    description: "Shell script to convert all .png files in the directory to .webp",
    category: "Shell",
    href: "/studio/snippets/png-to-webp",
  },
  {
    name: "mktouch",
    description: "Touch a file and magically create the needed parent folders.",
    category: "Shell",
    href: "/studio/snippets/mktouch",
  },
]

let jsonLd = {
  "@context": "https://schema.org",
  "@type": "ItemList",
  "itemListElement": snippets->Array.mapWithIndex((snippet, index) =>
    {
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "CreativeWork",
        "name": snippet.name,
        "author": {
          "@type": "Person",
          "name": "Marcos Oliveira",
        },
        "dateCreated": "2023-05-29",
        "description": snippet.description,
        "url": `https://www.marcos.id/${snippet.href}`,
      },
    }
  ),
}

module Snippet = {
  @react.component
  let make = (~name, ~description, ~category, ~href) => {
    <CardList.Item>
      <a href className={classes["snippet-link"]}>
        <div className={classes["snippet-header"]}>
          <h2> {name} </h2>
          <span> {category->s} </span>
        </div>
        <p> {description} </p>
      </a>
    </CardList.Item>
  }
}

@react.component
let make = () => {
  <section className={classes["container"]}>
    <JsonLd json={jsonLd} />
    <div className={classes["text-container"]}>
      <h1 className={classes["title"]}> {"Snippets."->s} </h1>
      <p className={classes["text"]}>
        {"Quick and minimalist solutions for TypeScript, ReScript, React, Shell, TMUX, Neovim, and Lua. Snippets I couldn't live without."->s}
      </p>
    </div>
    <CardList>
      {snippets
      ->Array.mapWithIndex((snippet, key) =>
        <Snippet
          key={key->Int.toString}
          name={snippet.name->s}
          description={snippet.description->s}
          category={snippet.category}
          href={snippet.href}
        />
      )
      ->React.array}
    </CardList>
  </section>
}
