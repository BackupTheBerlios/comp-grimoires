(
  mv plugins/cfg* cfg/
  mv plugins/*.cfg cfg/
  rm -rf plugins/src

  mkdir -p /usr/games/epsxe/cfg/
  for FILE in cfg/*.cfg; do
    if ! [ -f /usr/games/epsxe/$FILE ]; then
      chmod a+rw $FILE
      cp    -av  $FILE /usr/games/epsxe/$FILE
    fi
    rm $FILE
  done

  prepare_install                            &&
  mkdir -p      /usr/games/epsxe             &&
  cp    -av  *  /usr/games/epsxe             &&
  touch         /usr/games/epsxe/.epsxerc    &&
  chmod  a+w    /usr/games/epsxe/.epsxerc    &&
  chmod  a+rw   /usr/games/epsxe/memcards    &&
  chmod  a+rw   /usr/games/epsxe/sstates     &&
  cp  -v $SCRIPT_DIR/epsxe.run /usr/games/   &&
  chmod  a+rx   /usr/games/epsxe.run

) > $C_FIFO 2>&1
