ssh-rekey () {
	for h in $@
	do
		ssh-keygen -R $(dig +short $h)
		ssh-keygen -R $h
		ssh-keyscan $h
		ssh $h whoami
	done
}

# What follows is for Qubes OS ssh configuration

#####################
# SPLIT SSH CONFIG
#   for ssh-client VM
#
# Append this to ~/.bashrc for ssh-vault functionality
# Set next line to the ssh key vault you want to use
#SSH_VAULT_VM="ssh-vault"

if [ "$SSH_VAULT_VM" != "" ]; then
	export SSH_AUTH_SOCK=/home/user/.SSH_AGENT_$SSH_VAULT_VM
fi

