#!/bin/bash

#
# Combine Google Webfonts metadata into one file.
# This script should be run from the parent directory of the export
# of the Google Webfonts hg repository.
#

cat googlefonts-hg/ofl/*/METADATA.json \
    | awk 'BEGIN {print "["} {if (p=="}" && $0=="{") {print ",{"; next;}} {p=$0} {print} END {print "]"}'


