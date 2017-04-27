# Tournament PostgreSQL Database in a Virtual Machine
------------
Project 2 of Full Stack Web Developer Nanodegree at Udacity. Use the virtual machine vagrant to serve the psql interface.

##How To Run
------

Install vagrant;

Clone this repository.

```sh
vagrant up

vagrant ssh

cd ../../vagrant
```
to connect to the database, at /vagrant$:
```sh
psql tournament
```
to populate the database, at tournament=>:
```sh
\i tournament.sql
```
to verify the passing of unit testing for functions defined in tournament.py, 'CtrlD'
to exit psql to /vagrant$:
```sh
python tournament_test.py
```

To query the matches and players tables in the tournament database directly, at
tournament=>:
```
select * from v_player_standing;
```

##References:
https://github.com/udacity/fullstack-nanodegree-vm/blob/master/vagrant/Vagrantfile
