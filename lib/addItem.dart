import 'package:flutter/material.dart';
import 'package:sports_app/Homepage.dart';
import 'package:sports_app/home.dart';
import 'package:sports_app/items.dart';
import 'package:velocity_x/velocity_x.dart';

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  var valTitle, players, coaches, type;
  TextEditingController titleCon = TextEditingController();
  TextEditingController playersCon = TextEditingController();
  TextEditingController coachesCon = TextEditingController();
  TextEditingController typeCon = TextEditingController();

  saveItem() async{
    items.add(
      Padding(
          padding: const EdgeInsets.fromLTRB(18, 2, 18, 18),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      titleCon.text,
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: playersCon.text,
                            style: TextStyle(
                              backgroundColor: Colors.grey[300],
                              fontSize: 15,
                              
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: ' Players',
                                style: TextStyle(backgroundColor: Colors.white),
                              )
                            ])),
                        Text.rich(TextSpan(
                            text: coachesCon.text,
                            style: TextStyle(
                              backgroundColor: Colors.grey[300],
                              fontSize: 15,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: ' Coaches',
                                style: TextStyle(backgroundColor: Colors.white),
                              )
                            ])),
                        Text(
                          typeCon.text,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 3),
                    child: Text(
                      "Center Head: Marco Reus",
                      textScaleFactor: 0.95,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 3),
                    child: Text(
                      "Location: BBPS, PLot 14, Sector 12, Dwarka, New Delhi",
                      textScaleFactor: 0.95,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
    setState(() {
      
    });
    //  Navigator.push(context, new MaterialPageRoute(builder: (context)=> Homepage()));
    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=> MyHomePage()));
    // Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Add Item".text.white.make(),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              "Title",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.red),
                  controller: titleCon,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => valTitle = value,
                  decoration: InputDecoration(
                    // hintText: "Title",
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Text(
              "Players",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.red),
                  controller: playersCon,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => players = value,
                  decoration: InputDecoration(
                    // hintText: "Title",
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Text(
              "Coaches",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.red),
                  controller: coachesCon,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => coaches = value,
                  decoration: InputDecoration(
                    // hintText: "Title",
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Text(
              "Type",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.red),
                  controller: typeCon,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => type = value,
                  decoration: InputDecoration(
                    // hintText: "Title",
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: ()
            {
              saveItem();
            },
             child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
