import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 240, 207),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children:[ Card(elevation: 10, child:Text('da decidere'),),]
        ),
      ),
      appBar: AppBar(
        // const Color.fromARGB(255, 255, 240, 207)
        // const Color.fromARGB(255, 253, 184, 120)
        // verde salvia  Color.fromARGB(255, 156, 179, 153),
        backgroundColor:  Color.fromARGB(255, 37, 89, 31), // altrimetni light green // const Color.fromARGB(255, 119, 152, 113) originale di partenza 
        elevation: 10,
        shadowColor: Colors.black, 
        actions:[
          Icon(Icons.account_circle_sharp),
          ],
        title: Text('Astemix & Drugbelix', style: TextStyle(fontWeight: FontWeight.bold )),
        centerTitle: true,
      ),
      body: Container(
        //  const Color.fromARGB(255, 119, 152, 113) VERDOLINO
        color: const Color.fromARGB(255, 255, 255, 255), 
        // Figlio del container 
        child:
        // Organizzo una colonna portante dentro il container
        Column( mainAxisAlignment: MainAxisAlignment.center,
          // All'interno della colonna posso gestire più figli 
          children: [
              
              // Organizziamo per righe 
              // Prima riga - Testo benvenuto
              Row(mainAxisAlignment: MainAxisAlignment.center, // mi pongo al centro della riga 
                 crossAxisAlignment: CrossAxisAlignment.start, // Dovrebbe mettemrinin alto nella colonna portante

                children: [ // Elementi dentro la righa 
                  Container(
                    alignment: Alignment(0.0, -1.0), // per centrare oggetti all'interno del container 
                   constraints: BoxConstraints(maxWidth: 300,maxHeight: 100), // fissa dimensioni del container 
                   color :  const Color.fromARGB(255, 255, 255, 255) , // giallino  const Color.fromARGB(255, 255, 240, 207) , 
                  
                    padding: EdgeInsets.all(10.0),
                    child: Text('WELCOME!',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 0, 0, 0)),),
                            ) 
                          ] // Children prima row
                  ),

              // Seconda riga- card user Name 
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children:[
                    SizedBox( height:50, width:300,
                       child: Card(elevation: 3, shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), color :  const Color.fromARGB(255, 149, 188, 255),
                          child: Column( mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('Inserire username') ] ),
                                    ),),
                  ], ),
              // Terza riga- card user ID
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children:[
                    SizedBox( height:50, width:300,
                       child: Card(elevation: 3, shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), color :  Color.fromARGB(255, 198, 216, 195),
                          child: Column( mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('Inserire codice ID ') ] ),
                                    ),),
                  ], ),


                ],// Children della colonna protante 

              )
        ),

        
  
    );
  }
}
