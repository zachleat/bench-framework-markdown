# bench-framework-markdown

A set of scripts to test markdown processing speeds in various site generators/frameworks.

## Installation

Install each framework, a script is provided:

```sh
./install.sh
```

## Usage

The first argument to each script is the number of pages (samples are provided for 250, 500, 1000, 2000, and 4000)

```sh
./bench-astro.sh 250
./bench-remix.sh 250
./bench-nextjs.sh 250
./bench-gatsby.sh 250
./bench-eleventy.sh 250
./bench-hugo.sh 250

./bench-eleventy.sh 250
./bench-eleventy.sh 500
./bench-eleventy.sh 1000
./bench-eleventy.sh 2000
./bench-eleventy.sh 4000
```

## Results

This result set was generated on a _MacBook Air (M1, 2020) with macOS Monterey 12.5 and 16 GB memory_.

Each test was given 3 runs and the best time of each set was selected.

|Framework|250× `.md`|500× `.md`|1000× `.md`|2000× `.md`|4000× `.md`|
|---|---|---|---|---|---|
|Remix `1.6.5`|2.876|8.258|46.918|349.125|?|
|Astro `1.0.0-rc2`|3.044|4.361|7.331|13.349|30.258|
|Gatsby `4.19.0` (cli)|14.462|15.722|17.967|22.356|29.059|
|Next.js `12.2.3`|6.552|6.932|8.034|9.582|13.409|
|Eleventy `1.0.1`|0.584|0.683|0.914|1.250|1.938|
|Hugo `v0.101.0+extended`|0.071|0.110|0.171|0.352|0.684|