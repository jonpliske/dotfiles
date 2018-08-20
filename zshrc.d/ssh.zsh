ssh-rekey () {
	for h in $@
	do
		ssh-keygen -R $(dig +short $h)
		ssh-keygen -R $h
		ssh-keyscan $h
		ssh $h whoami
	done
}
