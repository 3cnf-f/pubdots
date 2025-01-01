

alias f_slr="ssh root@replaceWipadress #Linode vps
alias f_slp="ssh podamanis@replaceWipadress" #Linode vps

f_sbx_command() { ssh -i .ssh/id_ed25519 -p23  uxxxx@xxxx.your-storagebox.de $@ ;}
f_send_hz_sbx() { scp -i .ssh/id_ed25519 -P 23 -r  "$1" uxxxx@uxxxx.your-storagebox.de:/home/ ;}
f_get_hz_sbx() { scp -i .ssh/id_ed25519 -P 23 -r uxxxx@uxxx.your-storagebox.de:/home/$1 . ;}

