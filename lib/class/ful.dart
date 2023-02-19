import 'package:flutter/material.dart';
import 'package:cap2/class/convers.dart';

class stateful extends StatefulWidget {
  const stateful({Key? key}) : super(key: key);

  @override
  State<stateful> state() => _state();

  @override
  State<StatefulWidget> createState() => _state();
}

class _state extends State<stateful> {
  int _selectedIndex = 1;
  var _num;
  int item1 = 0;
  int item2 = 0;
  double Metros = 0.0;
  String itemSelesct = "Metros";
  String itemSelesct2 = "Metros";
  String resul = "0";

  @override
  void initState() {
    //initstate
    itemSelesct = "Metros";
    itemSelesct2 = "Metros";
    _num = 0.0;
    item1 = 0;
    item2 = 0;
    //itemSelesct="km";
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    _num.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cap_2"),
      ),
      body: Container(
        color: Color.fromARGB(255, 10, 10, 44),
        child: Center(
          child: Column(
            children: [contenedor()], //widgets
          ),
        ),
      ),
      /*
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 240, 61, 23)),
          BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "Store",
              backgroundColor: Color.fromARGB(255, 218, 205, 31)),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amber[800],
      ),
      */
    );
  }

  Widget texto() {
    return Container(
      width: 180,
      height: 100,
      child: text(),
    );
  }

  Widget info() {
    return Text(_num.toString());
  }

  @override
  Widget text() {
    var stilo = TextStyle(
      color: Colors.white,
      decorationColor: Colors.white,
    );
    return TextField(
      //obscureText: true, //estilo contraseña
      keyboardType: TextInputType.number,
      style: stilo,
      maxLength: 20,
      decoration: InputDecoration(
        
          //   hoverColor: Colors.white,
          // fillColor: Colors.white,
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusColor: Colors.white,
          hintStyle: stilo,
          border: OutlineInputBorder(),
          hintText: "Ingresa tu valor"),
          

      //labelText: ,

      onChanged: (text) {
        var t = double.tryParse(text);
        if (t != null) {
          setState(() {
            _num = t;
           // print(_num);
          });
        } else {
          setState(() {
            _num = 0.0;
          });
        }
      },
    );
  }

  Widget drop(String id, int n) {
    var stilo = TextStyle(color: Colors.white);
    var items = [
      "Metros",
      "kilometros",
      "Centimetros",
      "Milimetros",
      "Micrometros",
      "Nanometros",
      "Millas",
      "Yardas",
      "Pies",
      "Pulgadas",
      "Millas nauticas",
    ];
    return DropdownButton<String>(
        focusColor: Colors.black,
        dropdownColor: Color.fromARGB(255, 8, 95, 5),
        style: TextStyle(
          color: Colors.black,
        ),
        value: id,
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: stilo,
            ),
          );
        }).toList(), //fn items
        onChanged: (String? newValue) {
          setState(() {
            if (n == 1) {
              itemSelesct = newValue!;
              item1 = items.indexWhere((items) => items.contains(itemSelesct));
            } else {
              itemSelesct2 = newValue!;
              item2 = items.indexWhere((items) => items.contains(itemSelesct2));
            }
          });
        });
  }

  Widget contenedor() {
    var box = SizedBox(
      width: 20.0,
      height: 20.0,
    );

    var stilo =
        TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 14, 241, 14));

    return Flexible(
        child: Container(
            child: Column(
      children: [
        Padding(padding: EdgeInsets.all(20)),
        texto(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            box,
            drop(itemSelesct, 1),
            box,
            Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Text(
                "A",
                style: TextStyle(color: Colors.white),
              ),
            ),
            box,
            drop(itemSelesct2, 2)
          ],
        ),
        Padding(
            padding: EdgeInsets.only(top: 70.0),
            child: Text(
              
              ResultadoFinal(item1, item2),
              style: stilo,
            ))
      ],
    )));
  }

String ResultadoFinal(int item , int item2){

String r1=listitem1(item);
return    listitem2(item2 , Metros);

}
  String listitem1(int item) {
    String result = "";

    switch (item) {
      case 0:
        result = _num.toString();
        Metros=_num;
        break;

      case 1:
        Metros = Conversiones.kilometrosToMetros(_num);
        result = Metros.toString();
        break;

      case 2:
        Metros = Conversiones.CentimetroToMetros(_num);
        result = Metros.toString();
        break;

      case 3:
        Metros = Conversiones.MilimetrosToMetros(_num);
        result = Metros.toString();
        break;

      case 4:
        Metros = Conversiones.MicrometroToMetro(_num);
        result = Metros.toString();
        break;
      case 5:
        Metros = Conversiones.NanometroToMetro(_num);
        result = Metros.toString();
        break;

      case 6:
        Metros = Conversiones.MillaToMetro(_num);
        result = Metros.toString();
        break;
      case 7:
        Metros = Conversiones.YardaToMetro(_num);
        result = Metros.toString();
        break;

      case 8:
        Metros = Conversiones.PieToMetro(_num);
        result = Metros.toString();
        break;
      case 9:
      Metros =  Conversiones.PulgadaToMetro(_num);
        result = Metros.toString();
        break;

      case 10:
      Metros = Conversiones.MillanauticaToMetro(_num);
        result = Metros.toString();
        break;

      default:
      Metros =0.0;
        result = _num.toString();
        break;
    }
    print(Metros.toString()  + " Metros");
    return result + " item " + item.toString();
  }

  String listitem2(int item , double _num) {
       var items = [
      "Metros",
      "kilometros",
      "Centimetros",
      "Milimetros",
      "Micrometros",
      "Nanometros",
      "Millas",
      "Yardas",
      "Pies",
      "Pulgadas",
      "Millas nauticas",
    ];

    String result = "";

    switch (item) {
      case 0:
        result = _num.toString();
        break;

      case 1:
        result = Conversiones.MetrosToKilometros(_num).toString();
        break;

      case 2:
        result = Conversiones.MetrosToCentimetro(_num).toString();
        break;

      case 3:
        result = Conversiones.MetrosToMilimetros(_num).toString();
        break;

      case 4:
        result = Conversiones.MetroToMicrometro(_num).toString();
        break;
      case 5:
        result = Conversiones.MetroToNanometro(_num).toString();
        break;

      case 6:
        result = Conversiones.MetroToMilla(_num).toString();
        break;
      case 7:
        result = Conversiones.MetroToYarda(_num).toString();
        break;

      case 8:
        result = Conversiones.MetroToPie(_num).toString();
        break;
      case 9:
        result = Conversiones.MetroToPulgada(_num).toString();
        break;

      case 10:
        result = Conversiones.MetroToMillanautica(_num).toString();
        break;

      default:
        result = _num.toString();
        break;
    }
    return result + " " + items[item];
  }
}
