module Font = {
  type t = {
    className: string
  }
}

module Link = {
  type props = {
    href: string,
    children: React.element,
    className?: string,
    target?: string,
  }

  @module("next/link")
  external make: React.component<props> = "default"
}

module Navigation = {
  @module("next/navigation")
  external usePathname: unit => string = "usePathname"
}
