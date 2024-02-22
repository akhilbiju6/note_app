import 'package:flutter/material.dart';

class NoteScreenController{
 static List notedata=[
    {
    "title":"my note",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
    "date":"18/06/2000"
    },
    
  ];

  void adddata(){
    notedata.add(
    {
    "title":"my note",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
    "date":"18/06/2000"
    },  );
  }
void deletedata(int index){
  notedata.removeAt(index);
}

}