import 'package:flutter/material.dart';
import 'screens.dart';
import 'routes.dart';
import 'checkbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //Cac Routes chuyen man hinh
        onGenerateRoute: (settings) {
          if (settings.name == Routes.screen1)
            return MaterialPageRoute(settings:settings,builder: (context) => MyScreen_1());
          else if (settings.name == Routes.screen2)
            return MaterialPageRoute(settings:settings,builder: (context) => MyScreen_2());
          else
            return MaterialPageRoute(settings:settings,builder: (context) => MyScreen_3());
        },
        //Het Routes
        home: MyHomepage());
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageStage();
  }
}

class MyHomePageStage extends State<MyHomepage> {
  bool? valuefirst = false;
  bool? valuesecond = false;
  bool? valuethird = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    CheckBoxValues checkBoxValues = CheckBoxValues(valuefirst,valuesecond,valuethird);

    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(color: Colors.yellow)),
          ListTile(
            title: Text('Man hinh thu 1'),
            onTap: () {
              Navigator.pushNamed(context, '/screen1',arguments: checkBoxValues);
            },
          ),
          ListTile(
            title: Text('Man hinh thu 2'),
            onTap: () {
              Navigator.pushNamed(context, '/screen2',arguments: checkBoxValues);
            },
          ),
          ListTile(
            title: Text('Man hinh thu 3'),
            onTap: () {
              Navigator.pushNamed(context, '/screen3',arguments: checkBoxValues);
            },
          ),
        ],
      )),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Drawer menu test'),
      ),
      body: Container(
        padding: EdgeInsets.all(22.0),
        child: Column(
           children: [
            SizedBox(width: 10,),
             Text('Checkbox with Header and Subtitle',style: TextStyle(fontSize: 20.0), ),
             CheckboxListTile(
              secondary: Icon(Icons.alarm),
              title: Text('Bao thuc luc 4h30 AM moi ngay'),
              subtitle: Text('Bao thuc sau 12h gio'),
              value: valuefirst,
              onChanged: (value){
                setState(() {
                  valuefirst = value;
                });
              },

            ),
            CheckboxListTile(
               secondary: Icon(Icons.alarm),
               title: Text('Bao thuc luc 5h30 AM moi ngay'),
               subtitle: Text('Bao thuc sau 12h gio'),
               value: valuesecond,
               onChanged: (value){
                 setState(() {
                   valuesecond = value;
                 });
               },
             ),
             CheckboxListTile(
               secondary: Icon(Icons.alarm),
               title: Text('Bao thuc luc 6h30 AM moi ngay'),
               subtitle: Text('Bao thuc sau 12h gio'),
               value: valuethird,
               onChanged: (value){
                 setState(() {
                   valuethird = value;
                 });
               },
             ),
             SizedBox(width: 10,),
             Text('Ket qua chon: ${checkBoxValues.value1} ${checkBoxValues.value2} ${checkBoxValues.value3} '),
          ],
        ),
      ),
    );
  }
}

