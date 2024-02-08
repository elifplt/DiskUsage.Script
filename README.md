disk_usage.sh
The disk_usage.sh script takes two possible flags and then a list of directories:

disk_usage.sh
usage: disk_usage.sh [-a -n N] directory...
The -a flag means that the script should list both files and directories, and the -n flag indicates that only the top N entries should be printed (if N is not specified, then it should default to 10).
# Run on /etc
$ ./disk_usage.sh /etc
15M     /etc/
6.5M    /etc/udev
2.0M    /etc/ssl
1.9M    /etc/ssl/certs
1.8M    /etc/ca-certificates/extracted
1.8M    /etc/ca-certificates
1.1M    /etc/pacman.d/gnupg
1.1M    /etc/pacman.d
780K    /etc/ca-certificates/extracted/cadir
340K    /etc/ssh

# Run on /etc (limit output to top 5)
$ ./disk_usage.sh -n 5 /etc
15M     /etc
6.5M    /etc/udev
2.0M    /etc/ssl
1.9M    /etc/ssl/certs
1.8M    /etc/ca-certificates/extracted

# Run on /etc (include files)
$ ./disk_usage.sh -a /etc
15M     /etc
6.5M    /etc/udev/hwdb.bin
6.5M    /etc/udev
2.0M    /etc/ssl
1.9M    /etc/ssl/certs
1.8M    /etc/ca-certificates/extracted
1.8M    /etc/ca-certificates
1.1M    /etc/pacman.d/gnupg
1.1M    /etc/pacman.d
780K    /etc/ca-certificates/extracted/cadir

# Run on /etc (include files, limit output to top 5)
$ ./disk_usage.sh -a -n 5 /etc
15M     /etc
6.5M    /etc/udev/hwdb.bin
6.5M    /etc/udev
2.0M    /etc/ssl
1.9M    /etc/ssl/certs
