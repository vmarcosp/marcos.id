let classes = css("./footer.module.css")

@react.component
let make = () => {
  <footer className={classes["footer"]}>
    <p className={classes["made-with"]}>
      {"Made with "->s}
      <Link className={classes["rescript-link"]} href="https://rescript-lang.org"> {"ReScript"->s} </Link>
    </p>
    <div className={classes["links-container"]}>
      <Link href="https://x.com/vmaarcosp"> {"x"->s} </Link>
      <Link href="https://github.com/vmarcosp"> {"github"->s} </Link>
    </div>
  </footer>
}
