import 'package:flutter/material.dart';

class HomePagetemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: _crearCorto(),
      ),
      appBar: AppBar(
        title: Text("ata"),
      ),
    );
  }

/*
  List<Widget> _crearLargo() {
    List<Widget> list = new List<Widget>();
    for (String item in opciones) {
      final tempWidget = ListTile(
        title: Text("$item"),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }
*/
  List<Widget> _crearCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Text('Inicio'),
            trailing: Icon(Icons.ac_unit),
            onTap: _haceralgo,
          ),
          Divider(),
        ],
      );
    }).toList();
  }

}

void _haceralgo(){


}
