# README

This site aims to create a place for everyday citizens to browse Maryland State legislation for the current season in an easy to digest format. It provides administrators with the ability to provide a simplified description, category, and importance level to each bill.

Currently much of the site is implemented however the site is not complete. In the future I plan to improve the UI, implement bill deletion, lock admin features behind a login, make a few edits to the list functionality that I gather from testing, and of course eventually host it publicly.

The site is not hosted anywhere at the moment, but it can be viewed by downloading and extracting the zip, running bundle install, running standard rake commands (including rake db:seed, the front page currently requires seeds to run) and launching the server.

Please note that the site uses bootstrap-sass 3.2.0, so you may need to follow installation instructions for that as well.

The admin side is not linked to the user side, so in order to access it, navigate to localhost:3000/admin while running the server.