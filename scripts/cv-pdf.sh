#!/bin/sh
set -e
npm run build
python3 -m http.server 4330 --directory dist >/dev/null 2>&1 &
server=$!
trap 'kill $server' EXIT
sleep 1
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --no-pdf-header-footer \
  --print-to-pdf=public/victor-ajibade-cv.pdf http://localhost:4330/cv/ 2>/dev/null
pages=$(pdfinfo public/victor-ajibade-cv.pdf | awk '/^Pages:/ {print $2}')
[ "$pages" = 1 ] || { echo "CV is $pages pages, expected 1" >&2; exit 1; }
echo "public/victor-ajibade-cv.pdf: 1 page"
