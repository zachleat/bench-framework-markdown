<script>
  export let data
</script>

<h1>SvelteKit skeleton blog starter</h1>

<ul>
  {#each data.allPosts as post}
    <li>
      <a href="{post.path}">
        {post.title}
      </a>
    </li>
  {/each}
</ul>