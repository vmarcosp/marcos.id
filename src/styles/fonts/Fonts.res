@module("./fonts.js")
external recoleta: Next.Font.t = "recoleta"

@module("./fonts.js")
external dmSans: Next.Font.t = "dmSans"



module Script = {
  type props = {}
  @module("./FontsScript.js")
  external make: React.component<props> = "FontsScript"
}
