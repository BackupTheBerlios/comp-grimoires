LINUX_VER=$(  installed_version  $(  get_provider  linux  )  )

sed -i "/^VERSION=/cVERSION=$LINUX_VER" Makefile.inc

make                &&
prepare_install     &&
make    install
