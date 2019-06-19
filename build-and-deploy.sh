rm -r public
hugo

echo "Clearing old website"
ssh ajshah@login.csail.mit.edu 'rm -r public_html/*'

echo "Copying new website"
scp -r ~/Github/MyWebsite/public/* ajshah@login.csail.mit.edu:~/public_html/
