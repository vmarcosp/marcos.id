let s = React.string

external _import: string => unit = "import"
external css: string => {..} = "require"

let clsx = classes => classes->Array.join(" ")
