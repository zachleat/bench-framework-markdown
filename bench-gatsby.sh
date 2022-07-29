cd gatsby

# Create project files
# npm init gatsby

# Non-default prompts:
# * Add Markdown support (without MDX)

cd my-gatsby-site
rm -rf .cache && rm -rf public && npx gatsby clean
echo "[bench] Clean complete"

rm -rf ./src/pages/*.md
if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../../_markdown-samples/$count/* ./src/pages/
echo "[bench] Setup complete $count pages"

time npx gatsby build
echo "[bench] Build complete $count pages"

echo "[bench] Framework version"
npx gatsby --version
