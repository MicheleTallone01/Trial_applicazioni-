/* 


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
        backgroundColor:    Color.fromARGB(255, 37, 89, 31), // altrimetni light green // const Color.fromARGB(255, 119, 152, 113) originale di partenza 
        elevation: 10,
        shadowColor: Colors.black, 
        actions:[
          Icon(Icons.account_circle_sharp),
          ],
        title: Text('Astemix & Drugbelix', style: TextStyle(fontWeight: FontWeight.bold )),
        centerTitle: true,
      ),




class CounterCircle extends StatefulWidget {
  @override
  _CounterCircleState createState() => _CounterCircleState();
}

class _CounterCircleState extends State<CounterCircle> {
  int counter = 0;

  void incrementa() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatore nel cerchio"),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            '$counter',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementa,
        child: Icon(Icons.add),
      ),
    );
  }
}
*/


 