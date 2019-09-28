
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        actions: <Widget>[],
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((eachrow) {
      final widgetTemp = ListTile(
        title: Text(eachrow['titulo']),
        subtitle: Text(eachrow['subtitulo']),
        leading: getIcon(eachrow['icon']),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          //final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.pushNamed(context, eachrow['ruta']);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
