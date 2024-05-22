@@directive("'use client'")

module Menubar = Ariakit.Menubar

let classes = css("./header.module.css")

module NavLink = {
  @react.component
  let make = (~children, ~href) => {
    let pathname = Next.Navigation.usePathname()
    let isActive = pathname === href
    let className = switch isActive {
    | true => clsx([classes["navlink"], classes["navlink-active"]])
    | false => classes["navlink"]
    }
    <li>
      <Next.Link href className> {children} </Next.Link>
    </li>
  }
}

module NavList = {
  @react.component
  let make = (~children) => <ul className={classes["navlist"]}> {children} </ul>
}

@react.component
let make = () => {
  <header className={classes["header"]}>
    <span className={classes["logo"]}> {"**"->s} </span>
    <nav ariaLabel="Site menu">
      <NavList>
        <NavLink href="/"> {"About"->s} </NavLink>
        <NavLink href="/snippets"> {"Snippets"->s} </NavLink>
        <NavLink href="/talks"> {"Talks"->s} </NavLink>
      </NavList>
    </nav>
  </header>
}
