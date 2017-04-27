# tournament
------------
Project 2 of Full Stack Web Developer Nanodegree at Udacity. Use the virtual machine vagrant to serve the psql interface.

##How To Run
------

Install vagrant;

Clone this repository.

Verify the passing of unit testing for functions defined in tournament.py. Detailed steps are as follows:
```sh
vagrant up

vagrant ssh

cd ../../vagrant

python tournament_test.py
```

To query the matches and players tables in the tournament database directly:

follow the above steps to set up the vagrant, and then

at /vagrant$: enter'psql tournament' to connect to the database. [Or at the tournament psql prompot (tournament=>), enter \i tournament.sql to connect to the tournament database.]

enter query such as 'tournament=> select * from v_player_standing;'

##References:
https://github.com/udacity/fullstack-nanodegree-vm/blob/master/vagrant/Vagrantfile
