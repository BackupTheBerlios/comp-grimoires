make_install() {
  cp -a cpudynd /usr/sbin/
}

init_install() {
  cp $SCRIPT_DIR/cpudyn.sh /etc/init.d/
  if $CPUDYN_BOOT; then
    ln  -sf  ../init.d/cpudyn.sh /etc/rc0.d/K00cpudyn
    ln  -sf  ../init.d/cpudyn.sh /etc/rc6.d/K00cpudyn

    ln  -sf  ../init.d/cpudyn.sh /etc/rc1.d/S99cpudyn
    ln  -sf  ../init.d/cpudyn.sh /etc/rc2.d/S99cpudyn
    ln  -sf  ../init.d/cpudyn.sh /etc/rc3.d/S99cpudyn
    ln  -sf  ../init.d/cpudyn.sh /etc/rc4.d/S99cpudyn
    ln  -sf  ../init.d/cpudyn.sh /etc/rc5.d/S99cpudyn
  fi
}

(

  make  all           &&
  prepare_install     &&
  make_install        &&
  init_install

) > $C_FIFO 2>&1

