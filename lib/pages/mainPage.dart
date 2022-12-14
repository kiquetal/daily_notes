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
              ),
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: SfDateRangePicker(
                      onSelectionChanged:
                          (DateRangePickerSelectionChangedArgs e) {
                        print(e.value);
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      elevation: 4,
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add New Entry", style: TextStyle(fontSize: 15,
                        color: Colors.blue),),
                        onPressed: () {}),
                    )
                  ),
                )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [ Expanded(child:
                Container(
                  child: Column(
                    children: [
                      Expanded(child: ListView.builder(
                          itemCount:5,
                          itemBuilder: (context, index) {
                      return SizedBox(width: MediaQuery.of(context).size.width*0.4,
                         child: Card(
                           elevation: 0,
                           child:ListTile(
                             title: const Text("Title"),
                             subtitle: const Text("Subtitle"),
                             trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                           )
                         )
                      );
                      }))
                    ],
                  ),
                ))],
              ),
            ),
          )
        ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Add new info',
      child: const Icon(Icons.add),
    )
    );

  }
}
