mconf() {
  cat  <<  EOF
   path[thinkpad]=/lib/modules/`uname -r`/thinkpad
   alias char-major-10-170 thinkpad

   alias /devices/thinkpad thinkpad
   alias /devices/thinkpad/thinkpad thinkpad
   alias /devices/thinkpad/smapi smapi
   alias /devices/thinkpad/superio superio
   alias /devices/thinkpad/rtcmosram rtcmosram
   alias /devices/thinkpad/thinkpadpm thinkpadpm 

EOF
}

install_modules_conf() {
  if    [ -f     /etc/modules.d/thinkpad  ]
  then  mv       /etc/modules.d/thinkpad  \
                 /etc/modules.d.thinkpad.old
  else  mkdir -p /etc/modules.d
  fi
  mconf  >  /etc/modules.d/thinkpad
  touch     /etc/modules.d/thinkpad
}

mknods() {
  mkdir --mode=755 /dev/thinkpad
  mknod --mode=664 /dev/thinkpad/thinkpad c 10 170
}

groupadd  thinkpad             2>/dev/null
  
mkdir 2.5
mv drivers include 2.5
ln -s 2.4/drivers drivers      &&
ln -s 2.4/include include      &&

make all                       &&
prepare_install                &&
make    install

mknods
install_modules_conf
