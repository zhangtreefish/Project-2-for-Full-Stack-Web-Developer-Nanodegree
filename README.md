# tournament
------------
Project 2 of Full Stack Web Developer Nanodegree at Udacity. Use the virtual machine vagrant to serve the psql interface.

To Run
------

Install vagrant; inside the vagrant directory, clone this repository. Run 'python tournament_test.py' to verify the passing of unit testing for functions defined in tournament.py. Detailed steps are as follows:

1. enter 'vagrant up',
2.enter'vagrant ssh',
3.cd .. (2 times),
4.cd vagrant/tournament,
5.at /vagrant/tournament$: Run 'python tournament_test.py'

To query the matches and players tables in the tournament database directly:
1-4:follow steps 1-4 above, and then
5. at /vagrant/tournament$: enter'psql tournament' to connect to the vagrant virtual machine. [Or at the tournament psql prompot (tournament=>), enter \i tournament.sql to connect to the tournament database.]
6. enter query such as 'tournament=> select * from v_player_standing;'
