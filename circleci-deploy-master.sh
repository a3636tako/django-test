#!/bin/sh

aws deploy create-deployment \
  --application-name django-test \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name django-test  \
  --region us-west-2  \
  --description "Circle CI deployment" \
  --github-location repository="a3636tako/django-test",commitId=${CIRCLE_SHA1}
