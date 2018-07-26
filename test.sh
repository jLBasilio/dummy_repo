echo
echo 
echo

cd ${HOME}/Desktop

execute="git clone git@github.com:jLBasilio/dummy_repo.git"
$execute

cd ${HOME}/Desktop/dummy_repo

read -r -p "Enter your git user name and press [ENTER]: " credential
git config user.name "$credential"
read -r -p "Enter your git user email and press [ENTER]: " credential
git config user.email "$credential"

yes | cp ${HOME}/Desktop/test.sh ${HOME}/Desktop/dummy_repo

git add .
git commit -m "Sad"
git push origin master