#!/sbin/sh
BOOT_DEV="ANDROID_BOOT_PARTITION"

if [ ! -e "$BOOT_DEV" ]; then
    echo "BOOT_DEV \"$BOOT_DEV\" does not exist!"
    return 1
fi

/tmp/scripts/kernel_inject --inject="$BOOT_DEV" --kernel="/tmp/scripts/kernel"
return $?
