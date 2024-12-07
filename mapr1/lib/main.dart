import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
  );


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: ' My E App ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

            title: Text("E Week 2k24", style: TextStyle(color:Colors.amberAccent),),
            leading: IconButton(
              icon: Icon(Icons.menu , color: Colors.white,),
              onPressed: () {},
        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search , color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert , color: Colors.white),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Image.asset('assets/ghi.jpg',
          fit: BoxFit.cover,),


        bottom: TabBar(
         tabs: [
              //Tab(icon: Icon(Icons.accessibility_sharp),
              Tab(icon: Text('Current Score' , style: TextStyle(color: Colors.white),)
              ),
              Tab(icon: Icon(Icons.access_time_outlined , color: Colors.white),
              ),
              Tab(icon: Icon(Icons.add_chart , color: Colors.white),
              ),
            ],
          ),
          elevation: 2.0,
        ),
       body: TabBarView(
         children: [

          // Icon(Icons.directions_car),
           Icon(Icons.accessibility_sharp),
           tab1(),
           //Icon(Icons.directions_transit),
           Icon(Icons.directions_bike),
         ],
       ),
      ),
    );
  }
}
Widget tab1(){
  return Container(
    child: Center(
    child: Text('My Text'),
  )
  );

}
