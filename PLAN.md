# Classes and Roles

  ### Game:
      State: 
        Storing the players themselves (Player objects) 
        Knowing who the current player is.
      Behavior: 
        Outputting players' scores at the end of every turn
        Outputting the who the winner is with their score (lies / 3)
        Running the main game loop (managing turn-taking and checking if someone lost).

  ### Turn:
      State: 
        Storing which player's turn it is
      Behavior: 
        Executing a turn by doing the following
        * Creating a new question
        * Asking the current player
        * Checking if the answer was right or wrong (making the game decision based on the result, reacting to the correctness)

  ### Question: 
      State:
        Storing which two numbers between 1 and 20 the user picked
        Storing the correct answer
      Behavior:
        Generating a question
        Checking if the user's input is correct

  ### Player:
      State:
        Storing name and lives
      Behavior:
        Providing and answer
        Losing a life if the answer is wrong


# Further questions

Which class will contain the game loop (where each instance of the loop is the other players turn)?
  - Game will contain the main loop (each iteration is a player’s turn).

Which class should manage who the current_player is?
  - Game will track and switch the current player.

Which class(es) will contain user I/O and which will not have any?
  - Game and Turn might handle I/O (asking questions, printing scores). 
  - Question and Player ideally should just deal with data and return results.