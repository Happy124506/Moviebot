if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DX-Bots/SamanthaMoviesRobot.git /SamanthaMoviesRobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SamanthaMoviesRobot
fi
cd /SamanthaMoviesRobot
pip3 install -U -r requirements.txt
echo "Starting SamanthaMoviesRobot...."
python3 bot.py
