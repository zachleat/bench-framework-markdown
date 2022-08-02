# Create project files
# npx create-next-app@latest
# Prompts:
# * Dir: my-app

cd nextjs-file-routing/my-app

mkdir -p ./pages/posts

rm -rf .next && rm -rf out
rm -rf ./pages/posts/*.md
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../../_markdown-samples/$count/* ./pages/posts/
echo "[bench] Setup complete $count pages"

time npx next build
echo "[bench] Build complete $count pages"

time npx next export
echo "[bench] Export complete $count pages"
echo "[bench] (add build and export times together)"

echo "[bench] Framework version"
npx next --version

rm -rf ./pages/posts/*.md
echo "[bench] Posts cleanup complete"

# 250 pages:
# 7.500+0.835
# 7.258+0.700
# 7.612+0.715

# 500 pages:
# 9.333+0.767
# 8.816+0.735
# 9.245+0.766

# 1000 pages:
# 13.436+0.868
# 13.928+0.937
# 13.993+0.923

# 2000 pages:
# 24.655+1.113
# 24.529+1.070
# 23.913+1.125

# 4000 pages:
# 1m8.836+1.817
# 1m11.129+1.542
# 1m11.425+1.518