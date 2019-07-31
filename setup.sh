sudo apt update
sudo apt upgrade -y
sudo apt install -y vim adb
sudo apt install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 
sudo apt install -y lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip u-boot-tools 
sudo apt install -y openjdk-8-jdk
sudo rm /bin/sh
sudo ln -s /bin/bash /bin/sh

if [ $1 = 'minsub' ]
then
    git clone https://github.com/mskang116/bash-powerline-shell ~/bash-powerline-shell
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp vimrc ~/.vimrc

    if [$2 = 'window_ubuntu']
    then
        cp bashrc_window_ubuntu ~/.bashrc
        echo 'Visual Code와 Android Platform-tools를 설치해주신 후 bashrc의 code(), adb() 함수의 주석을 풀어주세요'
    else
        cp bashrc_ubuntu ~/.bashrc
        echo 'Android Platform-tools를 설치해주신 후 bashrc의 adb() 함수의 주석을 풀어주세요'
    fi
else
    cp bashrc_ubuntu_normal ~/.bashrc
fi

echo ''
echo ''
echo ''
echo ''
echo '다음으로 다운받을 것들'
echo 'Oracle java 6, 7(openjdk 8은 이미 다운되었습니다.)'
echo 'Android Studio'
echo '애용하는 텍스트 에디터(sublime text, vs code)'
echo 'Install Finished!!!!!!!!!!!!!!!!!!!!!!!!!!!!'


