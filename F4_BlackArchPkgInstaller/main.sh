if [[ $(id -u) != 0 ]]; then
	echo "Run as root :)"
	exit
fi;
echo "###### F4 BlackArch Pkg Installer ######"
curl -L https://blackarch.org/strap.sh | bash
arr=($(cat pkgs.txt))
pacman -Sy --noconfirm --needed ${arr[@]}
