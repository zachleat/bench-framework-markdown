cd hugo/quickstart

mkdir -p ./content/posts

rm -rf public
rm -rf ./content/posts/*.md
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../../_markdown-samples/$count/* ./content/posts/
echo "[bench] Setup complete $count pages"

time hugo -D
echo "[bench] Build complete $count pages"

echo "[bench] Framework version"
hugo version

rm -rf ./content/posts/*.md
echo "[bench] Posts cleanup complete"