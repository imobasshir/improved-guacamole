import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/tic_toc_toe/board_tille.dart';
import 'package:flutter_test_application_1/tic_toc_toe/tile_state.dart';

class MyTicTocToe extends StatefulWidget {
  const MyTicTocToe({Key? key}) : super(key: key);

  @override
  _MyTicTocToeState createState() => _MyTicTocToeState();
}

class _MyTicTocToeState extends State<MyTicTocToe> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final _boardState = List.filled(9, TileState.EMPTY);
  var _currentTurn = TileState.CROSS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset('images/board.png'),
            _boardTiles(),
          ],
        ),
      ),
    );
  }

  Widget _boardTiles() {
    return Builder(builder: (context) {
      final boardDimensions = MediaQuery.of(context).size.width;
      final tileDimensions = boardDimensions / 3;

      return Container(
        width: boardDimensions,
        height: boardDimensions,
        child: Column(
          children: chunk(_boardState, 3).asMap().entries.map((entry) {
            final chunkIndex = entry.key;
            final tileStateChunk = entry.value;

            return Row(
              children: tileStateChunk.asMap().entries.map((innerEntry) {
                final innerIndex = innerEntry.key;
                final tileState = innerEntry.value;
                final tileIndex = (chunkIndex * 3) + innerIndex;

                return BoardTile(
                  tileState: tileState,
                  dimension: tileDimensions,
                  onPressed: () => _updateTileState(tileIndex),
                );
              }).toList(),
            );
          }).toList(),
        ),
      );
    });
  }

  void _updateTileState(int selectedIndex) {
    if (_boardState[selectedIndex] == TileState.EMPTY) {
      setState(() {
        _boardState[selectedIndex] = _currentTurn;
        _currentTurn = _currentTurn == TileState.CROSS
            ? TileState.CIRCLE
            : TileState.CROSS;
      });
    }
  }
}
