import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageOne(),
          _pageTwo(context),
        ],


      ),
    );
  }

 Widget _pageOne() {
   return Stack(
     children: <Widget>[
       _backgroundColor(),
       _backgroundImage(),
       _createText(),
     ],
     fit: StackFit.expand,
   );
 }

 Widget _pageTwo(BuildContext context) {
   return Container(
     width: double.infinity,
     height: double.infinity,
     color: Color.fromRGBO(108, 192, 218, 1.0),
     child: Center(
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'basic');
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
                child: Text('BIENVENIDO',style: TextStyle(fontSize: 15.0),),
              ),
              textColor: Colors.white,
               
            ),
          )
   );
 }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color:Color.fromRGBO(108, 192, 218, 1.0)
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child:  Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

 Widget _createText() {
   final textStyle = TextStyle(color:Colors.white,fontSize: 50.0);
   return SafeArea(
     child: Column(
       children: <Widget>[
         SizedBox(height:20.0),
         Text('26°',style: textStyle),
         Text('Martes',style: textStyle),
         Expanded(child: Container()),
         Icon(Icons.keyboard_arrow_down,size: 70.0,color: Colors.white,)
       ],
     ),
   );
 }
}