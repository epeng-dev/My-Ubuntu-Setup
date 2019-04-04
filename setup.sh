sudo apt update
sudo apt upgrade -y
sudo apt install -y vim adb
sudo apt install -y git make zlib1g-dev:i386 cpp gcc-multilib \
g++ g++-4.8-multilib cpp-4.8 g++-4.8 gcc-4.8 binutils gnupg flex \
lib32ncurses5-dev bison gperf build-essential zip curl libc6-dev \
x11proto-core-dev libx11-dev lib32readline6-dev zlib1g-dev \
lib32z-dev libgl1-mesa-dev g++-multilib mingw32 tofrodos gettext \
libxml2-utils xsltproc u-boot-tools
sudo apt install -y uuiddev liblzo2-dev bc
sudo apt install -y openjdk-8-jdk
sudo rm /bin/sh;sudo ln -s /bin/bash /bin/sh

if [ $1 == 'minsub' ]
then
    git clone https://github.com/mskang116/bash-powerline-shell ~/bash-powerline-shell
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp vimrc ~/.vimrc

    if [$2 == 'window_ubuntu']
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
echo 'Android Platform-tools'
echo '애용하는 텍스트 에디터(sublime text, vs code)'
echo 'Install Finished!!!!!!!!!!!!!!!!!!!!!!!!!!!!'


