module Menubar = {
  type props = {className?: string, children: React.element}
  @module("@ariakit/react")
  external make: React.component<props> = "Menubar"

  module MenuProvider = {
    type props = {children: React.element}

    @module("@ariakit/react")
    external make: React.component<props> = "MenuProvider"
  }

  module MenuItem = {
    type props = {className?: string, children?: React.element, render?: React.element}

    @module("@ariakit/react")
    external make: React.component<props> = "MenuItem"
  }
}
