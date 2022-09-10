import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? _dropDownText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 4,
        toolbarHeight: 100,
        title: Row(children: [
          Text(
            "Diary",
            style: TextStyle(
              fontSize: 39,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade400,
            ),
          ),
          Text("Book",
              style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade400,
              ))
        ]),
        actions: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                      items: <String>['Latest', 'Earliest'].map((String e) {
                        return DropdownMenuItem<String>(
                            value: e, child: Text(e));
                      }).toList(),
                      hint: (_dropDownText == null)
                          ? Text('Select')
                          : Text(_dropDownText!),
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
                      })),
              Container(
                  child: Row(children: [
                Column(
                  children: const [
                    Expanded(
                        child: InkWell(
                            child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage("https://picsum.photos/536/354"),
                        backgroundColor: Colors.transparent,
                      ),
                    ))),
                    Text(
                      "James",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.logout_outlined, color: Colors.red))
              ]))
            ],
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border(
                  right: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                )
              ,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: SfDateRangePicker(
                      onSelectionChanged: (DateRangePickerSelectionChangedArgs e) {
                        print(e.value);
                      },
                    ),
                  )
                ],
              ),
            ),

          ),
          Expanded(flex: 3,child:
                  Container(
                         color: Colors.blueGrey,
                          child: Column(),

                          ),

               )
        ],
      ),
    );
  }
}
