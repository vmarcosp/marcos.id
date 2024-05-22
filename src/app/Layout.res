_import("@/styles/global.css")

let classes = css("./layout.module.css")

let metadata = {
  "title": "Marcos Oliveira * Software Engineer",
  "description": "Software Engineer based in Brazil",
}

@react.component
let make = (~children) => {
  <html lang="en">
    <body className={clsx([Fonts.recoleta.className, "dark", classes["container"]])}>
      <Header />
      <main> {children} </main>
      <footer />
    </body>
  </html>
}
