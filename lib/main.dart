import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'ice_fire_rocket_brain.dart';

// Let's create IceFireRocketBrain class' object for being able to tap into it's properties.
IceFireRocketBrain iceFireRocketBrain = IceFireRocketBrain();

void main() => runApp(IceFireRocket());

class IceFireRocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GamePage(),
    );
  }
}

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  // Variable to store tha value from Random Number Generator to turn the Dice.
  int diceNumber = 1;

  // Method for instruction lines.
  Expanded buildInstructionLine({String instructionImageUrl, String instructionText}) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage(instructionImageUrl),
            ),
          ),
          Expanded(
            child: Text(
              instructionText,
              style: TextStyle(
                color: Colors.grey[300],
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to return image-containing(ice,fire,rocket,player1 goti & player2 goti images.) containers.
  Container createImageContainingContainer(String imageUrl) {
    return Container(
      child: Image.asset(imageUrl),
      decoration: BoxDecoration(
        color: Colors.indigo[800],
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            spreadRadius: 5.0,
            blurRadius: 5.0,
          ),
        ],
      ),
    );
  }

  // Method to create our each Container.
  int i = -1;
  Container createContainer() {
    if (i < 39) {
      i++;
      if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(i) == 'ice') {
        return createImageContainingContainer('images/ice.png');
      } else if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(i) == 'fire') {
        return createImageContainingContainer('images/fire.png');
      } else if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(i) == 'rocket') {
        return createImageContainingContainer('images/rocket.png');
      } else if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(i) == 'player1_gotti') {
        return createImageContainingContainer('images/player1_gotti.png');
      } else if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(i) == 'player2_gotti') {
        return createImageContainingContainer('images/player2_gotti.png');
      } else {
        // Means, continue showing text number in the Container on board.
        return Container(
          child: Text(
            iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(i),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 35.0,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.indigo[800],
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                spreadRadius: 5.0,
                blurRadius: 5.0,
              ),
            ],
          ),
        );
      }
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ice_fire_rocket_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              buildInstructionLine(instructionImageUrl: 'images/ice.png', instructionText: 'Freezes for 3 Turns.'),
              buildInstructionLine(instructionImageUrl: 'images/fire.png', instructionText: 'Burns to Start.'),
              buildInstructionLine(instructionImageUrl: 'images/rocket.png', instructionText: 'Boosts +8 Points.'),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 10,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                            Expanded(
                              child: createContainer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    iceFireRocketBrain.getWhoseTurnText(),
                    style: TextStyle(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    i = -1;
                    if (iceFireRocketBrain.getPlayerTurnTracker() == 0) {
                      iceFireRocketBrain.setPlayerTurnTracker(1);
                      if (!iceFireRocketBrain.getIsFirstTimeForPlayer1()) {
                        if (iceFireRocketBrain.getPlayer1sPositionOnBoard() <= 40) {
                          iceFireRocketBrain.setAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer1sPositionOnBoard(), iceFireRocketBrain.getTempVarForPlayer1());
                        } else {
                          print('Can\'t move player1');
                        }
                      }
                      final player = AudioCache();
                      player.play('dice_sound.mp3', volume: 5.0);
                      setState(() {
                        iceFireRocketBrain.setWhoseTurnText('Player 2\'s turn');
                        diceNumber = Random().nextInt(6) + 1;
                        iceFireRocketBrain.setPlayer1sPositionOnBoard((iceFireRocketBrain.getPlayer1sPositionOnBoard() + diceNumber));
                        if (iceFireRocketBrain.getPlayer1sPositionOnBoard() <= 40) {
                          if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer1sPositionOnBoard()) != 'player2_gotti') {
                            iceFireRocketBrain.setTempVarForPlayer1(iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer1sPositionOnBoard()));
                          } else {
                            iceFireRocketBrain.setTempVarForPlayer1(iceFireRocketBrain.getTempVarForPlayer2());
                            iceFireRocketBrain.setTempVarForPlayer2('player1_gotti');
                          }

                          iceFireRocketBrain.setAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer1sPositionOnBoard(), 'player1_gotti');
                          iceFireRocketBrain.setIsFirstTimeForPlayer1(false);
                        } else {
                          print('Player1 Wins !!!');
                          iceFireRocketBrain.setAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer2sPositionOnBoard(), iceFireRocketBrain.getTempVarForPlayer2());
                          //// PLAYER 1 WINS. LET'S RESET GAME...
                          iceFireRocketBrain.resetGame();
                        }
                      });
                    } else {
                      // Player 2's Turn.
                      iceFireRocketBrain.setPlayerTurnTracker(0);
                      if (!iceFireRocketBrain.getIsFirstTimeForPlayer2()) {
                        if (iceFireRocketBrain.getPlayer2sPositionOnBoard() <= 40) {
                          iceFireRocketBrain.setAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer2sPositionOnBoard(), iceFireRocketBrain.getTempVarForPlayer2());
                        } else {
                          print('Can\'t Move player2');
                        }
                      }
                      final player = AudioCache();
                      player.play('dice_sound.mp3', volume: 5.0);
                      setState(() {
                        iceFireRocketBrain.setWhoseTurnText('Player 1\'s turn.');
                        diceNumber = Random().nextInt(6) + 1;
                        iceFireRocketBrain.setPlayer2sPositionOnBoard((iceFireRocketBrain.getPlayer2sPositionOnBoard() + diceNumber));
                        if (iceFireRocketBrain.getPlayer2sPositionOnBoard() <= 40) {
                          if (iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer2sPositionOnBoard()) != 'player1_gotti') {
                            iceFireRocketBrain.setTempVarForPlayer2(iceFireRocketBrain.getAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer2sPositionOnBoard()));
                          } else {
                            iceFireRocketBrain.setTempVarForPlayer2(iceFireRocketBrain.getTempVarForPlayer1());
                            iceFireRocketBrain.setTempVarForPlayer1('player2_gotti');
                          }
                          iceFireRocketBrain.setAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer2sPositionOnBoard(), 'player2_gotti');
                          iceFireRocketBrain.setIsFirstTimeForPlayer2(false);
                        } else {
                          print('Player2 Wins !!!');
                          iceFireRocketBrain.setAnItemFromAllItemsOnBoardList(40 - iceFireRocketBrain.getPlayer1sPositionOnBoard(), iceFireRocketBrain.getTempVarForPlayer1());
                          //// PLAYER 2 WINS. LET'S RESET GAME...
                          iceFireRocketBrain.resetGame();
                        }
                      });
                    }
                  },
                  child: Image(
                    image: AssetImage('images/dice-$diceNumber.png'),
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//// ########## NOTE: OUR GAME'S MAIN FUNCTIONALITY IS ALMOST COMPLETE.
//// ########## WE ONLY NEED TO IMPLEMENT (ICE/FIRE/ROCKET CONDITIONS FOR GOTTI) & SOME DESIGNING AND STYLING.

//// ################ AND WE'LL DO THAT AFTER COMPLETING 2ND COURSE OF 'FLUTTER LEARNING' BY AppBrewery.
