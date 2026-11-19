#!/usr/bin/env bash
# Haalt eenmalig alle afbeeldingen en lettertypes op (macOS/Linux/Git Bash).
set -u
cd "$(dirname "$0")"
mkdir -p assets/img assets/fonts
get(){ out="$1"; shift; for u in "$@"; do if curl -fsSL -H "Accept: image/webp,image/png,image/jpeg,*/*;q=0.5" -o "$out" "$u"; then echo "OK   $out"; return; fi; done; echo "MISLUKT $out"; }
get "assets/img/7ee538_72dd637df55749018c7bbe8f2faf2ca0.png" "https://static.wixstatic.com/media/7ee538_72dd637df55749018c7bbe8f2faf2ca0~mv2.png"
get "assets/img/7ee538_bb65b33f74dc46798b323346447e446c.webp" "https://static.wixstatic.com/media/7ee538_bb65b33f74dc46798b323346447e446c~mv2.webp"
get "assets/img/7ee538_a62bf04dcf8e434bafd6e890ee4503e9.webp" "https://static.wixstatic.com/media/7ee538_a62bf04dcf8e434bafd6e890ee4503e9~mv2.webp"
get "assets/img/7ee538_7231ad141fe742c0b391cc929c1c90f0.webp" "https://static.wixstatic.com/media/7ee538_7231ad141fe742c0b391cc929c1c90f0~mv2.webp"
get "assets/img/7ee538_b3099a8ac460402bbd9b9919217c51d0.webp" "https://static.wixstatic.com/media/7ee538_b3099a8ac460402bbd9b9919217c51d0~mv2.webp"
get "assets/img/7ee538_14dfc5ee36514836bb54dbf5aca5c9cd.jpg" "https://static.wixstatic.com/media/7ee538_14dfc5ee36514836bb54dbf5aca5c9cd~mv2.jpg/v1/fill/w_1200,h_1200,al_c,q_90/7ee538_14dfc5ee36514836bb54dbf5aca5c9cd.jpg"
get "assets/img/7ee538_bfd34cd38bd34b30a84f10bda7bef590.webp" "https://static.wixstatic.com/media/7ee538_bfd34cd38bd34b30a84f10bda7bef590~mv2.webp"
get "assets/img/7ee538_5b73504357b545fdbe041c4541563626.webp" "https://static.wixstatic.com/media/7ee538_5b73504357b545fdbe041c4541563626~mv2.webp"
get "assets/img/7ee538_5b54d2feadd1481c9a752c263adf488e-crop.jpeg" "https://static.wixstatic.com/media/7ee538_5b54d2feadd1481c9a752c263adf488e~mv2.jpeg/v1/crop/x_179,y_319,w_418,h_411/fill/w_836,h_822,al_c,q_90/7ee538_5b54d2feadd1481c9a752c263adf488e.jpeg"
get "assets/img/7ee538_5e04c3a8c71d416297b05abf66509865.webp" "https://static.wixstatic.com/media/7ee538_5e04c3a8c71d416297b05abf66509865~mv2.webp"
get "assets/img/7ee538_4f3ae35202704f70a726f02b56074f82.webp" "https://static.wixstatic.com/media/7ee538_4f3ae35202704f70a726f02b56074f82~mv2.webp"
get "assets/fonts/fraunces-latin.woff2" "https://static.parastorage.com/tag-bundler/api/v1/fonts-cache/googlefont/woff2/s/fraunces/v10/6NUu8FyLNQOQZAnv9bYEvDiIdE9Ea92uemAk_WBq8U_9v0c2Wa0K7iN7hzFUPJH58nib14c7qv8oRcTn.woff2" "https://fonts.gstatic.com/s/fraunces/v10/6NUu8FyLNQOQZAnv9bYEvDiIdE9Ea92uemAk_WBq8U_9v0c2Wa0K7iN7hzFUPJH58nib14c7qv8oRcTn.woff2"
get "assets/fonts/fraunces-latin-ext.woff2" "https://static.parastorage.com/tag-bundler/api/v1/fonts-cache/googlefont/woff2/s/fraunces/v10/6NUu8FyLNQOQZAnv9bYEvDiIdE9Ea92uemAk_WBq8U_9v0c2Wa0K7iN7hzFUPJH58nib14c1qv8oRcTnaIM.woff2" "https://fonts.gstatic.com/s/fraunces/v10/6NUu8FyLNQOQZAnv9bYEvDiIdE9Ea92uemAk_WBq8U_9v0c2Wa0K7iN7hzFUPJH58nib14c1qv8oRcTnaIM.woff2"
get "assets/fonts/madefor-latin.woff2" "https://static.parastorage.com/tag-bundler/api/v1/fonts-cache/googlefont/woff2/s/wixmadefortext/v13/-W_lXI_oSymQ8Qj-Apx3HGN_Hu1RZiUR5y4coj8.woff2" "https://fonts.gstatic.com/s/wixmadefortext/v13/-W_lXI_oSymQ8Qj-Apx3HGN_Hu1RZiUR5y4coj8.woff2"
get "assets/fonts/madefor-latin-ext.woff2" "https://static.parastorage.com/tag-bundler/api/v1/fonts-cache/googlefont/woff2/s/wixmadefortext/v13/-W_lXI_oSymQ8Qj-Apx3HGN_Hu1RZisR5y4coj8y0A.woff2" "https://fonts.gstatic.com/s/wixmadefortext/v13/-W_lXI_oSymQ8Qj-Apx3HGN_Hu1RZisR5y4coj8y0A.woff2"
echo "Klaar."
