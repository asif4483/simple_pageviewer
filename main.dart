import 'package:flutter/material.dart';
import 'package:simple_pageviewer/simple_pageviewer.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  var pagecnt = 0;

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           setState(() {
             pagecnt = pagecnt +1;
           });
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
        appBar: AppBar(
          title: const Text('Simple Page-Viewer'),
        ),
        body: SimplePageviewer(
          swipeenable: false,
            currentpage: pagecnt,
            onPageChanged: (page){
            setState(() {
              pagecnt  = page;
              //print("this is - swipe - ${pagecnt}");
            });
            },
            pages: <Widget>[
              Container(
                color: Colors.white,
                child: Center(
                  child: Text('Page 1',style: TextStyle(color: Colors.black,fontSize: 27),),
                ),
              ),
              Container(
                color: Colors.black,
                child: Center(
                  child: Text('Page 2',style: TextStyle(color: Colors.white,fontSize: 27),),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Page 3',style: TextStyle(color: Colors.white,fontSize: 27),),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Page 4',style: TextStyle(color: Colors.white,fontSize: 27),),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Page 5',style: TextStyle(color: Colors.white,fontSize: 27),),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Page 6',style: TextStyle(color: Colors.white,fontSize: 27),),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
