_import("@/styles/global.css")

let classes = css("./layout.module.css")

@react.component
let make = (~children) => {
  <html lang="en">
    <body
      className={clsx([
        Fonts.dmSans.className,
        Fonts.recoleta.className,
        "light",
        classes["container"],
      ])}>
      <Fonts.Script />
      <Header />
      <main> {children} </main>
      <Footer />
    </body>
  </html>
}
