@@directive("'use client'")

let classes = css("./header.module.css")
let logo = _image("./logo.webp")

module NavLink = {
  @react.component
  let make = (~children, ~target=?,  ~href) => {
    let pathname = Next.Navigation.usePathname()
    let isActive = pathname === href
    let className = switch isActive {
    | true => clsx([classes["navlink"], classes["navlink-active"]])
    | false => classes["navlink"]
    }
    <li>
      <Next.Link href ?target className> {children} </Next.Link>
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
    <Next.Image priority={true} src={logo} width={32.0} alt="Marcos Oliveira's Logo" />
    <nav ariaLabel="Site menu">
      <NavList>
        <NavLink href="/"> {"About"->s} </NavLink>
        <NavLink  href="/projects"> {"Projects"->s} </NavLink>
      </NavList>
    </nav>
  </header>
}
