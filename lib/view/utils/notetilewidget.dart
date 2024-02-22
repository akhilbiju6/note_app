import 'package:flutter/material.dart';

class NoteTileWidget extends StatefulWidget {
  const NoteTileWidget({super.key});

  @override
  State<NoteTileWidget> createState() => _NoteTileWidgetState();
}

class _NoteTileWidgetState extends State<NoteTileWidget> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("title",style: TextStyle(
                                  fontSize: 25,color: Colors.black,
                                  fontWeight: FontWeight.bold
                                 ),),
                               ),
                             ],
                           ),
                           SizedBox(width: 200,),
                           Column(crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.edit)
                            ],
                           ),SizedBox(width: 20,),
                           Column(
                            children: [
                              Icon(Icons.delete)
                            ],
                           )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("description",style: TextStyle(
                                fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20
                              ),),
                            )
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Tue,feb 20,2024",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,fontSize: 18
                              ),),
                            ),
                          
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.share),
                            )
                          ],
                        )
                      ],
                    ),
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow
                    ),
                  
                  ),SizedBox(height: 20,)
      ],
    );
  }
}