let classes = css("./projects.module.css")

type project = {
  name: string,
  role: string,
  description: string,
  href: string,
}

let projects = [
  {
    name: "FastCheckout",
    role: "Engineer",
    description: "VTEX's new Checkout platform as a service.",
    href: "https://www.youtube.com/watch?v=TDJG1aIUWec",
  },
  {
    name: "BetterVim",
    role: "co-Creator",
    description: "Neovim distribution as a service.",
    href: "https://bettervim.com",
  },
  {
    name: "ES2077",
    role: "co-Creator",
    description: "The world's first ReScript course as an educational tool.",
    href: "https://es77.dev",
  },
  {
    name: "Ancestor",
    role: "Creator",
    description: "Primitive UI library and utility-first toolkit for ReScript.",
    href: "https://github.com/rescriptbr/ancestor",
  },
  {
    name: "ReForm",
    role: "Maintainer",
    description: "ReScript and React library for enhancing forms.",
    href: "https://github.com/rescriptbr/reform",
  },
  {
    name: "ReSchema",
    role: "Maintainer",
    description: "Schema validation library for ReScript.",
    href: "https://github.com/rescriptbr/reschema",
  },
]

let jsonLd = {
  "@context": "https://schema.org",
  "@type": "ItemList",
  "name": "Projects by Marcos Oliveira",
  "itemListElement": projects->Array.mapWithIndex((project, index) =>
    {
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "CreativeWork",
        "name": project.name,
        "author": {
          "@type": "Person",
          "name": "Marcos Oliveira",
        },
        "description": project.description,
        "url": project.href,
      },
    }
  ),
}

module Project = {
  @react.component
  let make = (~name, ~role, ~description, ~href) => {
    <CardList.Item>
      <a href target="_blank" className={classes["project-link"]}>
        <article className={classes["project-card"]}>
          <div className={classes["project-header"]}>
            <h2> {name} </h2>
            <span> {role} </span>
          </div>
          <p className={classes["project-description"]}> {description} </p>
        </article>
      </a>
    </CardList.Item>
  }
}

@react.component
let make = () => {
  <section className={classes["container"]}>
    <JsonLd json={jsonLd} />
    <div className={classes["description-container"]}>
      <h1 className={classes["title"]}> {"Build. Ship."->s} </h1>
      <p className={classes["text"]}>
        {"Projects, experiments, and open-source contributions I've had the privilege to create or maintain."->s}
      </p>
    </div>
    <CardList>
      {projects
      ->Array.mapWithIndex(({name, role, description, href}, key) =>
        <Project
          key={key->Int.toString}
          name={name->s}
          role={role->s}
          description={description->s}
          href={href}
        />
      )
      ->React.array}
    </CardList>
  </section>
}
