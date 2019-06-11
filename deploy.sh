cd ~/Github/MyWebsite
rm -r public
git pull
hugo
git add *
git add -f public/*
git commit
git push

