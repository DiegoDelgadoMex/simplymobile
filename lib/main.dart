import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  var vmlisturl = Uri.parse('https://<yourdomain>/vmlist.php');
  var backuplisturl = Uri.parse('https://<yourdomain>/backuplist.php');
  var backupurl = Uri.parse('https://<yourdomain>/dobackup.php');
  var replicaurl = Uri.parse('https://<yourdomain>/doreplica.php');
  var recoverlocalurl = Uri.parse('https://<yourdomain>/recoverlocal.php');
  var recoverdrpurl = Uri.parse('https://<yourdomain>/recoverdrp.php');

  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage("images/hpe_logo.png")
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Container(
                child: Text(
                    'Simply a Mobile Client',
                    style: TextStyle(
                      fontFamily: 'HPEbold',
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 13, 82, 101),
                    ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 50, 218, 200), // background
                      onPrimary: Color.fromARGB(233, 13, 82, 101), // foreground
                      fixedSize: Size(300,20),
                    ),
                    onPressed: ()  async { var response = await http.post( vmlisturl ); print('${response.body}');},
                    child: Text('List Virtual Machines (TODO)',
                    style: TextStyle(
                      fontFamily: 'HPEmedium',
                    ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 50, 218, 200), // background
                      onPrimary: Color.fromARGB(233, 13, 82, 101), // foreground
                      fixedSize: Size(300,20),
                    ),
                    onPressed: () { },
                    child: Text('List local backups (TODO)',
                      style: TextStyle(
                        fontFamily: 'HPEmedium',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 50, 218, 200), // background
                      onPrimary: Color.fromARGB(233, 13, 82, 101), // foreground
                      fixedSize: Size(300,20),// foreground
                    ),
                    onPressed: () { },
                    child: Text('List remote backups (TODO)',
                      style: TextStyle(
                        fontFamily: 'HPEmedium',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 13, 82, 101), // background
                      onPrimary: Colors.white, // foreground
                      fixedSize: Size(300,20),
                    ),
                    onPressed: () { http.post(backupurl);},
                    child: Text('Backup Virtual Machines Locally',
                      style: TextStyle(
                        fontFamily: 'HPEmedium',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 13, 82, 101), // background
                      onPrimary: Colors.white, // foreground
                      fixedSize: Size(300,20),
                    ),
                    onPressed: () { http.post(recoverlocalurl);},
                    child: Text('Recover Virtual Machines Locally',
                      style: TextStyle(
                        fontFamily: 'HPEmedium',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 13, 82, 101), // background
                      onPrimary: Colors.white, // foreground
                      fixedSize: Size(300,20),
                    ),
                    onPressed: () { http.post(replicaurl); },
                    child: Text('Backup Virtual Machines to DRP',
                      style: TextStyle(
                        fontFamily: 'HPEmedium',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(233, 13, 82, 101), // background
                      onPrimary: Colors.white, // foreground
                      fixedSize: Size(300,20),
                    ),
                    onPressed: () { http.post(recoverdrpurl);},
                    child: Text('Start Recovery in DRP',
                      style: TextStyle(
                        fontFamily: 'HPEmedium',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  )
  );
}
