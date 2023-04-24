if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MAULLIKPATEL/ShortenerBot-1/tree/try1.git /ShortenerBot-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ShortenerBot-1
fi
cd /ShortenerBot-1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
