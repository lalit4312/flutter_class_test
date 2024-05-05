import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<String> nameCharacters = ['L', 'a', 'l', 'i', 't'];
  List<bool> buttonVisibility = List.filled(5, true);
  List<bool> buttonColorChange = List.filled(5, true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Allocations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
          crossAxisCount: 2,
          children: List.generate(
            nameCharacters.length,
            (index) => AnimatedOpacity(
              opacity: buttonVisibility[index] ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (buttonColorChange[index]) {
                      // Change color on first tap
                      buttonColorChange[index] = false;
                    } else {
                      // Hide button on second tap
                      buttonVisibility[index] = true;
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (!buttonColorChange[index]) {
                        return Colors.red;
                      }
                      return Colors.orange; // default color
                    },
                  ),
                ),
                child: Text(nameCharacters[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
