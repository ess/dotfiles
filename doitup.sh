#!/bin/bash - 
#===============================================================================
#
#          FILE:  doitup.sh
# 
#         USAGE:  ./doitup.sh 
# 
#   DESCRIPTION:  Create symlinks to the dotfiles.  This will eventually be
#                 replaced with a Rakefile or some such, but for now, this will
#                 do.  Ya herd.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Dennis Walters (dwalters), dwalters@canvashosting.com
#       COMPANY: Canvas Hosting
#       CREATED: 09/24/2010 01:43:12 EDT
#      REVISION:  ---
#===============================================================================

die () {
  echo "$1" >&2 && exit 255
}

burninate_existing_dotfile() {
  existing="${1}"

  [ -L "${existing}" ] && 
    echo "Removing existing symlink '${existing}'" && 
    rm -f "${existing}"

  if [ -e "${existing}" ]
  then
    mv "${existing}" "${existing}.dotfiles.orig" ||
      die "Could not back up '${existing}'"
  fi
}

for i in thegoods/*
do
  basename="$(basename "$i")"
  origin="$(pwd)/thegoods/${basename}"
  destination="${HOME}/.${basename}"
  burninate_existing_dotfile "${destination}"
  ln -s "${origin}" "${destination}"
done
