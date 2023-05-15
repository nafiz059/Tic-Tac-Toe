import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enum/game_state.dart';
import 'package:tic_tac_toe/enum/box_state.dart';

import 'widgets/box_state_to_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  bool isCrossturn = true;
  GameState gameState = GameState.NotFinised;

  //First row
  box_state a = box_state.empty;

  box_state b = box_state.empty;

  box_state c = box_state.empty;

  //Second row
  box_state d = box_state.empty;

  box_state e = box_state.empty;

  box_state f = box_state.empty;

  //Third row
  box_state g = box_state.empty;

  box_state h = box_state.empty;

  box_state i = box_state.empty;

  void gameScoreUpdate(int count) {
    print(count);
    //first row
    if (a == b && b == c && a != box_state.empty) {
      print("1st r");
      if (a == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //second row
    else if (d == e && e == f && d != box_state.empty) {
      print("2nd r");
      if (d == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //third row
    else if (g == h && h == i && g != box_state.empty) {
      print("3rd r");
      if (g == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //first column
    else if (a == d && d == g && g != box_state.empty) {
      print("1st c");
      if (a == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //second column
    else if (b == e && e == h && b != box_state.empty) {
      print("2nd c");
      if (b == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //third row
    else if (c == f && i == f && c != box_state.empty) {
      print("3rd c");
      if (c == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //right digonal
    else if (a == e && e == i && a != box_state.empty) {
      print("right dig");
      if (a == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    }

    //left digonal
    else if (c == e && e == g && c != box_state.empty) {
      print("left dig");
      if (c == box_state.circle) {
        gameState = GameState.CircleWon;
      } else {
        gameState = GameState.CrossWon;
      }
    } else if (count == 9) {
      gameState = GameState.Draw;
    }
  }

  void gameReset() {
    setState(() {
      gameState = GameState.NotFinised;
      count = 0;

      // first row
      a = box_state.empty;

      b = box_state.empty;

      c = box_state.empty;

      //Second row
      d = box_state.empty;

      e = box_state.empty;

      f = box_state.empty;

      //first row
      g = box_state.empty;

      h = box_state.empty;

      i = box_state.empty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Tic Tac Toe')),
          actions: [
            ElevatedButton(
              onPressed: () => gameReset(),
              child: Text("Reset"),
            )
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "Turn: ${isCrossturn ? "Cross" : "Circle"}",
                      style: const TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 6.0,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (a == box_state.empty) {
                                if (isCrossturn) {
                                  a = box_state.cross;
                                } else {
                                  a = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on a");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: a),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (b == box_state.empty) {
                                if (isCrossturn) {
                                  b = box_state.cross;
                                } else {
                                  b = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on b");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: b),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (c == box_state.empty) {
                                if (isCrossturn) {
                                  c = box_state.cross;
                                } else {
                                  c = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on c");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: c),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (d == box_state.empty) {
                                if (isCrossturn) {
                                  d = box_state.cross;
                                } else {
                                  d = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on d");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: d),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (e == box_state.empty) {
                                if (isCrossturn) {
                                  e = box_state.cross;
                                } else {
                                  e = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on e");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: e),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (f == box_state.empty) {
                                if (isCrossturn) {
                                  f = box_state.cross;
                                } else {
                                  f = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on f");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: f),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (g == box_state.empty) {
                                if (isCrossturn) {
                                  g = box_state.cross;
                                } else {
                                  g = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on g");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: g),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (h == box_state.empty) {
                                if (isCrossturn) {
                                  h = box_state.cross;
                                } else {
                                  h = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on h");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: h),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (i == box_state.empty) {
                                if (isCrossturn) {
                                  i = box_state.cross;
                                } else {
                                  i = box_state.circle;
                                }
                                isCrossturn = !isCrossturn;
                                count += 1;
                                gameScoreUpdate(count);
                              }
                            });
                            print("Tapped on i");
                          },
                          child: Container(
                            color: Colors.blueAccent,
                            child: BoxStateToIcon(boxState: i),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            gameState != GameState.NotFinised
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.green.withOpacity(0.8),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            gameState == GameState.CircleWon
                                ? "Circle Won!"
                                : gameState == GameState.CrossWon
                                    ? "Cross Won!"
                                    : gameState == GameState.Draw
                                        ? "Match Draw!"
                                        : "",
                            style: TextStyle(
                                fontSize: 60.0, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            onPressed: () => gameReset(),
                            child: Text("Reset"),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
