dotfilesPath=~/github/dotfiles


cpFunc () {
	cp -r -v ~/.i3/ $dotfilesPath
	cp -r -v ~/.i3status.conf $dotfilesPath
	cp -r -v ~/.bashrc $dotfilesPath
	cp -r -v ~/programming/bashscripts/cpdotfiles.sh $dotfilesPath
	cp -r -v ~/.Xresources $dotfilesPath
	cp -r -v ~/.config/kak/kakrc $dotfilesPath
	cp -r -v ~/.config/deadbeef/config $dotfilesPath
	cp -r -v ~/.xinitrc $dotfilesPath
}
# Recursion lol



commitFuncQuestion () {
    while true; do
    read -p "Would you also like to commit your dotfiles? " yn
    case $yn in
        [Yy]* ) commitFuncCommand;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
}

commitFuncCommand () {
	cd ~/github/dotfiles
	git add .
   	read -p "Please enter your commit message: " commitMessage
	git commit -m "$commitMessage" $dotfilesPath &&
	sleep 2
	git push origin master
	exit;
}


while true; do
    read -p "Are you sure you want to update your dotfiles copy? " yn
    case $yn in
        [Yy]* ) cpFunc; commitFuncQuestion; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

