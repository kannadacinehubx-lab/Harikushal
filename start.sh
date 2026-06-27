if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kannadacinehubx-lab/Harikushal /Jisshu-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Jisshu-filter-bot
fi
cd /Jisshu-filter-bot
pip3 install -U -r requirements.txt
echo "Starting filter bot...."
python3 bot.py
