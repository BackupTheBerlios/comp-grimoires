(
    prepare_install               &&
    cp -vp upx    /usr/sbin/      &&
    cp -vp upx.1  /usr/man/man1/  &&
    rm upx upx.1                  &&
    mkdir -p      /usr/doc/upx/   &&
    cp -v  *      /usr/doc/upx/   &&
    cp -v  $SCRIPT_DIR/upx_spell /usr/sbin/

) > $C_FIFO 2>&1
