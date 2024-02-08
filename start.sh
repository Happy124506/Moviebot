if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DX-Bots/Moviebot.git /Moviebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Moviebot
fi
cd /Moviebot
pip3 install -U -r requirements.txt
echo "Starting SamanthaMoviesRobot...."
python3 bot.py
