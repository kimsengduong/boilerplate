#!/bin/sh

# Upgrade Yarn to Berry (latest Yarn 2 version known to Yarn 1)
yarn set version berry

# Upgrade Yarn Berry to latest version now that Yarn knows where to download it from
yarn set version latest

# (optional) Set nodeLinker to node-modules - this 100% guarantees backwards compatibility
yarn config set nodeLinker node-modules

# (optional) Adds `yarn upgrade-interactive` command back
yarn plugin import interactive-tools

# Reinstalls project using Yarn 2. This will also update your yarn.lock file, but will NOT sneakily upgrade the dependencies
yarn

# Commits the changes
git add . && git commit -m "Upgrade Yarn to Yarn Berry (v2)"