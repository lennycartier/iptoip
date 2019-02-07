#! /bin/sh

# Names & locations.
Pkg="iptoip"
Isl="/usr/local"
Ism=$Isl/man
Iss=$Isl/share
Isd=$Iss/doc/$Pkg
Isp=$Iss/$Pkg

echo "Installing $Pkg"
# Install Code.
cp $Pkg $Isl/sbin
cp $Pkg.init /etc/init.d/$Pkg
# Install Documentation.
cp $Pkg.8 $Ism/man8
cp $Pkg.xml.5 $Ism/man5
mkdir -p $Isd
cp AUTHORS CHANGELOG COPYING LICENSE README README.md TODO $Isd
# Misc Files
mkdir -p $Isp
cp $Pkg.xml install.sh ipvsrate.sh $Isp
echo "Install Complete."
echo "Setting up $Pkg service."
# Setup Runtime.
echo -n "Trying chkconfig: "
if which chkconfig; then
	echo -n "Found: "
	chkconfig -a $Pkg
	echo "Success"
elif which update-rc.d; then
	echo "Failed"
	echo -n "Trying update-rc.d: "
	update-rc.d $Pkg defaults
	echo "Success"
else
	echo "Unable to setup $Pkg service."
	echo "Pleae submit issue at:"
	echo "https://github.com/lennycartier/iptoip/issues"
fi
