#
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
#
#eval "$(ssh-agent -s)";
#ssh-add ~/.ssh/sitemanager;
#ssh -T git@github.com;

ssh -T git@github.com

yum install -y git
git init

 git add README.md
git commit -m "first commit"
 git config --global user.name "james.han6"
 git config --global user.email 1366054376@qq.com
git commit --amend --reset-author


