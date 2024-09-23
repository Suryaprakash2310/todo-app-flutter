import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int numb=1;
  List<Widget>appoint=[];
  @override
  Widget build(BuildContext context) {
    //var colors;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Todo list'),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) {
              return Column(
                    children: [
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                    appoint.add(const TextField());
                  });}, child: const Text('addtask')),
                ],
              ), Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyPage2()));
                  }, child:Text('imp notes')),
                ],
              ),
              const SizedBox(height: 25.0),
              Column(
                  children:appoint,
                  )
              ],
                  );
            }
          ),
        ));
  }
}
class MyPage2 extends StatefulWidget {
  const MyPage2({super.key});

  @override
  State<MyPage2> createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {
  @override
  Widget build(BuildContext context) {
    //var colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(icon: Icon(Icons.sailing_outlined),
        onPressed: (){
          Navigator.pop(context);
        },),
        title:  Text('goals'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text('Never let the future distrub you.\nyou will meet it.\nif you have to,\nwith the same weapons of reason \n which today arm you against the present.',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontFamily: 'Roboto',  decoration: TextDecoration.underline, )
        ),
            ),
      ));
  }
}




