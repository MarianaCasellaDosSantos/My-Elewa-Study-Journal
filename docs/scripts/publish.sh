# add, commit recent changes
git add .
git commit -m 'clearing /docs'
git checkout master
# delete contents in /docs to avoid conflicts
rm -rf ./docs
# pull other changes
git pull origin master
# build new gitbook
gitbook build
# copy it out of the way for branch change
# f to overwirte last publication
cp -rf ./_book/. ./docs/ 
# delete the /_book foler
rm -rf _book
# commit recent build
git add .
git commit -m 'publishing'
# publish changes
git push origin master

# to execute this file run this command in terminal:
# chmod a+x ./publish.sh