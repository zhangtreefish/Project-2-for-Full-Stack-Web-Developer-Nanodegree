# tournament
------------
Project 2 of Full Stack Web Developer Nanodegree at Udacity. Use the virtual machine vagrant to serve the psql interface.

To Run
------

Install vagrant; inside the vagrant directory, clone this repository. Run 'python tournament_test.py' to verify the passing of unit testing for functions defined in tournament.py.

To query the matches and players tables in the tournament database, run 'vagrant up', 'vagrant ssh', 'psql tournament' to connect to the vagrant virtual machine. At the vagrant prompt, run \i tournament.sql to connect to the tournament database.
