import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 500,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 350,
              child: Center(child: Text("title",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink[100]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 350,
              child: Center(child: Text("description",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink[100]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 350,
              child: Center(child: Text("date",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink[100]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100],
                  ),
                ),SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100],
                  ),
                ),SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100],
                  ),
                ),SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100],
                  ),
                ),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
            ElevatedButton(onPressed: () {
              
            }, child: Text("cancel",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 17
            ),)),
            SizedBox(width: 20,),
            ElevatedButton(onPressed: () {
              
            }, child: Text("save",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 17
            ),))]),
          ),
        ],
      ),
    );
  }
}