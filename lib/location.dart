import 'package:flutter/material.dart';
import 'model/location.dart';

class locationDetail extends StatelessWidget {
  final Location location;

  const locationDetail({required this.location}); //added const, required keyword and curly braces around location

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              section("Heading 1", "body 1",
                  const Color.fromARGB(255, 96, 174, 238)),
              section("Heading 2", "body 2", Color.fromARGB(255, 23, 156, 92)),
              section("Heading 3", "body 3", Color.fromARGB(255, 224, 39, 86)),
              ..._renderFacts(location), //added spread operator (ChatGPT suggestion)
            ]));
  }
}

List<Widget> _renderFacts(Location location){
  var result = List <Widget>.empty(growable: true); //added var keyword and growable: true because null safety
  for (int i=0; i<location.facts.length; i++){
    result.add(_sectionTitle(location.facts[i].title));
    result.add(_sectionText(location.facts[i].title));
  }
  return result; //added return statement
}
Widget _sectionTitle (String text){
  return Text(text);
}

Widget _sectionText(String text){
  return Text(text);
}

Widget section(String title, String body, Color color) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        height: 80,
        margin: const EdgeInsets.all(10),
        width: 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white24)),
        child: Text(title),
      )
    ],
  );
}

//  CREATING A BASIC CLASS AND ADDING ELEMENTS ON THE SCAFFOLD

// class locationDetail extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Travel App")),
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                   decoration: BoxDecoration(color: Colors.red),
//                   child: Text("Done 1"))
//             ]));
//   }
// }
