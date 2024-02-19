#!/bin/bash

cd ~/.emacs.d/org-agenda/
./getUUCal.sh
./getUART.sh

# Make sure that emacs is started as a server

emacsclient -a false -e '(progn (org-batch-agenda "a") (org-agenda-write "/home/yuan/winterNan.github.io/index.html"))'
cd /home/yuan/winterNan.github.io
git add --all
git commit -m "update cal"
git push
