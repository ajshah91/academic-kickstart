cd ~/Github/MyWebsite
rm -r public
git pull
hugo
git add *
git add -f public/*
git commit
git push

echo SSH into CSAIL

ssh ajshah@login.csail.mit.edu 'bash update_website.sh'

