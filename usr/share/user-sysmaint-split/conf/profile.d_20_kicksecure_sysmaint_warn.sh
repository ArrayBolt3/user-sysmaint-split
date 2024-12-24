#!/bin/sh

## Copyright (C) 2024 - 2024 ENCRYPTED SUPPORT LP <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## 'source' is a bashism.
. /usr/libexec/helper-scripts/get_colors.sh

if [ "$(id -un)" = 'sysmaint' ]; then
   msg="[${green}INFO${nocolor}] You are using the sysmaint account. This account has sudoers capabilities. Proceed with caution. See also: https://www.kicksecure.com/wiki/Sysmaint"
   msg_nocolor='[INFO] You are using the sysmaint account. This account has sudoers capabilities. Proceed with caution. See also: https://www.kicksecure.com/wiki/Sysmaint'
   ## 'echo -e' not supported by sh.
   if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
      echo -e "${msg}"
   else
      echo "${msg_nocolor}"
   fi
fi
