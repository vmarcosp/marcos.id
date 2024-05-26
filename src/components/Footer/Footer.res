let classes = css("./footer.module.css")

@react.component
let make = () => {
  <footer className={classes["footer"]}>
    <p className={classes["made-with"]}>
      {"Made with "->s}
      <Link target="_blank" className={classes["rescript-link"]} href="https://rescript-lang.org"> {"ReScript"->s} </Link>
    </p>
    <div className={classes["links-container"]}>
      <Link target="_blank" href="https://x.com/vmaarcosp"> {"x"->s} </Link>
      <Link target="_blank" href="https://github.com/vmarcosp"> {"github"->s} </Link>
    </div>
  </footer>
}
