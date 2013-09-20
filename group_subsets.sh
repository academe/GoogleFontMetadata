#!/bin/bash

#
# Take all font metadata in font_meta.json and extract all font-family names,
# grouping them into subsets (latin, greek, latin-ext, etc).
#

php -r "$(cat <<END
\$file = file_get_contents('font_meta.json');
\$j = json_decode(\$file);
\$out = array();
foreach(\$j as \$font) {
foreach(\$font->subsets as \$subset) {
\$out[\$subset][] = \$font->name;
}
}
echo json_encode(\$out);
END
)"

