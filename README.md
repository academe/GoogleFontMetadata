GoogleFontMetadata
==================

Given the Google Webfonts hg repository pulled into the local "googlefonts-hg" directory,
these scripts aim to extract all the font metadata so that it can be used in other
tools.

The first file, font_meta.json, is the complete, combined metadata.

The second file, font_categories.json, contains a list of font families grouped by
font category.

The reason for doing this is that Google provide no APIs for extracting this
information.

It is all quick and dirty (hell, it's got shell scripts mixed with the data files that it
generates, eugh), but does the job for me, for now.

The Google Webfonts hg repository is massive - over 2.5Gbytes in size. However, I cannot see
and easy way to get at the metadata without extracting the entire repository, so I just
have it updating on a server every now and then.

The entry point is update_font_meta.sh. That will update the hg files, combine the metadata
to give font_meta.json and then group the fonts into font_categories.json.

One thing that is going to be useful to me, is to extract the list of font subsets. This is
useful in CRM themes to enable the theme administrator to choose which subsets will be
available on the site.

Please note: this data is likely to be *ahead* of the fonts that Google publishes on its
webfonts API. For example, at time of writing this there are a dozen subsets in this data;
only half a dozen subsets are published as live fonts however.

The font hg repository is here:

http://code.google.com/p/googlefontdirectory/
