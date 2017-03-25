Oracle

A database based on BatGirl when she becomes Oracle. My end goal is to have the database contain heroes, villains, locations, and teams. For now I will just focus on the Hero part The database will accept a password, list heroes in the database, and when a hero is chosen, their details will be displayed.

I need a CLI, Hero, and Scraper class

1. Bin File
  [x] needs requirements
  [x] needs shebang line
  [X] needs to work
  [x] needs to be able to call the CLI Class
2. CLI Class
  [x] needs to have a greeting
  [x] needs to accept a password as Bruce Wayne (case sensitive)
  [x] when the password is entered, the user must not be able to see it
  [x] the password is entered correctly, the user will see a list of options
  [x] if the password is entered incorrectly, the user will see "PasswordError" - an error to be defined later
  [x] needs to accept an array of heroes
  [x] needs to list each one by one after the password is entered correctly
  [x] need to have each hero with it's index number in front of it and increased by 1
  [x] needs to be able to pull from Hero Class
  [x] needs to pull Heroes @@all array and display the heroes via #list_options
  [] needs to convert user input to integer if input is not 'done' or 'list'
  [] needs to accept an option from the menu based on user input and call the hero to display it's details
  [] needs accept 'list' and display the menu of options again
  [] needs to accept 'done' and display 'Right then. Back to work.'

3. Hero Class
  [x] needs an @@all array
  [x] needs to be able to read the array
  [] needs to be able to display it's heroes options


Random Ideas
- complete reset if password entered incorrectly too many times ?
