alias reload="source ~/.zshrc"
alias l="ls -alH"
alias viewports="lsof -nP -i4TCP:$1 | grep LISTEN"
alias curltime="curl -w \"@$ZSH_CUSTOM/curl_format.txt\" -o /dev/null -s "
