# Create project files
# npx nuxi init nuxt
# Prompts:
# * Dir: nuxt

cd nuxt

mkdir -p ./content

rm -rf .nuxt
rm -rf .output
rm -rf dist
# rm -rf ./_posts/*.md
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../_markdown-samples/$count/* ./content/
echo "[bench] Setup complete $count pages"

time npx nuxt build
echo "[bench] Build complete $count pages"

echo "[bench] Framework version"
npx nuxt --version

rm -rf ./content/*.md
echo "[bench] Posts cleanup complete"