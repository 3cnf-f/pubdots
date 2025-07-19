# GH
see ~/.ssh/config for config file


-- setup the auth for this folder (also needs gh auth --token < xxx?)
git config core.sshCommand 'ssh -i ~/.ssh/id_rsa'

-- set the remote origin
git remote set-url origin git@github.com:3cnf-f/das_base.git

 -- pull latest changes:
git pull 


find firefox usage

```
ps -aux |grep firefox |grep -v grep|awk '{cpu+=$3; memp+=$4; memb+=$6} END {print "CPU: " cpu "%"; print "MEM: " memp "%"; print "MEM: " memb/1024 "MB"}'
```
