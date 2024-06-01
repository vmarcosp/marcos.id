module Font = {
  type t = {className: string}
}

module Image = {
  type props = {
    src: string,
    alt?: string,
    width?: float,
    height?: float,
    priority?: bool,
  }

  @module("next/image")
  external make: React.component<props> = "default"
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

module Metadata = {
  type openGraphImages = {
    url: string,
    width: int,
    height: int,
  }
  type openGraph = {
    title?: string,
    description?: string,
    url?: string,
    siteName?: string,
    images: array<openGraphImages>,
  }
  type t = {
    title?: string,
    description?: string,
    openGraph?: openGraph,
  }
}

module GoogleAnalytics = {
  type props = {gaId: string}

  @module("@next/third-parties/google")
  external make: React.component<props> = "GoogleAnalytics"
}

module SpeedInsights = {
  type props = {}
  @module("@vercel/speed-insights/next")
  external make: React.component<props> = "SpeedInsights"
}
