/** @type {import('next').MetadataRoute.Sitemap} */
const url = 'https://www.marcos.id'

export default function sitemap() {
  return [
    {
      url: url,
      lastModified: new Date(),
      changeFrequency: 'yearly',
      priority: 1,
    },
    {
      url: `${url}/projects`,
      lastModified: new Date(),
      changeFrequency: 'monthly',
      priority: 0.5,
    },
  ]
}
