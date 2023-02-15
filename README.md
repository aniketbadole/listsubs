# listsubs
Shows a list of all subdomains of a given url using subfinder and saves the response on your desktop

## Installation
- Clone this project using `git clone https://github.com/aniketbadole/listsubs.git`
- Open the project directory and run `chmod +x listsubs.sh` and then `./listsubs.sh`
- Add the shell command in your bashrc file to access the program from anywhere in the terminal
`alias listsubs='sh /usr/local/bin/listsubs.sh'`

## Prerequisites
This program needs uses *subfinder* to find subdomains. If you do not have subfinder installed, the program will install it automatically. In order to install subfinder, you will need Golang installed on your computer. Follow the instructions at `https://go.dev/doc/install` to install Go on your computer.
