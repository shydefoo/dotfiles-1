BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${BASEDIR}/shell_utils" || { echo "Failed to source shell_utils" >&2;exit 1; }

## install brave browser
p_header "Install brave browser"

## install telegram
p_header "Install telegram"
sudo snap install telegram-desktop

## install spotify
p_header "Install spotify"
snap install spotify

## Install brave browser
sudo apt install -y brave-browser

## Compile youcompleteme


## Install timeshift
p_header "Install timeshift"
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift


