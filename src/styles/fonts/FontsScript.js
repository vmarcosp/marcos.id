'use client';

import { dmSans, recoleta } from './fonts'

export const FontsScript = () => (
  <style jsx global>{`
    :root {
      --font-sans: ${dmSans.style.fontFamily};
      --font-serif: ${recoleta.style.fontFamily};
    }  
  `}
  </style>
)
