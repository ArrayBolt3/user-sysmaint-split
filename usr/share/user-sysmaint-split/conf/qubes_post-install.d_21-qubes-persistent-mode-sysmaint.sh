#!/bin/bash --

## Copyright (C) 2025 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace
shopt -s inherit_errexit
shopt -s shift_verbose

qvm-features-request boot-mode.kernelopts.sysmaint='boot-role=sysmaint systemd.unit=sysmaint-boot.target'
qvm-features-request boot-mode.name.sysmaint='PERSISTENT Mode - SYSMAINT Session'
qvm-features-request boot-mode.default-user.sysmaint='sysmaint'
qvm-features-request boot-mode.kernelopts.unrestricted='remove-sysmaint-qubes'
qvm-features-request boot-mode.name.unrestricted='PERSISTENT Mode - UNRESTRICTED Session'
qvm-features-request boot-mode.active='sysmaint'
