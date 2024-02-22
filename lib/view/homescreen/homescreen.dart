import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:note_app/view/utils/bottomsheetwidget.dart';
import 'package:note_app/view/utils/notetilewidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Notes",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25,
            color: Colors.white
          ),),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
            return NoteTileWidget();
            
                    },),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25,right: 25),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return BottomSheetWidget();
                    },);
                  
                },),
              ),
            ],
          )
          
        ],
      ),
    );
  }
}