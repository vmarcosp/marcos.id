let classes = css("./not-found.module.css")

@react.component
let make = () => {
  <section className={classes["container"]}>
    <h1 className={classes["title"]}> {"This page is not here."->s} </h1>
    <p className={classes["text"]}>
      <Link href="/"> {"About"->s} </Link>
    </p>
  </section>
}
