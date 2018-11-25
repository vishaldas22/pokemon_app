import 'package:flutter/material.dart';
import 'package:pokemon_app/pokemon.dart';

class Detail extends StatelessWidget {
  final Pokemon pokemon;

  Detail({this.pokemon});

//  bodyWidget(BuildContext context) {
//    Stack(
//      children: <Widget>[
//        Positioned(
//          height: MediaQuery.of(context).size.height / 2,
//          width: MediaQuery.of(context).size.width - 20,
//          left: 10.0,
//          top: MediaQuery.of(context).size.height * 0.1,
//          child: Card(
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(15.0),
//            ),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                SizedBox(
//                  height: 50.0,
//                ),
//                Text(pokemon.name),
//                Text("Height: ${pokemon.height}"),
//                Text("Weight: ${pokemon.weight}"),
//                Text("Types"),
//                Row(
//                  children: pokemon.type
//                      .map(
//                          (t) => FilterChip(label: Text(t), onSelected: (b) {}))
//                      .toList(),
//                )
//              ],
//            ),
//          ),
//        ),
//        Align(
//          alignment: Alignment.topCenter,
//          child: Hero(
//            tag: pokemon.img,
//            child: Container(
//              height: 200.0,
//              width: 200.0,
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: NetworkImage(pokemon.img), fit: BoxFit.cover)),
//            ),
//          ),
//        )
//      ],
//    );
//  }

  bodyWidget(BuildContext context){
    Stack(
      children: <Widget>[
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                //Text("Hello")
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.teal,
      body: bodyWidget(context),
    );
  }
}
