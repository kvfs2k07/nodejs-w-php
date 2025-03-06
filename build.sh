#!/bin/sh

image_name=kvfs2k07/nodejs-w-php
image_versions="7.0"

cd $(dirname "${0}")

for image_version in ${image_versions}; do
    echo Downloading kvfs2k07/nodejs-w-php:${image_version}
    docker pull kvfs2k07/nodejs-w-php:${image_version}

    docker rmi ${image_name}:${image_version}
    docker rmi ${image_name}:latest

    echo Building image ${image_name}:${image_version}
    docker build \
        -t ${image_name}:${image_version} \
        -t ${image_name}:latest \
        -f ${image_version}/Dockerfile \
        ./

    echo Pushing image ${image_name}:${image_version}
    docker push ${image_name}:${image_version}

    echo Pushing image ${image_name}:latest
    docker push ${image_name}:latest
done
