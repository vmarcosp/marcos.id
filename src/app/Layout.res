__import("@/styles/global.css")

let metadata = {
  "title": "Marcos Oliveira * Software Engineer",
  "description": "Software Engineer based in Brazil",
}

@react.component
let make = (~children) => {
  <html lang="en">
    <body className={`${Fonts.recoleta.className} flex flex-col items-center`}>
      <Header />
      <main> {children} </main>
      <footer />
    </body>
  </html>
}
