# freeCodeCamp Celestial Bodies Database challenge

## Instructions

For this project, you need to log in to PostgreSQL with psql to create your database. Do that by entering `psql --username=freecodecamp --dbname=postgres` in the terminal. Make all the tests below pass to complete the project. Be sure to get creative, and have fun!

Don't forget to connect to your database after you create it 😄

Here's some ideas for other column and table names: `description`, `has_life`, `is_spherical`, `age_in_millions_of_years`, `planet_types`, `galaxy_types`, `distance_from_earth`.

>If you leave your virtual machine, your database may not be saved. You can make a dump of it by entering `pg_dump -cC --inserts -U freecodecamp universe > universe.sql` in a bash terminal (not the psql one). It will save the commands to rebuild your database in `universe.sql`. The file will be located where the command was entered. If it's anything inside the project folder, the file will be saved in the VM. You can rebuild the database by entering `psql -U postgres < universe.sql` in a terminal where the .sql file is.

>If you are saving your progress on freeCodeCamp.org, after getting all the tests to pass, follow the instructions above to save a dump of your database. Save the `universe.sql` file in a public repository and submit the URL to it on freeCodeCamp.org.
