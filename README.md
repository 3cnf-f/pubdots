# GH
see ~/.ssh/config for config file


-- setup the auth for this folder (also needs gh auth --token < xxx?)
git config core.sshCommand 'ssh -i ~/.ssh/id_rsa'

-- set the remote origin
git remote set-url origin git@github.com:3cnf-f/das_base.git

 -- pull latest changes:
git pull 
