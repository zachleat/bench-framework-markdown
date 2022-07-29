echo "[bench] Install hugo"
time brew install hugo

echo "[bench] Install astro"
cd astro/my-astro-site
time npm install

echo "[bench] Install eleventy"
cd ../../eleventy
time npm install

echo "[bench] Install gatsby"
cd ../gatsby/my-gatsby-site
time npm install

echo "[bench] Install next"
cd ../../nextjs/my-app
time npm install

echo "[bench] Install remix"
cd ../../remix/my-remix-app
time npm install