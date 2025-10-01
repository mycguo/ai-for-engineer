#!/bin/bash

echo "Building EPUB..."

pandoc metadata.yaml chapters/*.md \
  --standalone \
  --toc \
  --toc-depth=3 \
  --css=epub.css \
  --number-sections \
  --top-level-division=chapter \
  --epub-cover-image=images/cover.png \
  --highlight-style=pygments \
  -o build/mybook.epub

echo "EPUB created: build/mybook.epub"
echo "Opening in Calibre..."
calibre build/mybook.epub