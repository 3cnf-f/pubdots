
f_venv_var="/home/minzicola/pyenvs/minsicola-dicom"

alias f_a="cd $f_venv_var && . ./.venv/bin/activate"

alias f_p="python3 main.py" 

alias f_slr="ssh root@replaceWipadress #Linode vps
alias f_slp="ssh podamanis@replaceWipadress" #Linode vps
alias f_tlp="ssh -L 8443:localhost:8443 podamanis@replaceWipadress" #Linode vps
# scp -i .ssh/id_ed25519 /home/minzicola/Downloads/fall1-test.zip  root@replaceWipadress:/home/podamanis/code-server
# f_scp_cs() {echo ($1) }
f_sbx_command() { ssh -i .ssh/id_ed25519 -p23  uxxxx@xxxx.your-storagebox.de $@ ;}
f_send_hz_sbx() { scp -i .ssh/id_ed25519 -P 23 -r  "$1" uxxxx@uxxxx.your-storagebox.de:/home/ ;}
f_get_hz_sbx() { scp -i .ssh/id_ed25519 -P 23 -r uxxxx@uxxx.your-storagebox.de:/home/$1 . ;}

