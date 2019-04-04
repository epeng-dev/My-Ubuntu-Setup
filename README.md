# Quber-Ubuntu-Setup
큐버에 큐버를 위한 하지만 사실 나만의 Ubuntu Setup

## How to Use
./setup.sh # 기본값 세팅

./setup.sh minsub # minsub 옵션을 붙이면 vimrc, bashrc까지 제 환경 처럼 세팅합니다.

./setup.sh minsub window_ubuntu # WSL 세팅입니다. 위험하니 쓰지 마세요

## bashrc_ubuntu_normal 안에 있는 함수 설명(기본값 세팅)
quber_git_clone 받을_프로젝트.git - 큐버 git 서버에 있는 git을 다운 받는 함수(함수에 주석이 걸려 있음, git ID에 맞게 함수를 고치고 주석을 풀어주어야 함)

adb - adb wrapping하는 함수, adb shell sync를 자꾸 adb sync를 쳐서 보드 날려먹는 현상이 일어나 저런 함수를 만들게 됨(함수에 주석이 걸려 있음, adb 위치에 맞게 함수를 고치고 주석을 풀어주어야 함)

adbcon xxx - ip주소 뒤에 3자리(192.168.10.xxx)를 인자로 받는 adb disconnect, adb connect, adb remount 세개 연속으로 하는 함수

envsetup - source build/envsetup.sh AOSP 폴더에 있는 환경변수 설정 쉘 스크립트 실행하는 함수

## bashrc_ubuntu 함수 추가 설명
powerline_off - powerline 기능 off

powerline_on - powerline 기능 on