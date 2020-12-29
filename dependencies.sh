echo "Your distro? ( 1)Arch, 2)Debian): "
read distro
if [ $distro -eq 1 ]
then 
    sudo pacman -S python3 python-pip html2text
    pip install bs4
    chmod +x ./sozdik.sh
elif [ $distro -eq 2 ]
then 
    sudo apt install python3 python3-pip html2text
    pip3 install bs4
    chmod +x ./sozdik.sh 
else 
    echo "You typed in: $distro"
    echo "Wrong input, please type one of the two: (1/2)";
fi
