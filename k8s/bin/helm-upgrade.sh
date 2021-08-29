#!/bin/bash

mv ./k8s/app/Chart.yaml ./k8s/app/Chart.old.yaml &&
  cat ./k8s/app/Chart.old.yaml | grep -v appVersion > ./k8s/app/Chart.yaml &&
#  echo -e "\r\nappVersion: v${GITHUB_REF##*/}\r\n" >> ./.helm/app/Chart.yaml &&
  echo -e "appVersion: \"${APP_VERSION}\"" >> ./k8s/app/Chart.yaml