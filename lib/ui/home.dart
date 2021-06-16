import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbinding/controller/mycontroller.dart';
import 'package:getxbinding/ui/newscreen.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(()=>Text(
              '${Get.find<MyController>().count}',
              style: Theme.of(context).textTheme.headline4,
            )),
            Padding(padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){
                  Get.to(()=>NewScreen());
                },
                child: Text('Go Forward'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.find<MyController>().increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}