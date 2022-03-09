# shorten a path in $1 to max of $2 characters, prepending a "..."
# call with $(__shortpath $arg1 50) or something similar
function __shortpath {
	echo "len is ${#1}"
	if [[ ${#1} -gt $2 ]]; then
		len=$2+3
		echo "..."${1: -$len}
	else
		echo $1
	fi
}

# function for getting current repo state
git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\e[0;32m\d\e[m|\e[1;34m\w\e[m \e[0;33m\$(git_branch)\e[m\n$ "

