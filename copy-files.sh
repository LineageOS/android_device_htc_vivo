#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=vivo
MANUFACTURER=htc
STAGESYS=~/cm-$DEVICE/system

if [ "$1" = "pull" ]; then
  if [ -s "$STAGESYS" ]; then
  rm -R ~/cm-$DEVICE
  fi
 mkdir ~/cm-$DEVICE
 mkdir $STAGESYS
 mkdir $STAGESYS/bin
 mkdir $STAGESYS/lib
 mkdir $STAGESYS/etc
 adb pull /system/bin $STAGESYS/bin
 adb pull /system/lib $STAGESYS/lib
 adb pull /system/etc $STAGESYS/etc
fi

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

cp $STAGESYS/bin/akmd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/akmd
cp $STAGESYS/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/rild_ims ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/awb_camera ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/bma150_usr ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/htc_ebdlogd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/logcat2 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/lsc_camera ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/bin/snd3254 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/etc/AudioBTID.csv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libgemini.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libhtc_acoustic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libhtc_ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libril_ims.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libwebkitaccel.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libdsi_netctrl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libdll.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp $STAGESYS/lib/libqdp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary




(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwebkitaccel.so:obj/lib/libwebkitaccel.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:obj/lib/libril.so

# All the blobs necessary for vivo
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/qmuxd:/system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rild:/system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rild_ims:/system/bin/rild_ims \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/snd3254:/system/bin/snd3254 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:/system/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:/system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril_ims.so:/system/lib/libril_ims.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwebkitaccel.so:/system/lib/libwebkitaccel.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdll.so:/system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libidl.so:/system/lib/libidl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqdp.so:/system/lib/libqdp.so
EOF

./setup-makefiles.sh
