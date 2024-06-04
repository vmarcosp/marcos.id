let make = json => json->Obj.magic->Js.Json.stringify
@react.component
let make = (~json) => {
  <script type_="application/ld+json" dangerouslySetInnerHTML={{"__html": make(json)}} />
}
