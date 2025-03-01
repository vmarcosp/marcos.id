let classes = css("./featured.module.css")

type featured = {
  title: string,
  kind: string,
  source: string,
  href: string,
}

let featuredItems = [
  {
    title: "ReScript in Practice — pt. I",
    source: "Vedovelli's Youtube Channel",
    kind: "Talk",
    href: "https://www.youtube.com/watch?v=koN94Wc_DTc",
  },
  {
    title: "ReScript in Practice — pt. II",
    source: "Vedovelli's Youtube Channel",
    kind: "Talk",
    href: "https://www.youtube.com/watch?v=vzgAS3W-l2w",
  },
  {
    title: "What's ReScript?",
    source: "Lukin Co's Youtube Channel",
    kind: "Talk",
    href: "https://www.youtube.com/watch?v=tNgyRo2fhwU",
  },
  {
    title: "ReScript: EcmaScript 2077",
    source: "React Conf Brazil",
    kind: "Talk",
    href: "https://www.youtube.com/watch?v=ZY4n7B0pZFw",
  },
  {
    title: "An Introduction to ReScript",
    source: "Taverna da Programação",
    kind: "Podcast",
    href: "https://open.spotify.com/episode/2vwK5oQRaHNtWe7bwdwVHk",
  },
  {
    title: "ReScript The Bet of Millions",
    source: "Front in Floripa",
    kind: "Talk",
    href: "https://pitchdeck.hypermatic.com/slides/la1dou1306210?token=Mmc3WTN3UXNeSWRjcjI%3D",
  },
  {
    title: "Marcos Oliveira's Dotfiles",
    source: ".Dotfiles Newsletter",
    kind: "Article",
    href: "https://dotfiles.substack.com/p/37-marcos-vinicius-oliveira-pereira",
  },
]

let jsonLd = {
  "@context": "https://schema.org",
  "@type": "ItemList",
  "name": "Featured Items with Marcos Oliveira",
  "itemListElement": featuredItems->Array.mapWithIndex((item, index) =>
    {
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "CreativeWork",
        "name": item.title,
        "author": {
          "@type": "Person",
          "name": "Marcos Oliveira",
        },
        "description": item.title,
        "url": item.href,
      },
    }
  ),
}

module FeaturedItem = {
  @react.component
  let make = (~title, ~kind, ~source, ~href) => {
    <CardList.Item>
      <a href target="_blank" className={classes["featured-link"]}>
        <article className={classes["featured-card"]}>
          <div className={classes["featured-header"]}>
            <h2> {title} </h2>
            <span> {kind} </span>
          </div>
          <p className={classes["featured-description"]}> {source} </p>
        </article>
      </a>
    </CardList.Item>
  }
}

@react.component
let make = () => {
  <section className={classes["container"]}>
    <JsonLd json={jsonLd} />
    <div className={classes["description-container"]}>
      <h1 className={classes["title"]}> {"Featured."->s} </h1>
      <p className={classes["text"]}>
        {"Talks, podcasts and workshops where I could share my knowledge, mainly about ReScript."->s}
      </p>
    </div>
    <CardList>
      {featuredItems
      ->Array.mapWithIndex(({title, kind, source, href}, key) =>
        <FeaturedItem
          key={key->Int.toString} source={source->s} title={title->s} kind={kind->s} href={href}
        />
      )
      ->React.array}
    </CardList>
  </section>
}
