(

  sed -i "s:/local::" config.in
  perl Makefile.PL
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
