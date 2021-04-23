import 'package:flutter/material.dart';

List<Padding> items= [
    Padding(
          padding: const EdgeInsets.all(18.0),
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
                      "Nike Football Club Dwarka",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: '87',
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
                            text: '12',
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
                          "Football",
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
        ),

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
                      "Nike Basketball Club Janakpuri",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: '87',
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
                            text: '12',
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
                          "Basketball",
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
  ];