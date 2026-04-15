import 'dart:math';

import 'package:flutter/material.dart'; 
// flutter è l estensione, alla base c è il material design 

void main() { // starting o entry point 
  runApp(const MyApp());
}

// My App è una classe che estende uno statless widget 
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); // costruttre 

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),// colore primario, tema dell applicazione
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), 
    );
  }
}

class MyHomePage extends StatefulWidget { // home page è un widget 
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
      drawer: Drawer(),// crea nebu ad apertura nella appbar
   
      appBar: AppBar(
       /* leading: Icon(Icons.perm_contact_cal_sharp), 
        leadingWidth: 100 , */
         automaticallyImplyLeading: false , // per impedire che in automatico qualcodsa venga aggiunto alla up bar
         title: Text('Titolo',
                style: TextStyle(
                  color: Colors.blue, 
                  )
                  ),
         centerTitle: true,
         actions: [ // è una lista di widget che possiamo mettere dopo il titolo dell appbar
           /* Icon(Icons.abc),
            Icon(Icons.abc),
            Icon(Icons.abc),*/
            // spesso action usato per inserire icone o bottone 
            IconButton(onPressed:() => print('Ciao'), icon: Icon(Icons.login)),],
            // il print veraa mostrato nell debug console
            foregroundColor: Colors.redAccent, // cambia colore degli oggetti nella appbar
            backgroundColor: Colors.green, // cambia colore dell appBar
            elevation: 20 ,// crea ombreggiatura sotto l appbar
            shadowColor: Colors.orange, // cambia colore all obra 
            toolbarHeight: 100, // cambia dimensioni dell app bar 
            toolbarOpacity : 0.5, 
            titleTextStyle: TextStyle() , 


      ),
      body: Container(
        
        color: const Color.fromARGB(255, 255, 240, 207),
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
                    alignment: Alignment(1, 1), // per centrare oggetti all'interno del container 
                    // constraints: BoxConstraints(maxWidth: 100,maxHeight: 300), // fissa dimensioni del container 
                    color : Colors.black , 
                    padding: EdgeInsets.all(10.0),
                    child: Text('WELECOME!',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.amber),),
                            ) 
                          ] // Children prima row
                  ),

              // Seconda riga- card user Name 
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children:[
                    SizedBox( height:50, width:300,
                       child: Card(elevation: 3, shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column( mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('Inserire username') ] ),
                                    ),),
                  ], ),
              // Terza riga- card user ID
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children:[
                    SizedBox( height:50, width:300,
                       child: Card(elevation: 3, shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column( mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('Inserire codice ID ') ] ),
                                    ),),
                  ], ),


              // BOTTONI ESEMPIO 
              Row( mainAxisAlignment: MainAxisAlignment.center, children: [
                Column( children:[
                         // ipologie di bottoni a disposizione 
                         TextButton(onPressed: (){}, child: Text('Ciao')),
                         // se metti onPressed: null disattivi il bottone 
                         // nel child potresti mettere un qualsiasi widghet
                         ElevatedButton(onPressed: (){}, child: Text('Ciao')),
                         OutlinedButton(onPressed: (){}, child: Text('Ciao')),
                         ]), // ho quadra children del Colummn
                         ],), // ho quadra del children della Row

              // BOTTONI CON ICONE ESEMPIO 
              // Nei bottoni.icon sono richieste un icon e una label
              // La label non è altro che il testo da assegnare al bottone 
              Row( mainAxisAlignment: MainAxisAlignment.center, children: [
                Column( children:[
                         // ipologie di bottoni a disposizione 
                         TextButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.sensor_door_rounded), 
                          label: Text('Ciao') ),
                         // se metti onPressed: null disattivi il bottone 
                         // nel child potresti mettere un qualsiasi widghet
                         ElevatedButton.icon(
                         onPressed: (){},
                          icon: Icon(Icons.screen_lock_landscape_rounded), 
                          label: Text('Ciao'),
                          // la versione di gestione degli stili con ButtonStyle 
                          // permette di gestire il bottone nei suoi diversi stati 
                          // quando lo premo e non ecc
                         /* style:ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            elevation:WidgetStateProperty.all<double>(30)) */ 

                          // versione più semplice e aderente a quello visto fino ad ora 
                          // ad esempio con test è : 
                          style: ElevatedButton.styleFrom(
                            // adesso tutte le cose sono molto più linari 
                            elevation: 20,
                            shadowColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            // ecc, passa con cursore sopra styleForm per vedere altre cose 
                          ),
                          ),

                        
                         
                         ],),
                         ],),





                ],// Children della colonna protante 

              ),
        ),

        
  
    );
  }
}
