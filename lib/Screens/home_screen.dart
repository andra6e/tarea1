import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Clicks'),
        centerTitle: true,
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de Clicks',
              style: TextStyle(fontSize: 30),
            ),
            Text('$contador', style: TextStyle(fontSize: 30))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Text(
              '-',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              setState(() {
                contador = (contador > 0) ? contador - 1 : contador;
              });
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            child: const Text(
              '+',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              setState(() {
                contador++;
              });
            },
          ),
        ],
      ),
    );
  }
}
