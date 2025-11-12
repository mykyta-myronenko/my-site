#! /bin/sh

OBSIDIAN_VAULT=/home/mykyta/Documents/Writing Machine/Blog
HUGO_SITE=/home/mykyta/Public/Blog
#HUGO_SITE=/home/sagar/experiments/obsidian-hugo-export/tmpsite

rm -rf logs/
python3 export-files.py $OBSIDIAN_VAULT $HUGO_SITE/content/posts
python3 process-wikilinks.py $HUGO_SITE/content/posts
python3 add-backlinks.py $HUGO_SITE/content/posts
python3 copy-assets.py $OBSIDIAN_VAULT $HUGO_SITE/static/assets/images/
