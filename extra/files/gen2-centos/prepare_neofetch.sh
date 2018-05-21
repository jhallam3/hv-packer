#!/bin/bash
# prepare (comment/uncomment lines according to our needs)
config="/etc/neofetch/config.conf"

if [ -e $config ]; then
  # comment
  sed -i -e 's/^[[:blank:]]*info "Packages" packages/#info "Packages" packages/g' $config
  sed -i -e 's/^[[:blank:]]*info "Resolution" resolution/#info "Resolution" resolution/g' $config
  sed -i -e 's/^[[:blank:]]*info "DE" de/#info "DE" de/g' $config
  sed -i -e 's/^[[:blank:]]*info "WM" wm/#info "WM" wm/g' $config
  sed -i -e 's/^[[:blank:]]*info "WM Theme" wm_theme/#info "WM Theme" wm_theme/g' $config
  sed -i -e 's/^[[:blank:]]*info "Theme" theme/#info "Theme" theme/g' $config
  sed -i -e 's/^[[:blank:]]*info "Icons" icons/#info "Icons" icons/g' $config
  sed -i -e 's/^[[:blank:]]*info "Terminal" term/#info "Terminal" term/g' $config
  sed -i -e 's/^[[:blank:]]*info "Terminal Font" term_font/#info "Terminal Font" term_font/g' $config
  # uncomment
  sed -i -e 's/^[[:blank:]]*# info "Disk" disk/info "Disk" disk/g' $config
  sed -i -e 's/^[[:blank:]]*# info "Local IP" local_ip/info "Local IP" local_ip/g' $config
else
 echo "File doesn't exist"
fi
