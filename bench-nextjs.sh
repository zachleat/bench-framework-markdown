# Create project files
# npx create-next-app@latest
# Prompts:
# * Dir: my-app

cd nextjs/my-app

mkdir -p ./_posts

rm -rf .next && rm -rf out
rm -rf ./_posts/*.md
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../../_markdown-samples/$count/* ./_posts/
echo "[bench] Setup complete $count pages"

time npx next build
echo "[bench] Build complete $count pages"

time npx next export
echo "[bench] Export complete $count pages"
echo "[bench] (add build and export times together)"

echo "[bench] Framework version"
npx next --version

rm -rf ./_posts/*.md
echo "[bench] Posts cleanup complete"