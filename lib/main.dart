import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'India',
                style: TextStyle(
                  fontSize: 90.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
          Center(
            child: Image(image: AssetImage('images/flag.png')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));
        },
        icon: const Icon(Icons.login),
        label: const Text(
          'Click to Enter',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade200,
        title: Text(
          'India',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StateCapital()));
                    },
                    child: Text(
                      '\nStates \n    & \nCapitals\n',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => UtCapital()));
                    },
                    child: Text(
                      'Union Territories\n             & \n          Capitals',
                      style: TextStyle(
                          fontSize: 33.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StateCapital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'States and Capitals',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(
                label: Text(
              '',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            )),
            DataColumn(
                label: Text(
              'State',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            )),
            DataColumn(
                label: Text(
              'Capital',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ))
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Andra Pradesh')),
              DataCell(Text('Amaravati')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Arunachal Pradesh')),
              DataCell(Text('Itanagar')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('Assam')),
              DataCell(Text('Dispur')),
            ]),
            DataRow(cells: [
              DataCell(Text('4')),
              DataCell(Text('Bihar')),
              DataCell(Text('Patna')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('Chattisgarh')),
              DataCell(Text('Raipur')),
            ]),
            DataRow(cells: [
              DataCell(Text('6')),
              DataCell(Text('Goa')),
              DataCell(Text('Pananji')),
            ]),
            DataRow(cells: [
              DataCell(Text('7')),
              DataCell(Text('Gujarat')),
              DataCell(Text('Gandinagar')),
            ]),
            DataRow(cells: [
              DataCell(Text('8')),
              DataCell(Text('Haryana')),
              DataCell(Text('Chandigarh')),
            ]),
            DataRow(cells: [
              DataCell(Text('9')),
              DataCell(Text('Himachal Pradesh')),
              DataCell(Text('Shimla')),
            ]),
            DataRow(cells: [
              DataCell(Text('10')),
              DataCell(Text('Jharkhand')),
              DataCell(Text('Ranchi')),
            ]),
            DataRow(cells: [
              DataCell(Text('11')),
              DataCell(Text('Karnataka')),
              DataCell(Text('Bangalore')),
            ]),
            DataRow(cells: [
              DataCell(Text('12')),
              DataCell(Text('Kerala')),
              DataCell(Text('Thiruvananthapuram')),
            ]),
            DataRow(cells: [
              DataCell(Text('13')),
              DataCell(Text('Mandhya Pradesh')),
              DataCell(Text('Bhopal')),
            ]),
            DataRow(cells: [
              DataCell(Text('14')),
              DataCell(Text('Maharastra')),
              DataCell(Text('Mumbai')),
            ]),
            DataRow(cells: [
              DataCell(Text('15')),
              DataCell(Text('Manipur')),
              DataCell(Text('Imphal')),
            ]),
            DataRow(cells: [
              DataCell(Text('16')),
              DataCell(Text('Meghalaya')),
              DataCell(Text('Shillong')),
            ]),
            DataRow(cells: [
              DataCell(Text('17')),
              DataCell(Text('Mizoram')),
              DataCell(Text('Aizawl')),
            ]),
            DataRow(cells: [
              DataCell(Text('18')),
              DataCell(Text('Nagaland')),
              DataCell(Text('Kohima')),
            ]),
            DataRow(cells: [
              DataCell(Text('19')),
              DataCell(Text('Odisha')),
              DataCell(Text('Bhubaneshwar')),
            ]),
            DataRow(cells: [
              DataCell(Text('20')),
              DataCell(Text('Punjab')),
              DataCell(Text('Chandigarh')),
            ]),
            DataRow(cells: [
              DataCell(Text('21')),
              DataCell(Text('Rajastan')),
              DataCell(Text('Jaipur')),
            ]),
            DataRow(cells: [
              DataCell(Text('22')),
              DataCell(Text('Sikkim')),
              DataCell(Text('Gangtok')),
            ]),
            DataRow(cells: [
              DataCell(Text('23')),
              DataCell(Text('Tamilnadu')),
              DataCell(Text('Chennai')),
            ]),
            DataRow(cells: [
              DataCell(Text('24')),
              DataCell(Text('Telangana')),
              DataCell(Text('Hyderabad')),
            ]),
            DataRow(cells: [
              DataCell(Text('25')),
              DataCell(Text('Tripura')),
              DataCell(Text('Agartala')),
            ]),
            DataRow(cells: [
              DataCell(Text('26')),
              DataCell(Text('Uttarakhand')),
              DataCell(Text('Dehradun')),
            ]),
            DataRow(cells: [
              DataCell(Text('27')),
              DataCell(Text('Uttar Pradesh')),
              DataCell(Text('Lucknow')),
            ]),
            DataRow(cells: [
              DataCell(Text('28')),
              DataCell(Text('West Bengal')),
              DataCell(Text('Kolkata')),
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent.shade200,
        child: Icon(Icons.navigate_before, size: 50.0),
        onPressed: () {
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );
  }
}

class UtCapital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Union Territories and Capitals',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(label: Text('')),
            DataColumn(
                label: Flexible(
              child: Text(
                'Union Territory',
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            )),
            DataColumn(
                label: Text(
              'Capital',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ))
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text(
                'Andaman and Nicobar Islands',
                softWrap: true,
              )),
              DataCell(Text('Port Blair')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Chandigarh')),
              DataCell(Text('Chandigarh')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text(
                'Dadra and Nagar Haveli and Daman & Diu',
                softWrap: true,
              )),
              DataCell(Text('Diu')),
            ]),
            DataRow(cells: [
              DataCell(Text('4')),
              DataCell(Text('NCT of Delhi')),
              DataCell(Text('Delhi')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('Jammu & Kashmir')),
              DataCell(Text('Srinagar - S\nJammu - W')),
            ]),
            DataRow(cells: [
              DataCell(Text('6')),
              DataCell(Text('Ladakh')),
              DataCell(Text('leh')),
            ]),
            DataRow(cells: [
              DataCell(Text('7')),
              DataCell(Text('Lakshadweep')),
              DataCell(Text('Kavaratti')),
            ]),
            DataRow(cells: [
              DataCell(Text('8')),
              DataCell(Text('Puducherry')),
              DataCell(Text('Puducherry')),
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent.shade200,
        child: Icon(
          Icons.navigate_before,
          size: 50.0,
        ),
        onPressed: () {
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );
  }
}
