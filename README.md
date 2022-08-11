# HungerGames
A smart contract that adds users and Randomly selects 2 users(Male and Female) to participate in the game to the death.At the end of the game only one user survives.

Every year, in the ruins of what was once North America, the Capitol of the nation of Panem - a technologically advanced, utopian city where the nation's most wealthy and powerful citizens live, forces each of its 12 districts to send a teenage boy and a girl, between the ages of 12 and 18, to compete in the Hunger Games: a nationally televised event in which 'tributes' fight each other within an arena, until one survivor remains. This time of the year has come and it’s time for the 100th hunger game where you should send the new pair of teenage boy and girl.

Create a Capitol contract which:

* adds person by age and gender (hint: use struct for storing the person)
* chooses one girl and one boy:
  * you are not allowed to choose the two people from the same gender
  * they should be between 12 and 18 years old
  * they should be chosen by random function (Using chainlink VRF (Verfiable Random Function)
* you can check how many girls and boys are added -> returns a positive number
* after choosing the pair (boy and girl) set the start date of the hunger games and the end date (the hunger games should last 5 minutes)
* after the end of the hunger game, check if the boy and girl are alive (use random 0 - dead, 1 - alive, use modifier for checking if the hunger game ended)
Use the chainlink Keepers to get the winner.

