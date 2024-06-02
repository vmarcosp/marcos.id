let classes = css("./snippets.module.css")

module Snippet = {
  @react.component
  let make = (~name, ~description, ~category, ~href) => {
    <CardList.Item>
      <a href target="_blank" className={classes["snippet-link"]}>
        <div className={classes["snippet-header"]}>
          <h2> {name} </h2>
          <span>{category->s}</span>
        </div>
        <p> {description} </p>
      </a>
    </CardList.Item>
  }
}

@react.component
let make = () => {
  <section className={classes["container"]}>
    <div className={classes["text-container"]}>
      <h1 className={classes["title"]}> {"Snippets"->s} </h1>
      <p className={classes["text"]}>
        {"Quick and minimalist solutions for TypeScript, ReScript, React, Shell, TMUX, Neovim, and Lua. Snippets I couldn't live without."->s}
      </p>
    </div>
    <CardList>
      <Snippet
        name={"PNG to WEBP"->s}
        description={"Shell script to convert all .png files in the directory to .webp"->s}
        category="Shell"
        href="/test"
      />
      <Snippet
        name={"<VisuallyHidden />"->s}
        description={"React component to visually hide any content."->s}
        category="React"
        href="/test"
      />
    </CardList>
  </section>
}
