(

  if echo $OPTS | grep -- "--with-sdl" &> /dev/null; then 
    OPTS=$( echo "$OPTS" | sed "s:--with-sdl::" )
    CLIENTS="sdl,sdl32"
  else
    CLIENTS=""
  fi

  if echo $OPTS | grep -- "--with-svgalib" &> /dev/null; then 
    OPTS=$( echo "$OPTS" | sed "s:--with-svgalib::" )
    CLIENTS="${CLIENTS},svga"
  fi

  if echo $OPTS | grep -- "--with-x" &> /dev/null; then 
    OPTS=$( echo "$OPTS" | sed "s:--with-x::" )
    CLIENTS="${CLIENTS},x11"
  fi

  if [ "$OUT_GLX" == "y" ]; then
    CLIENTS="${CLIENTS},glx"
  fi
  if [ "$OUT_FBDEV" == "y" ]; then
    CLIENTS="${CLIENTS},fbdev"
  fi

  if [ -n "$CLIENTS" ]; then
    OPTS="$OPTS --with-clients=$CLIENTS"
  else
    OPTS="$OPTS --without-clients"
  fi

  if ! [ "$BUILD_SERVERS" == "y" ]; then
    OPTS="$OPTS --without-servers"
  fi 

  if ! [ "$BUILD_TOOLS" == "y" ]; then
    OPTS="$OPTS --without-tools"
  fi
  
  ./configure  --build=$BUILD                            \
               --prefix=/usr                             \
               --bindir=/usr/games                       \
               --with-sharepath=/usr/share/games/quake   \
               $OPTS                                     &&
  make                                                   &&
  prepare_install                                        &&
  make install

) > $C_FIFO 2>&1
