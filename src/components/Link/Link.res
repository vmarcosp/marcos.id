let classes = css("./link.module.css")

@react.component
let make = (~href, ~target=?, ~className="", ~children) => {
  <a ?target href className={clsx([classes["link"], className])}>{children}</a>
}
