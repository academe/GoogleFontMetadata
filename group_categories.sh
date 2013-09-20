#!/bin/bash

#
# Take all font metadata in font_meta.json and extract all font-family names,
# grouping them into types (serif, handwriting, etc) of font.
#

php -r "$(cat <<END
//echo ' starting...';
\$file = file_get_contents('font_meta.json');
\$j = json_decode(\$file);
//var_dump(\$j);
\$out = array();
foreach(\$j as \$font) {
\$out[\$font->category][] = \$font->name;
}
echo json_encode(\$out);
//echo ' ...ending';
END
)"

