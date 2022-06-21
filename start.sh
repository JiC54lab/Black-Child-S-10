if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JiC54lab/Black-Child-S-10.git /Black-Child-S-10
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Black-Child-S-10
fi
cd /Black-Child-S-10
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
