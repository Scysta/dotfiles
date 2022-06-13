source /usr/share/defaults/etc/profile
alias eoit="sudo eopkg install"
alias eorm="sudo eopkg remove"
alias eoupr="sudo eopkg update-repo"
alias eoup="sudo eopkg upgrade"
alias eosr="eopkg search"
alias ls="ls -A -B --color=auto"

bwp() {
	bw get password "$1" | clipit
}

~/Documents/bashStuffTest/welcome-wo-exec.sh
