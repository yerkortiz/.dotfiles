#!bin/bash

os='unkown'

checkOS(){
    unameOut=$(uname)
    case "${unameOut}" in
        Linux*)     os="Linux";;
        Darwin*)    os="MacOs";;
        *)          
            os="Unknown"
            echo "install: error unkown operating system"
        ;;
    esac
}

checkNeoVim(){
    command -v nvim >/dev/null 2>&1 ||
        echo "nvim is not installed"
        # install nvim
}

checkGit(){
    command -v git >/dev/null 2>&1 ||
        echo >&2 "git is not installed";
        # install git
}

checkBrew(){
    command -v brew >/dev/null 2>&1||
        echo >&2 "homebrew is not installed"
}

checkStow(){
    command -v stow >/dev/null 2&1||
        echo>&2 "stow is not installed"
}
