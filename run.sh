# /bin/bash

docker build -t gendosu/multistage-example-builder:latest --target builder .
docker push gendosu/multistage-example-builder:latest
docker build -t gendosu/multistage-example-package:latest --target package .
docker push gendosu/multistage-example-package:latest
docker build -t gendosu/multistage-example:latest --target app .
docker push gendosu/multistage-example:latest

