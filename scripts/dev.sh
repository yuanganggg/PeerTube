#!/usr/bin/env sh

npm run build
NODE_ENV=test concurrently \
  "npm run livereload"  \
  "npm run watch:client" \
  "npm start"