INSTDIR="/usr/share/wings/"

make               &&
prepare_install    &&

mkdir -p $INSTDIR
cp -av AUTHORS vsn.mk license.terms $INSTDIR
cp -av e3d/          $INSTDIR 
cp -av ebin/         $INSTDIR
cp -av icons/        $INSTDIR
cp -av plugins/      $INSTDIR
#cp -av plugins_src/  $INSTDIR
#cp -av src/          $INSTDIR

cp -av $SCRIPT_DIR/wings3d.sh /usr/bin/
