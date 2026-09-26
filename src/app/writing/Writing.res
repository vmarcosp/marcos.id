let classes = css("./writing.module.css")

type article = {
  slug: string,
  title: string,
  description: string,
  date: string,
  dateLabel: string,
  minutesLabel: string,
  href: string,
}

module Row = {
  @react.component
  let make = (~title, ~description, ~date, ~dateLabel, ~href) => {
    <CardList.Item>
      <Next.Link href className={classes["row"]}>
        <div className={classes["row-header"]}>
          <h2> {title} </h2>
          <time dateTime={date}> {dateLabel} </time>
        </div>
        <p> {description} </p>
      </Next.Link>
    </CardList.Item>
  }
}

@react.component
let make = (~articles: array<article>) => {
  let jsonLd = {
    "@context": "https://schema.org",
    "@type": "Blog",
    "name": "Writing",
    "description": "Notes that need more than a snippet.",
    "url": "https://marcos.id/writing",
    "inLanguage": "en",
    "author": {
      "@type": "Person",
      "name": "Marcos Oliveira",
      "url": "https://marcos.id",
    },
    "blogPost": articles->Array.map(article => {
      "@type": "BlogPosting",
      "headline": article.title,
      "description": article.description,
      "datePublished": article.date,
      "url": `https://marcos.id${article.href}`,
      "author": {
        "@type": "Person",
        "name": "Marcos Oliveira",
      },
    }),
  }

  <section className={classes["container"]}>
    <JsonLd json={jsonLd} />
    <div className={classes["text-container"]}>
      <h1 className={classes["title"]}> {"Writing."->s} </h1>
      <p className={classes["text"]}> {"Notes that need more than a snippet."->s} </p>
    </div>
    {if articles->Array.length === 0 {
      <p className={classes["empty"]}> {"Nothing here yet."->s} </p>
    } else {
      <CardList>
        {articles
        ->Array.map(article =>
          <Row
            key={article.slug}
            title={article.title->s}
            description={article.description->s}
            date={article.date}
            dateLabel={article.dateLabel->s}
            href={article.href}
          />
        )
        ->React.array}
      </CardList>
    }}
  </section>
}
