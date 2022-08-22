cd sveltekit/

mkdir -p ./src/lib/posts/

rm -rf build
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../_markdown-samples/$count/* ./src/lib/posts/
echo "[bench] Setup complete $count pages"

time npm run build
echo "[bench] Build complete $count pages"

rm -rf ./src/lib/posts/*.md
echo "[bench] Posts cleanup complete"