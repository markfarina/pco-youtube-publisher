#!/bin/bash
#Change all the /home/user to /home/your_home_dir

# Add to crontab run every 15 min
# */15 * * * * /home/mark/pco-youtube-publisher/update_publishing.sh > /home/mark/pco-youtube-publisher/log.txt


timestamp() {
  date +"%T"
}
cd /home/mark/pco-youtube-publisher
source /home/mark/pco-youtube-publisher/venv/bin/activate
python -V >> /home/mark/pco-youtube-publisher/log.txt
echo "Running script"
python3.8 /home/mark/pco-youtube-publisher/pco-youtube-publisher.py >> log.txt
echo "All done" $(timestamp)
