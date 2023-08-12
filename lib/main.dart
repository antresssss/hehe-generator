import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hehegenerator',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          background: Colors.black,
      primary: Colors.white54,
      secondary: Colors.white12,
      ),

        useMaterial3: true,
      ),
      home: SafeArea(child: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String he='hehe';
  void addHe(){
    setState(() {
      he+='he';
    });
  }
 void resetHe(){
   setState(() {
     he='hehe';
   });
 }
 void removeHe(){
   setState(() {
     String lesshe=he.replaceFirst('he','');
     he=lesshe;

   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Column(
              children: [
             SizedBox(height:135,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width:double.infinity,
                  child:Image.asset('assets/hehecat.jpg')
                ),
              ),
              Container(
                width:double.infinity,
                color: Colors.black,
                child:Center(child: bigCard(he: he)),)]
            ),
            const SizedBox(height:27,),
            SizedBox(
              height:30,
              width: 117,
              child: ElevatedButton(
                  onPressed: (){
                addHe();
              },
                  child:const Center(child:Text('he',style:TextStyle(color: Color(0xB8D0D2FF)),))),
            ),
            const SizedBox(height:5,),
            SizedBox(
              height:30,
              width: 117,
              child: ElevatedButton(onPressed: (){
                resetHe();
              },
                  child:const Center(child:Text('reset'))),

            ),
            const SizedBox(height: 5,),
            SizedBox(
              height:30,
              width: 117,
              child: ElevatedButton(onPressed: (){
                if(he!='hehe'){
                removeHe();
                }
              },
                  child:const Center(child:Text('remove he'))),

            ),

          ],
        ),
      ),
    );
  }
}
//tbh with the color scheme turned dark we don't really need the card widget or the
//container that holds it ,but for learning purposes we will keep that there
//this could be a lot shorter , but well.
//its useful if you want to change the colorscheme to light
class bigCard extends StatelessWidget {
  const bigCard({
    super.key,
    required this.he,
  });

  final String he;

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
      child: Text(he,style: const TextStyle(fontWeight: FontWeight.bold,fontSize:34,color:Colors.white),),
      ),
    );
  }
}
