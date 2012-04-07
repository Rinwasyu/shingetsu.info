#!/bin/sh -e

cd /srv/stage/bbs.shingetsu.info

rsync -Cacv --delete \
    --exclude="- /setup.sh" \
    --exclude="- /index.html" \
    --exclude="- /mobile.html" \
    --exclude="- /mobile.xhtml" \
    --exclude="- /rss.rdf" \
    --exclude="- /rssdate" \
    --exclude="- /sitemap.txt" \
    --exclude="- /suggest.js" \
    ./ /srv/www/bbs.shingetsu.info/
