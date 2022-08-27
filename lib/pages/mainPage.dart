import 'package:flutter/material.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 4,
        toolbarHeight: 100,
        title: Row(
            children:  [ Text("Diary",
              style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400,
              ),
            ),Text("Book",style: TextStyle(
              fontSize: 39,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade400,
            )
            )]
        ),
        actions: [
          Row(
            children: [
              Padding(
              padding: const EdgeInsets.only(right: 10),
              child:DropdownButton<String>(
              items: <String>['Latest','Earliest'].map(
                (String e)  {
                   return DropdownMenuItem<String>(
                   value: e,
                   child: Text(e));
              }).toList(),
                hint: const Text('Select Something'),
               onChanged: null,)
              )],
          )
        ],
        )
    );
  }
}
