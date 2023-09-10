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
        theme:ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: true,
        home:HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight:60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // y axis for Column
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // x axis
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                  children: [
                    TextSpan(text: 'Jhon Doe', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'Flutter Batch 4', style: TextStyle(fontSize: 20, color: Colors.green,
                        fontWeight: FontWeight.w600)
                    ),
                  ],
                ),
              ),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
            ],
          ),
        ],
      ),
    );
  }
}
