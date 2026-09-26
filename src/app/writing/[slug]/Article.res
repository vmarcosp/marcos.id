let classes = css("./article.module.css")

@react.component
let make = (~title, ~description, ~date, ~dateLabel, ~minutesLabel, ~href, ~children) => {
  let pageUrl = `https://marcos.id${href}`
  let jsonLd = {
    "@context": "https://schema.org",
    "@type": "BlogPosting",
    "headline": title,
    "description": description,
    "datePublished": date,
    "dateModified": date,
    "inLanguage": "en",
    "mainEntityOfPage": pageUrl,
    "url": pageUrl,
    "image": "https://marcos.id/og.jpg",
    "author": {
      "@type": "Person",
      "name": "Marcos Oliveira",
      "url": "https://marcos.id",
    },
    "publisher": {
      "@type": "Person",
      "name": "Marcos Oliveira",
      "url": "https://marcos.id",
    },
  }

  <article className={classes["article"]}>
    <JsonLd json={jsonLd} />
    <header className={classes["header"]}>
      <h1 className={classes["title"]}> {title->s} </h1>
      <p className={classes["meta"]}>
        <time dateTime={date}> {dateLabel->s} </time>
        <span> {minutesLabel->s} </span>
      </p>
      <p className={classes["lede"]}> {description->s} </p>
    </header>
    <div className={classes["prose"]}> {children} </div>
    <p className={classes["back"]}>
      <Link href="/writing"> {"All writing"->s} </Link>
    </p>
  </article>
}
