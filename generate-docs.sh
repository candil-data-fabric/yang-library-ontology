#/bin/bash

# Generate WIDOCO documentation using Docker
docker run -ti --rm \
  -v `pwd`/ontology:/usr/local/widoco/in \
  -v `pwd`/docs:/usr/local/widoco/out \
  ghcr.io/dgarijo/widoco:v1.4.25 -ontFile in/yang-library.owl \
  -outFolder out -webVowl -oops  -getOntologyMetadata \
  -excludeIntroduction -htaccess -licensius

# Use Git to checkout abstract and description sections in the document
git checkout docs/sections/abstract-en.html
git checkout docs/sections/description-en.html

# Copy ontology diagram into resources folder
mkdir docs/resources/images
cp diagrams/yang-library-*.svg docs/resources/images/

# Rename index html file
mv docs/index-en.html docs/index.html
