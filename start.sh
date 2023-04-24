if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MAULLIKPATEL/mvp.git /mvp
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mvp
fi
cd /mvp
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot
