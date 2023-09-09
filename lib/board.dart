import 'package:flutter/material.dart';
import 'package:tetris_game/values.dart';
import 'pixel.dart';
import 'peice.dart';

class GameBoard extends StatefulWidget{
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  //gride dimension
  int rowLength  = 10;
  int colLength = 15;

  // current tetris piece
  Piece currentPiece = Piece(type: Tetromino.L);

  @override
  void initState(){
    super.initState();

    //start game when app starts
    startGame();
  }

  void startGame(){
    currentPiece.initializePiece();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      GridView.builder(
          itemCount: rowLength * colLength,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: rowLength),
          itemBuilder: (context, index) {
            if(currentPiece.position.contains(index)){
              return Pixel(
                color: Colors.yellow,
                child: index,
              ) ;
            }
            else{
              return Pixel(
                color: Colors.grey[900],
                child: index,
              );
            }
          }
      ),
    );
  }
}