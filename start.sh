if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Satan-tg/Nancy-V3.5.git /Nancy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Nancy 
fi
cd /Nancy
pip3 install -U -r requirements.txt
echo "Starting Nancy-V3.5...."
python3 bot.py
