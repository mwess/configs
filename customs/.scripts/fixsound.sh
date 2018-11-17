# Script to fix sound. Related to issues in pulseaudio.
rm -rf /tmp/pulse* ~/.pulse* ~/.config/pulse
pulseaudio -k
pulseaudio --start
# Now reboot to make the changes happen
reboot
