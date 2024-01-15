#!/system/bin/sh

setdevicename() {
    resetprop "ro.product.name" "$1";
    resetprop "ro.build.product" "$1";
    resetprop "ro.vendor.product.device" "$1";
    resetprop "ro.system.product.device" "$1";
    resetprop "ro.system_ext.product.device" "$1";
    resetprop "ro.odm.product.device" "$1";
    resetprop "ro.product.device" "$1";
    resetprop "ro.product.product.device" "$1";
    resetprop "ro.product.bootimage.device" "$1";
    resetprop "ro.product.odm.device" "$1";
    resetprop "ro.product.system.device" "$1";
    resetprop "ro.product.system_ext.device" "$1";
    resetprop "ro.product.vendor.device" "$1";
    resetprop "ro.product.board" "$1";
}

setdevicemodel() {
    resetprop "ro.product.model" "$1";
    resetprop "ro.product.vendor.model" "$1";
    resetprop "ro.product.odm.model" "$1";
    resetprop "ro.product.system.model" "$1";
    resetprop "ro.product.system_ext.model" "$1";
    resetprop "ro.product.product.model" "$1";
}

load_tapas() {
    setdevicename "tapas";
    setdevicemodel "23021RAAEG";
}

load_topaz() {
    setdevicename "topaz";
    setdevicemodel "23021RAA2Y";
}

variant=$(resetprop ro.boot.hwname);
case $variant in
    "topaz")
        load_topaz;
        ;;
    "tapas")
        load_tapas;
        ;;
    *)
        load_topaz;
        ;;
esac

exit 0;
#
