import 'package:flutter/material.dart';
import 'package:note_app/control/noteacreen_control.dart';

class NoteTileWidget extends StatefulWidget {
  const NoteTileWidget({super.key, required this.title,required this.description,required this.date,this.deletedata});
  final String title;
  final String  description;
  final String date;
  final  Function()? deletedata;

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
                                 child: Text( widget.title
                                 ,style: TextStyle(
                                  fontSize: 25,color: Colors.black,
                                  fontWeight: FontWeight.bold
                                 ),),
                               ),
                             ],
                           ),
                           SizedBox(width: 150,),
                           Column(crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.edit)
                            ],
                           ),SizedBox(width: 20,),
                           Column(
                            children: [
                              InkWell(onTap:
                                child: Icon(Icons.delete))
                            ],
                           )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 200,
                                child: Text(widget.description,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20
                                ),),
                              ),
                            )
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(widget.date,
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