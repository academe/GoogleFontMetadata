#!/bin/bash

# This, and the scripts it calls, are quick and dirty, and I
# make no appologies for that.
# This needs to be run from the parent directory of the 
# webfonts hg repository, extracted to googlefonts-hg
# It is all quick and dirty and I make no apologies.

# Update the hg respository.

cd googlefonts-hg
hg pull
hg update
cd -

# Combine the metadata files.

./combine_meta.sh >font_meta.json

# Extract the font category groups data.

./group_categories.sh >font_categories.json

# Extract the font subset groups data.

./group_subsets.sh >font_subsets.json

