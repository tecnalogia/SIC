import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pepegrillo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: _cards(),
      ),
    );
  }

  List<Widget> _cards() {
    List<Widget> widg = new List<Widget>();
    widg.add(cardType1());
    widg.add(cardType2());
    widg.add(cardType3());
    
        return widg;
      }
    
      Card cardType1() {
        return Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            )
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Soy el titulo del puesto de trabajo'),
                subtitle: Text(
                    'Soy el contenido del texto del puesto de trabajo, miniresumen'),
                leading: Text('data'),
                trailing: Text('data'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    autofocus: true,
                    clipBehavior: Clip.none,
                    child: Text('Aceptar'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    autofocus: true,
                    clipBehavior: Clip.none,
                    child: Text('Cancelar'),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    
      Widget cardType2() {
        return Card(
          clipBehavior: Clip.none,
          child: Column(
            children: <Widget>[
              Text('data'),
              FadeInImage(
                fadeInDuration: Duration(microseconds: 1000),
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/f/ff/Albert_Bierstadt_-_Rocky_Mountain_Landscape_-_Google_Art_Project.jpg'),
                placeholder: AssetImage('assets/jar-loading.gif'),
              ),
    
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text('data'),
              )
            ],
          ),
        );
      }
    
      Widget cardType3() {

        return Text('data');
      }
}
