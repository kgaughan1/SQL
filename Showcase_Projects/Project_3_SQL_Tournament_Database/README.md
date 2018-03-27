Synopsis:

Built a PostgreSQL relational database scheme to store the results of a game tournament. Also provided a number of queries to efficiently report the results of the tournament and determine the winner.

The purpose of this project is to gain experience in working 
with database systems by designing tables and views and then 
manipulating these tables based on user input.  Below you will 
find instructions on how to execute the code as well as 
explanations of the type of files used in the project.


How to Execute Code:

In order to execute this code, you must download the vagrant 
Virtual OS.  The link below provides more information on Virtual 
Operating systems and vagrant.  

https://www.youtube.com/watch?v=djnqoEO2rLc


Git

In order to accomplish this, you must download “git”.  This can 
be acquired from the following link:

https://git-scm.com/downloads


Virtual Box

Next, Virtual Box is the software that runs virtual machines 
(therefore, this is the software that will run Vagrant).  
Download one of the Virtual Box Platform Packages depending on 
your root operating system.

https://www.virtualbox.org/wiki/Downloads


Vagrant

Next, download the Vagrant software from the following link:

https://www.vagrantup.com/downloads.html


Fork Udacity FullStack Configured Files

Once this if finished, navigate to the fullstack nanodegree 
github website (shown below) where you will fork the necessary 
files:

https://github.com/udacity/fullstack-nanodegree-vm

This repository contains all the files necessary to properly 
configure the vagrant virtual machine.

Once you have forked the fullstack files, navigate to 
fullstack/vagrant folder via the terminal.


Launch Vagrant OS

Once the current directory is the vagrant folder, type:

vagrant up

This will launch the vagrant OS.

On first startup, this will take a little longer because it 
will need to install all the dependencies for the vagrant OS.

Once the loading finishes, type in:

Connect to Vagrant OS

vagrant ssh

This will connect you to the Vagrant OS.

Once you are connected, enter in:

/vagrant

This folder is directly connected to the same vagrant folder on 
the user’s local hard drive.  If the user creates or changes 
any files or folders within the vagrant directory on their local 
drive, it will automatically be updated in the vagrant folder on 
the virtual drive.

In the “Tournament Folder” replace the tournament.sql and 
tournament.py files with the files located in my folder.

In order to test the code, run the tournament_test.py file.

Note: The database type that is used in this project is 
PostgreSQL.  In order for python code to query and interact with 
this type of database, the psycopg2 library must be installed 
and imported at the beginning of the python file.  This can be 
seen in the tournament.py file.  If an error occurs requesting 
this library, please download.


Tournament Files Explanation

The tournament.sql files contains the code that drops an existing 
database and creates a new one that will run the desired code.  
It creates a new database called “tournament” and then populates 
this database with two tables (Players and Matches) as well as 
several Views (Player_Wins, Player_Losses, and 
Combine_Player_ID_Wins_and_Losses).

The tournament.py file contains all the python and SQL functions 
that allow the user to delete matches, delete players, count 
players, register a player, check the player standings, report 
a player match or check the next matchup of players in a Swiss 
Pairings tournament.

The tournament_test.py file is a file created by Udacity in order 
to ensure that the project has successfully been completed.
