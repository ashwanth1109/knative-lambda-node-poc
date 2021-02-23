#!/bin/sh
if [ -z "${AWS_LAMBDA_RUNTIME_API}" ]; then
    exec npm start
else
    exec /usr/local/bin/npx aws-lambda-ric app.handler
fi