make_install() {
  cp -a cpudynd /usr/sbin/
}

init_install() {
  if ! [ -f /etc/init.d/cpudyn.sh ]; then
    cp $SCRIPT_DIR/cpudyn.sh /etc/init.d/
  fi

  ln  -sf  ../init.d/cpudyn.sh /etc/rcS.d/S99cpudyn
  ln  -sf  ../init.d/cpudyn.sh /etc/rc0.d/K00cpudyn
  ln  -sf  ../init.d/cpudyn.sh /etc/rc6.d/K00cpudyn
}

(

  make  all           &&
  prepare_install     &&
  make_install        &&
  init_install

) > $C_FIFO 2>&1

