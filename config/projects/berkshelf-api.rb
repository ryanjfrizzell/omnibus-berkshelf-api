#
# Copyright 2016 YOUR NAME
#
# All Rights Reserved.
#

name "berkshelf-api"
maintainer "Ryan Frizzell"
homepage "https://github.com/ryanjfrizzell/omnibus-berkshelf-api"

# Defaults to C:/berkshelf-api on Windows
# and /opt/berkshelf-api on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# berkshelf-api dependencies/components
dependency "chef"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
