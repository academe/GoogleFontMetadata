GoogleFontMetadata
==================

Given the Google Webfonts hg repository pulled into the local "googlefonts-hg" directory,
these scripts aim to extract all the font metadata so that it can be used in other
tools.

The first file, font_meta.json, is the complete, combined metadata.

The second file, font_categories.json, contains a list of font families grouped by
font type.

The reason for doing this is that Google provide no APIs for extracting this
information.

It is all quick and dirty, but does the job for me, for now.
