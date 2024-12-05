#!/bin/bash

# 이 스크립트는 zsh, Oh My Zsh, SpaceX 테마를 설치합니다.

# 1. zsh 설치
echo "Installing zsh..."
sudo apt update -y
sudo apt install zsh -y

# 2. Oh My Zsh 설치
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 3. SpaceX 테마 다운로드 및 적용
echo "Installing SpaceX theme..."
# SpaceX 테마의 GitHub URL
SPACEX_THEME_URL="https://github.com/ohmyzsh/ohmyzsh/wiki/Themes"
SPACE_X_THEME_DIR="$HOME/.oh-my-zsh/themes"

# SpaceX 테마를 oh-my-zsh 테마 디렉토리에 다운로드
curl -L https://raw.githubusercontent.com/denysdovhan/spaceship-prompt/master/spaceship.zsh-theme -o $SPACE_X_THEME_DIR/spaceship.zsh-theme

# .zshrc 파일에 SpaceX 테마 적용
echo "ZSH_THEME=\"spaceship\"" >> ~/.zshrc

# 4. zsh를 기본 쉘로 설정
echo "Changing default shell to zsh..."
chsh -s $(which zsh)

# 5. zsh 셸 재시작
echo "Installation complete! Restarting zsh..."
exec zsh
