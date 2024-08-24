
f_venv_var="/home/minzicola/pyenvs/minsicola-dicom"

alias f_a="cd $f_venv_var && . ./.venv/bin/activate"

alias f_p="python3 main.py" 

alias f_slr="ssh root@replaceWipadress #Linode vps
alias f_slp="ssh podamanis@replaceWipadress" #Linode vps
alias f_tlp="ssh -L 8443:localhost:8443 podamanis@replaceWipadress" #Linode vps
# scp -i .ssh/id_ed25519 /home/minzicola/Downloads/fall1-test.zip  root@replaceWipadress:/home/podamanis/code-server
# f_scp_cs() {echo ($1) }
