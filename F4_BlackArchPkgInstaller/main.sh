if [[ $(id -u) != 0 ]]; then
	echo "Run as root :)"
	exit
fi;
echo "###### F4 BlackArch Pkg Installer ######"
arr=($(cat pkgs.txt))
curl -L https://blackarch.org/strap.sh | bash
pacman -Sy
pacman -S ${arr[@]}
