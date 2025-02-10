set fish_greeting ""

alias rm "echo use trash or /bin/rm"

alias t-p trash-put
alias t-l trash-list
alias t-r trash-restore
alias t-e trash-empty

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fastfetch -c /home/zer0/.config/fastfetch/config.jsonc
echo
