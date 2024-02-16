#!/bin/bash

cd ~/.emacs.d/org-agenda/
./getUUCal.sh

# Make sure that emacs is started as a server

emacsclient -a false -e '(progn (org-batch-agenda "a") (org-agenda-write "/home/yuan/winterNan.github.io/index.html"))'
cd /home/yuan/winterNan.github.io

sed -i -e 's/\(<org-agenda-calendar-event>\).*\(<\/org-agenda-calendar-event>\)/<org-agenda-calendar-event>---<\/org-agenda-calendar-event>/g' index.html

git add --all
git commit -m "update cal"
git push
