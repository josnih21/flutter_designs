import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 20.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            Container(
              width: double.infinity,
              child: FadeInImage(
                  placeholder: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'),
                  height: 200.0,
                  fit: BoxFit.cover,
                  image: NetworkImage('https://images.unsplash.com/photo-1538370965046-79c0d6907d47?ixlib=rb-1.2.1&w=1000&q=80')
              ),
            ),
            _createInfoRow(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
          ),
        ),
      );
  }

  Widget _createInfoRow() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'The Milky Way',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'A photo of the milky way',
                    style: estiloSubtitulo,
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createColumnWithActions(Icons.call,'CALL'),
        _createColumnWithActions(Icons.near_me,'ROUTE'),
        _createColumnWithActions(Icons.share,'SHARE'),
      ],
    );
  }

  Widget _createColumnWithActions(IconData icon,String text) {
    return Column(
        children: <Widget>[
          Icon(icon,color: Colors.blue,size: 40.0,),
          SizedBox(height: 5.0),
          Text(text,style: TextStyle(fontSize:15.0,color:Colors.blue))
        ],
      );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
        'Pues nada tío esto es una app de prueba que estoy haciendo para aprender un poquito de flutter que esta bastante guapo y eso'
        ' que no te doy mas la vara mi colega, yo estoy aprendiendo bastante de esta tecnología que da una posibilidad increible para desarrollar apps',
        textAlign: TextAlign.justify
        ),
        
      ),
    );
  }
}
