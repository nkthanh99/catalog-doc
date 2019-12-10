#/bin/bash

redoc-cli bundle -o index.html openapi.yml

git checkout -b gh-pages

git add . *.html

git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"

git remote add origin https://${GH_TOKEN}@github.com/catalog-docs > /dev/null 2>&1

git push --set-upstream origin gh-pages
