#!/bin/bash

VERSION=$(cat ../version)
# https://github.com/azkaban/azkaban/issues/3329
sed -i "s/rootProject.version/${VERSION}/g" build.gradle

# https://github.com/azkaban/azkaban/issues/3310#issuecomment-1878323131
sed -i 's#https://nodejs.org/dist#https://mirrors.dotsrc.org/nodejs/release#g'  azkaban-web-server/build.gradle

# https://github.com/azkaban/azkaban/issues/2899#issuecomment-890463509
sed -i 's#https://linkedin.bintray.com/maven#https://linkedin.jfrog.io/artifactory/open-source#g' build.gradle