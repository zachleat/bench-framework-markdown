# bench-framework-markdown

A set of scripts to test markdown processing speeds in various site generators/frameworks.

* [Read the blog post: Which Generator builds Markdown the fastest?](https://www.zachleat.com/web/build-benchmark/)

## Installation

Install each framework, a script is provided:

```sh
./install.sh
```

## Usage

The first argument to each script is the number of pages (samples are provided for 250, 500, 1000, 2000, and 4000)

```sh
./bench-astro.sh 250
./bench-eleventy.sh 250
./bench-gatsby.sh 250
./bench-hugo.sh 250
./bench-nextjs-file-routing.sh 250

./bench-eleventy.sh 250
./bench-eleventy.sh 500
./bench-eleventy.sh 1000
./bench-eleventy.sh 2000
./bench-eleventy.sh 4000
```

## Results

Full (most up-to-date) results published at https://www.zachleat.com/web/build-benchmark/
