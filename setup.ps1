# Generate portrait from assets/image.png
python3 scripts/dotify.py "assets/image.png" -o assets/portrait --cols 90 --color --reveal --equalize --detail 0.5

# Generate skill radar
python3 scripts/radar.py --data assets/skills.json -o assets/radar

# Generate language radar
python3 scripts/radar.py --data assets/languages.json -o assets/radar-langs --values

# Generate stat cards & repo cards
python3 scripts/cards.py --user Dnyaneshwar202006 --projects assets/projects.json --out assets
