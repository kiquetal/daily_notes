import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}): super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String? _dropDownText ;
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
                hint: (_dropDownText == null) ? Text('Latest') : Text(_dropDownText!),
               onChanged: (String? e) {
                 if (e == 'Latest') {
                   setState(() {
                     _dropDownText = e;
                   });
                 } else {
                   setState(() {
                     _dropDownText = e;
                   });
                 }
               }
              ))]
          )
        ],
        )
    );
  }
}
