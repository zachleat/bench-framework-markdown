# Create project files
# npx create-remix@latest

# Prompts:
# * Dir: my-remix-app
# * Template: Just the basics
# * Deploy target: Remix App Server
# * JavaScript (not TypeScript)
# * npm install yes

cd remix/my-remix-app

rm -rf .cache && rm -rf build
rm -rf ./app/routes/posts/*.md
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../../_markdown-samples/$count/* ./posts/
echo "[bench] Setup complete $count pages"

time npx remix build
echo "[bench] Build complete $count pages"

echo "[bench] Framework version"
npx remix --version

rm -rf ./app/routes/posts/*.md
echo "[bench] Posts cleanup complete"