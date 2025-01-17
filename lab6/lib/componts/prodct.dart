import 'package:flutter/material.dart';
import 'package:lab6/prodctpage.dart';

class prodct extends StatelessWidget {
  prodct(
      {super.key,
      required this.image,
      required this.name,
      required this.pric, });
  final image;
  final String name;
  final double pric; // ignore: non_constant_identifier_names
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        // margin: EdgeInsets.all(value),
        width: MediaQuery.of(context).size.width / 2,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            elevation: 10,
            shadowColor: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return prodctpage( image: image, name: name,pric: pric,);
            }));
          },
          child: Column(children: [
            Container(
              width: 140,
              height: 150,
              child: Image.asset(image),
            ),
            Text("${name}",
                style: TextStyle(color: Color.fromARGB(255, 2, 1, 1))),
            Text("${pric} \$",
                style: TextStyle(color: Color.fromARGB(255, 2, 1, 1))),
            SizedBox(
              height: 20,
            )
          ]),
        ));
  }
}
