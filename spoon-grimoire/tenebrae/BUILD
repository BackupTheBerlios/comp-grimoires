  cd tenebrae_0/linux
  cp Makefile.i386linux Makefile

  sed -i "/^MASTER_DIR/cMASTER_DIR=/usr/share/games/quake"	Makefile
  sed -i "/^CC/cCC=gcc"						Makefile
  sed -i "s:-mpentiumpro -O6:$CFLAGS:"				Makefile

  make build_release	&&
  prepare_install	&&
  cp    -a releasei386.glibc/bin/tenebrae.run /usr/games/tenebrae.run  &&
  mkdir -p /usr/share/games/quake/tenebrae
  cp    -ar $BUILD_DIR/tenebrae/* /usr/share/games/quake/tenebrae
