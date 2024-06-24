cd lume

rm -rf _site
rm -rf ./posts/*.md
echo "[bench] Clean complete"

if [ -z "$1" ]
  then count="1000"
else
  count="$1"
fi
cp ../_markdown-samples/$count/* ./posts/
echo "[bench] Setup complete $count pages"

time deno task build --quiet
echo "[bench] Build complete $count pages"

echo "[bench] Framework version"
deno task lume --version

rm -rf ./posts/*.md
echo "[bench] Posts cleanup complete"