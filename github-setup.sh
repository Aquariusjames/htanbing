#! /bin/bash
#generate ssh key
ssh-keygen -t rsa -b 4096 -C "1366054376@qq.com"

#setup env
cp ~/.ssh/id_rsa.pub  ~/.ssh/sitemanager

eval "$(ssh-agent -s)";
ssh-add ~/.ssh/sitemanager;
ssh -T git@github.com;

#
#ssh-add -L
#ssh-add -l
#ssh -T git@github.com
#ssh -vT git@github.com

#ssh -T git@ssh.github.com
#ssh -vT git@ssh.github.com

#
#install software git 
yum install -y git
yum install -y vim


#init git repo
git init

#setup configration 
git config --global user.name "james.han6"
git config --global user.email 1366054376@qq.com

git remote add origin git@github.com:Aquariusjames/openstack.git

#rebase
git commit --amend --reset-author

#add file and commit
git add README.md
git commit -m "first commit"

#colne from github repo
git clone git@github.com:Aquariusjames/openstack.git

#pull from github repo
git pull origin master

#push to github repo
git push -u origin master

#setup git server myRep_bare
git clone --bare  git@192.168.80.119:/home/git/centoshanbing /home/git/myRep_bare

git clone git@192.168.80.119:/home/git/myRep_bare ipa_server
git remote add origin git@192.168.80.119:/home/git/myRep_bare

#force fetch all from remote
git fetch --all
git reset --hard origin/master

#pro git book
https://git-scm.com/book/zh/v1
http://blog.csdn.net/u014743697/article/details/52846360
http://www.jianshu.com/p/72e754ca66a1
http://www.jianshu.com/p/c967dd654594

