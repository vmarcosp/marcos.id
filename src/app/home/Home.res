let classes = css("./home.module.css")

let jsonLd = {
  "@context": "https://schema.org",
  "@type": "AboutPage",
  "mainEntity": {
    "@type": "Person",
    "name": "Marcos Oliveira",
    "description": "UI engineer from Brazil, specializing in JavaScript, ReScript, React, and functional programming.",
    "jobTitle": "UI Engineer",
    "worksFor": {
      "@type": "Organization",
      "name": "VTEX"
    }
  }
}

@react.component
let make = () => {
  <section className={classes["hero"]}>
    <JsonLd json={jsonLd} />
    <div className={classes["text-container"]}>
      <h1 className={classes["title"]}> {"Marcos Oliveira"->s} </h1>
      <p className={classes["text"]}>
        {"UI engineer from Brazil, crafting outstanding products and tools using"->s}
        <span> {" JavaScript"->s} </span>
        {", "->s}
        <span> {" ReScript"->s} </span>
        {", "->s}
        <span> {"React"->s} </span>
        {" and "->s}
        <span> {"functional programming"->s} </span>
        {"."->s}
      </p>
      <p className={classes["text"]}>
        {"For the past 10 years, I’ve specialized in ui engineering, focusing on creating seamless user experiences and efficient developer tools."->s}
      </p>
      <p className={classes["text"]}>
        {"Currently, I’m working at "->s}
        <Link target="_blank" href="https://vtex.com"> {"VTEX"->s} </Link>
        {", where I play a pivotal role in building the new Checkout platform. I’m also heavily involved in improving VTEX’s extensibility ecosystem, ensuring a top-notch developer experience for digital commerce extensibility."->s}
      </p>
      <p className={classes["text"]}>
        {"A huge fan of vim and ReScript, I’ve been an active organizer and open-source maintainer, creating numerous ReScript libraries, courses and initiatives. I’ve also productified "->s}
        <Link target="_blank" href="https://bettervim.com"> {"my vim config "->s} </Link>
        {" and now sell it as a product (surprisingly, people actually buy it)."->s}
      </p>
    </div>
    <Link className={classes["email-link"]} target="_blank" href="mailto:marcosoliveira@duck.com">
      {"marcosoliveira[at]duck.com"->s}
    </Link>
  </section>
}
