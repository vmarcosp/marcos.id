__import("@/styles/reset.css")

let metadata = {
  "title": "Marcos Oliveira * Software Engineer",
  "description": "Software Engineer based in Brazil",
}

@react.component
let make = (~children) => {
  <html lang="en">
    <body className={Fonts.recoleta.className}> {children} </body>
  </html>
}
