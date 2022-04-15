#!/bin/sh
LANG=C

# ローカルのCSSを読み込む
cat index.html | sed 's#<link rel="stylesheet" href="https://storage.googleapis.com/codelab-elements/codelab-elements.css">#<link rel="stylesheet" href="./codelab-elements.css">#g' > index.html.1
mv index.html.1 index.html

# Copyright
cat index.html | sed 's#<p>Copyright 2020 RISA Co., LTD.</p>#<center>Copyright 2020 RISA Co., LTD.</center>#g' > index.html.1
mv index.html.1 index.html

exit 0
