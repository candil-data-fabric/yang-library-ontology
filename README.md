# YANG Catalog Ontology

Online documentation: https://w3id.org/yang/catalog

![YANG Catalog Ontology](diagrams/yang-catalog.svg)

## Local Development

We encourage to locally develop the ontology documentation before publishing it online. For this, we recommend running WIDOCO tool via Docker container.

First, make sure to build a Docker image for the latest release of WIDOCO tool:
```bash
docker build -t dgarijo/widoco:1.4.24 .
```
Then generate the documentation as follows:

```bash
docker run -ti --rm \
  -v `pwd`/ontology:/usr/local/widoco/in \
  -v `pwd`/docs:/usr/local/widoco/out \
  dgarijo/widoco:1.4.24 -ontFile in/aeros-building.owl -outFolder out -webVowl -oops  -getOntologyMetadata -htaccess -licensius
```
