import localFont from 'next/font/local'
import { DM_Sans } from 'next/font/google'

export const dmSans = DM_Sans({
  weight: ['400', '700'],
  subsets: ['latin']
})

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
