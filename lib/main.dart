import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: DefaultTabController(length: 2, child: DashboardPage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              const Text('Untitled UI',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

              ),
              SizedBox(height: 15),
              
              const Text('Create an account',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),

              ),
              SizedBox(height: 15),
              Text('Lets get started with your 30 day trial.'),
              //name
              SizedBox(height: 15),
              TextField( 
                  decoration: InputDecoration( 
                      hintText: "Name", //hint text
                      )
                ),
              // Text("Email"),
              SizedBox(height: 10),
              TextField( 
                  decoration: InputDecoration( 
                      hintText: "Email", //hint text
                      )
                ),
              SizedBox(height: 10),
              
              TextField( 
                  decoration: InputDecoration( 
                      hintText: "Password", //hint text
                      )
                ),
              
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    debugPrint("Sign in button pressed");
                    //Navigator.push(context, route);
                    },
              
                  child: Text("Create account")),
              
              SizedBox(height: 15),

              OutlinedButton.icon(
                onPressed: () {

                  
                },
                icon: FaIcon(FontAwesomeIcons.google), 
                       label: Text("Sign in with google"),
                ),
              SizedBox(height: 15),
              
                OutlinedButton.icon(
                onPressed: () {

                  
                },

                icon: FaIcon(FontAwesomeIcons.twitter), 
       
                label: Text("Sign in with  twitter"),
                ),


              SizedBox(height: 20),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(color: Colors.black),
                              
                      children: [
                        TextSpan(
                            text: "Log in",
                            style: TextStyle(color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('hello');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("I am ok"),
                                  ),
                                );
                              }),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}