import localFont from 'next/font/local'

export const recoleta = localFont({
  src: [
    {
      path: "./font-files/Recoleta-Bold.ttf",
      weight: "700",
      style: "normal"
    },
    {
      path: "./font-files/Recoleta-SemiBold.ttf",
      weight: "600",
      style: "normal"
    },
    {
      path: "./font-files/Recoleta-Medium.ttf",
      weight: "500",
      style: "normal"
    },
    {
      path: "./font-files/Recoleta-Regular.ttf",
      weight: "400",
      style: "normal"
    }
  ]
})
