import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
   MyApp({Key? key, required this.themeColor, required this.title})
      : super(key: key);
  final Color themeColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: themeColor,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              if(title == "Production Mode")
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "images/prod_image.jpeg",
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
