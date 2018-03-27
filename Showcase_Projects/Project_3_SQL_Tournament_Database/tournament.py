#!/usr/bin/env python
#
# tournament.py -- implementation of a Swiss-system tournament
#

import psycopg2
import time


def connect():
    """Connect to the PostgreSQL database.  Returns a database connection."""
    try:
        db = psycopg2.connect("dbname=tournament")
        cursor = db.cursor()
        return db, cursor
    except:
        print ("<error message>")


def deleteMatches():
    """Remove all the match records from the database."""
    db, c = connect()
    query = "delete from MATCHES"
    c.execute(query)
    db.commit()
    db.close()
    print "Delete Matches Success"


def deletePlayers():
    """Remove all the player records from the database."""
    db, c = connect()
    query = "delete from PLAYERS"
    players = c.execute(query)
    db.commit()
    db.close()
    print "Delete Players Success"


def countPlayers():
    """Returns the number of players currently registered."""
    db, c = connect()
    query = "select count(*) as num from PLAYERS"
    c.execute(query)
    result = c.fetchone()
    db.commit()
    db.close()
    return result[0]


def registerPlayer(name):
    """Adds a player to the tournament database.

    The database assigns a unique serial id number for the player.  (This
    should be handled by your SQL database schema, not in your Python code.)

    Args:
      name: the player's full name (need not be unique).
    """
    db, c = connect()
    query = "insert into PLAYERS (Player_Name) values (%s)"
    parameters = (name,)
    insert_player = c.execute(query, parameters)
    db.commit()
    db.close()


def playerStandings():
    """Returns a list of the players and their win records, sorted by wins.

    The first entry in the list should be the player in first place, or a player
    tied for first place if there is currently a tie.

    Returns:
      A list of tuples, each of which contains (id, name, wins, matches):
        id: the player's unique id (assigned by the database)
        name: the player's full name (as registered)
        wins: the number of matches the player has won
        matches: the number of matches the player has played
    """

    db, c = connect()
    query = "select Player_ID, Player_Name, Wins, losses from Combine_Player_ID_Wins_Losses order by wins desc"
    c.execute(query)
    result = c.fetchall()
    result_list = []
    index = 0
    for row in result:
        id1 = str(result[index][0])
        name = str(result[index][1])
        wins = result[index][2]
        if wins is None:  # <====================
            wins = 0
        losses = result[index][3]
        if losses is None:  # <==================
            losses = 0
        matches = wins + losses
        result_list.append((id1, name, wins, matches))
        # print result_list
        index += 1

    db.commit()
    db.close()
    # print result
    return result_list

def reportMatch(winner, loser):
    """Records the outcome of a single match between two players.

    Args:
      winner:  the id number of the player who won
      loser:  the id number of the player who lost
    """

    db, c = connect()
    query = "insert into MATCHES (Player_ID_Winner, Player_ID_Loser) values (%s,%s)"
    parameters = (winner, loser,)
    c.execute(query, parameters)
    db.commit()
    db.close()


def swissPairings():
    """Returns a list of pairs of players for the next round of a match.

    Assuming that there are an even number of players registered, each player
    appears exactly once in the pairings.  Each player is paired with another
    player with an equal or nearly-equal win record, that is, a player adjacent
    to him or her in the standings.

    Returns:
      A list of tuples, each of which contains (id1, name1, id2, name2)
        id1: the first player's unique id
        name1: the first player's name
        id2: the second player's unique id
        name2: the second player's name
    """

    pairing_list = []
    index = 0
    length = playerStandings()
    for row in length:
        if index % 2 == 0:
            id1 = str(length[index][0])
            name1 = length[index][1]
        else:
            id2 = str(length[index][0])
            name2 = length[index][1]
            pairing_list.append((id1, name1, id2, name2))
        index += 1
    return pairing_list
