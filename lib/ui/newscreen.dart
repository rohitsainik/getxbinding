import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbinding/controller/homecontroller.dart';
import 'package:getxbinding/controller/allcontrollerbinding.dart';


class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

        title: Text('New Screen'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(()=>Text(
              '${Get.find<HomeController>().count}',
              style: Theme.of(context).textTheme.headline4,
            )),
            Padding(padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: Text('Go Back'),
            ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.find<HomeController>().increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
