cpFunc () {
	cp -i -r -v ~/.i3/ ~/github/dotfiles/
	cp -i -r -v ~/.i3status.conf ~/github/dotfiles/
	cp -i -r -v ~/.bashrc ~/github/dotfiles
	cp -i -r -v ~/programming/bashscripts/cpdotfiles.sh ~/github/dotfiles
	cp -i -r -v ~/.Xresources ~/github/dotfiles/
	cp -i -r -v ~/.config/kak/kakrc ~/github/dotfiles
	cp -i -r -v ~/.config/deadbeef/config ~/github/dotfiles
} # Recursion lol



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
   	echo Is $commitMessage your commit message?
	git commit -m "$commitMessage" ~/github/dotfiles &&
	sleep 2
	git push origin master;
}


while true; do
    read -p "Are you sure you want to update your dotfiles copy? " yn
    case $yn in
        [Yy]* ) cpFunc; commitFuncQuestion; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

