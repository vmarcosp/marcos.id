let classes = css("./home.module.css")

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
    </div>
    <div className={classes["links-container"]}>
      <a className={classes["link"]} href="mailto:marcosoliveira@duck.com"> {"marcosoliveira[at]duck.com"->s} </a>
      <a className={classes["link"]} href="https://x.com/vmaarcosp"> {"x"->s} </a>
      <a className={classes["link"]} href="https://github.com/vmarcosp"> {"github"->s} </a>
    </div>
  </section>
}
