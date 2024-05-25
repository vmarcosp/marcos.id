let classes = css("./link.module.css")

@react.component
let make = (~href, ~className="", ~children) => {
  <a href className={clsx([classes["link"], className])}>{children}</a>
}
