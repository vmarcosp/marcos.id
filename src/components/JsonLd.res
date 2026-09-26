let make = json => json->JSON.stringifyAny->Option.getOr("")
@react.component
let make = (~json) => {
  <script type_="application/ld+json" dangerouslySetInnerHTML={{"__html": make(json)}} />
}
