let classes = css("./home.module.css")

let metadata: Next.Metadata.t = {
  title: "Marcos Oliveira",
  description: "Marcos Oliveira • UI Engineer"
}

@react.component
let make = () => {
  <section className={classes["hero"]}>
    <div className={classes["text-container"]}>
      <h1 className={classes["title"]}> {"Marcos Oliveira"->s} </h1>
      <p className={classes["text"]}>
        {[
          "UI engineer from Brazil, crafting outstanding products and tools using"->s,
          <span> {" JavaScript "->s} </span>,
          ", "->s,
          <span> {" ReScript "->s} </span>,
          ", "->s,
          <span> {"React"->s} </span>,
          " and "->s,
          <span> {"functional programming"->s} </span>,
          "."->s,
        ]->React.array}
      </p>
      <p className={classes["text"]}>
        {"For the past 10 years, I’ve specialized in ui engineering, focusing on creating seamless user experiences and efficient developer tools."->s}
      </p>
      <p className={classes["text"]}>
        {[
          "Currently, I’m working at "->s,
          <Link className={classes["text-link"]} href="https://vtex.com">{"VTEX"->s}</Link>,
          ", where I play a pivotal role in building the new Checkout platform. I’m also heavily involved in improving VTEX’s extensibility ecosystem, ensuring a top-notch developer experience for digital commerce extensibility."->s,
        ]->React.array}
      </p>
      <p className={classes["text"]}>
        {"A huge fan of vim and ReScript, I’ve been an active organizer and open-source maintainer, creating numerous ReScript libraries, courses and initiatives. I’ve also productified  my vim config and now sell it as a product (surprisingly, people actually buy it 🖤)."->s}
      </p>
    </div>
    <Link className={classes["email-link"]} href="mailto:marcosoliveira@duck.com">
      {"marcosoliveira[at]duck.com"->s}
    </Link>
  </section>
}
