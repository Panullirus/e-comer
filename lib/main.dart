import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();

}

class _MyCustomFormState extends State<MyCustomForm> {
  int counter = 0;

  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de audifonos'),
      ),
      body: Card(
        child: Column(
          children: [
            Card(

              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Audifonos Sony'),
                    subtitle: Text('4500 pesos', style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Text('Compra estos lindos audifonos', style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                  ),
                  ButtonBar(alignment: MainAxisAlignment.start, children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Audifonos Sony WH-1000XM4 Agregado a tu carrito"),
                            );
                          },
                        );

                      },
                      child: const Text('Guardar'),
                    ),
                  ],),
                  Row(
                    children: [
                      Expanded(
                        child: Image(
                          image: NetworkImage('https://mxsonyb2c.vteximg.com.br/arquivos/ids/257874-1000-1000/5d02da5df552836db894cead8a68f5f3.jpg?v=637323405320470000'),
                          height: 140,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(

              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Audifonos Sony'),
                    subtitle: Text('2,399 pesos', style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Text('Compra estos lindos audifonos', style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                  ),
                  ButtonBar(alignment: MainAxisAlignment.start, children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Audifonos Sony WH-CH510 Agregado a tu carrito"),
                            );
                          },
                        );

                      },
                      child: const Text('Guardar'),
                    ),
                  ],),
                  Row(
                    children: [
                      Expanded(
                        child: Image(
                          image: NetworkImage('https://mxsonyb2c.vteximg.com.br/arquivos/ids/212276-1000-1000/37b434d18a6209f3ff741b5f387a5972.jpg?v=637033525280630000'),
                          height: 140,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

