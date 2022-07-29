#echo "[bench] Install hugo"
#time brew install hugo

echo "[bench] Install astro"
cd astro/my-astro-site
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install

echo "[bench] Install astro with mdx"
cd astro-with-mdx/my-astro-site
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install

echo "[bench] Install eleventy"
cd ../../eleventy
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install

echo "[bench] Install eleventy v2"
cd ../eleventy-v2
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install

echo "[bench] Install gatsby"
cd ../gatsby/my-gatsby-site
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install

echo "[bench] Install next"
cd ../../nextjs/my-app
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install

echo "[bench] Install remix"
cd ../../remix/my-remix-app
rm -rf node_modules && rm -rf package-lock.json
npm cache clean --force # For benchmarking cold npm install
time npm install