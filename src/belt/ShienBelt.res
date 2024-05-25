let s = React.string

external _import: string => unit = "import"
external _image: string => string = "require"
external css: string => {..} = "require"

let clsx = classes => classes->Array.join(" ")
