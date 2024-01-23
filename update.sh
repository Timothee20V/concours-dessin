scp -r -i "C:\Users\timot\Documents\ESEO\SSH_Key\vm-infra-reseau_key.pem" src timothee@51.11.212.16:/tmp
ssh -i "C:\Users\timot\Documents\ESEO\SSH_Key\vm-infra-reseau_key.pem" timothee@51.11.212.16 << EOF
  sudo rm -rf /srv/concours_dessin/*
  sudo mv /tmp/src/* /srv/concours_dessin
  ls -la /srv/concours_dessin
EOF