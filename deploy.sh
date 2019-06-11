cd ~/Github/MyWebsite
rm -r public
git pull
hugo
git add *
git add -f public/*
git commit
git push

echo SSH into CSAIL

ssh ajshah@login.csail.mit.edu

cd Github/Website
git pull
cd ~
cp -r Github/Website/public/* public_html/*


