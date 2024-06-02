let classes = css("./projects.module.css")

module Project = {
  @react.component
  let make = (~name, ~role, ~description, ~href) => {
    <CardList.Item>
      <a href target="_blank" className={classes["project-link"]}>
        <article className={classes["project-card"]}>
          <div className={classes["project-header"]}>
            <h2> {name} </h2>
            <span> {role} </span>
          </div>
          <p className={classes["project-description"]}> {description} </p>
        </article>
      </a>
    </CardList.Item>
  }
}

@react.component
let make = () => {
  <section className={classes["container"]}>
    <div className={classes["description-container"]}>
      <h1 className={classes["title"]}> {"Build. Ship."->s} </h1>
      <p className={classes["text"]}>
        {"Projects, experiments, and open-source contributions I've had the privilege to create or maintain."->s}
      </p>
    </div>
    <CardList>
      <Project
        name={"FastCheckout"->s}
        role={"Engineer"->s}
        description={"VTEX's new Checkout platform as a service."->s}
        href="https://www.youtube.com/watch?v=TDJG1aIUWec"
      />
      <Project
        name={"BetterVim"->s}
        role={"co-Creator"->s}
        description={"Neovim distribution as a service."->s}
        href="https://bettervim.com"
      />
      <Project
        name={"ES2077"->s}
        role={"co-Creator"->s}
        description={"The world's first ReScript course as an educational tool."->s}
        href="https://es77.dev"
      />
      <Project
        name={"Ancestor"->s}
        role={"Creator"->s}
        description={"Primitive UI library and utility-first toolkit for ReScript."->s}
        href="https://github.com/rescriptbr/ancestor"
      />
      <Project
        name={"ReForm"->s}
        role={"Maintainer"->s}
        description={"ReScript and React library for enhancing forms."->s}
        href="https://github.com/rescriptbr/reform"
      />
      <Project
        name={"ReSchema"->s}
        role={"Maintainer"->s}
        description={"Schema validation library for ReScript."->s}
        href="https://github.com/rescriptbr/reschema"
      />
    </CardList>
  </section>
}
