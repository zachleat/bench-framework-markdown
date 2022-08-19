const sanitizePath = path => `/blog/${path.split('/')[4].replace('.md', '')}`

export const load = async () => {
  const postFiles = import.meta.glob('/src/lib/posts/*.md')

  const iterablePostFiles = Object.entries(postFiles)
  
  const allPosts = await Promise.all(
    iterablePostFiles.map(async ([path, resolver]) => {
      const { metadata } = await resolver()
      return {
        title: metadata.title,
        path: sanitizePath(path),
      }
    })
  )

  return { allPosts }
}