let classes = css("./home.module.css")

@react.component
let make = () => {
  <section className={classes["hero"]}>
    <h1 className={classes["title"]}> {"Marcos Oliveira"->s} </h1>
    <p className={classes["text"]}>
      {"UI engineer from Brazil, crafting outstanding products and tools using JavaScript, ReScript, React and functional programming."->s}
    </p>
  </section>
}
