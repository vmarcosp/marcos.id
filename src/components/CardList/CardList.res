let classes = css("./card-list.module.css")

module Item = {
  @react.component
  let make = (~children, ~className="") => {
    <article className={clsx([classes["item"], className])}>{children}</article>
  }
}

@react.component
let make = (~children, ~className="") => {
  <div className={clsx([classes["card-list"], className])}> {children} </div>
}
