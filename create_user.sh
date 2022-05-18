<<mm
This script will create and mange users in redhat and centos Linux servers
Run only as root user or users with sudo priviledge
mm
echo Please enter your username
read newUser
sudo adduser $newUser
echo please enter your password
read -s password
echo "$password" | sudo passwd "$newUser" --stdin
echo congratulation you username is $newUser
#verify if the user account was created
id $newUser
grep $newUser /etc/passwd
tail -3 /etc/passwd
