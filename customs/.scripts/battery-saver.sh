#!/bin/bash
#
##Power OFF nvidia card
#cd /home/jochem/acpi_call
#insmod acpi_call.ko
#echo '\_SB.PCI0.PEG0.PEGP._OFF' > /proc/acpi/call &
#
##set wwan0 down
#ifconfig wwan0 down &
#
#Enable Audio HD powersave
echo 1 > /sys/module/snd_hda_intel/parameters/power_save &

#Disable WOL
ethtool -s enp8s0 wol d &

#Enable multi core power savings
echo 1 > /sys/devices/system/cpu/sched_smt_power_savings &

#Enable laptop mode
echo 5 > /proc/sys/vm/laptop_mode &

#Set vm writeback to 10 secs (lose 10 secs on crash)
#echo 1500 > /proc/sys/vm/dirty_writeback_centisecs &

# Keep dirty writes in memory
echo 90 > /proc/sys/vm/dirty_ratio &
# Keep dirty writes out of cache
echo 1 > /proc/sys/vm/dirty_background_ratio &
# Writeback 60 secs
echo 6000 > /proc/sys/vm/dirty_writeback_centisecs &

# Swappiness
echo 9 > /proc/sys/vm/swappiness &

#maak bluetooth dood
rfkill block bluetooth
#/etc/init.d bluetooth stop

##kill nouveau
#rmmod nouveau

#set scheduler
echo noop > /sys/block/sdb/queue/scheduler & 

#set aspm
echo powersave > /sys/module/pcie_aspm/parameters/policy sleep 60 &

#set wireless power
iwconfig wlp9s0 power on
iwconfig wlp9s0 power timeout 500ms

#runtime PM
for i in $(ls /sys/bus/{pci,i2c}/devices/*/power/control);do echo auto > $i;done

#powersaving /dev/sda
hdparm -B 1 -S 12 /dev/sda

#set scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
#echo ondemand > /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
echo conservative | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
echo 1 > /sys/devices/system/cpu/cpufreq/conservative/ignore_nice_load 
echo -n 40 > /sys/devices/system/cpu/cpufreq/conservative/down_threshold
echo -n 90 > /sys/devices/system/cpu/cpufreq/conservative/up_threshold
#echo -n 10 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor

#set SATA link power managment
echo min_power > /sys/class/scsi_host/host0/link_power_management_policy

exit
