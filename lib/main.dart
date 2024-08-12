import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'call_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: AnimatedSplashScreen(
            splash: Image.network(
                height: 550,
                width: 250,
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj5o-YWuLCjSlKXI8i7Nw5rnKWKsxVwoRQCg&s'),
            duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white,
            nextScreen: const S2()));
  }
}

class S2 extends StatefulWidget {
  const S2({super.key});

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  String username = '';
  String roomid = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70,),
            const Center(
                child: Text(
              'Welcome!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            const Center(
                child: Text(
              'Connect and talk...',
              style: TextStyle(
                fontSize: 20,
              ),
            )),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                height: 60,
                width: 250,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person,color: Colors.green,),
                      labelText: 'user name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 60,
                width: 250,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      roomid = value;
                    });
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.numbers_rounded,color: Colors.green,),
                      labelText: 'User id',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CallPage(
                                  callID: roomid,
                                  userName: username,
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      overlayColor: Colors.white,
                      backgroundColor: Colors.green),
                  child: const Text("Join meeting")),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
                'assets/image/call_chat.jpg')
          ],
        ),
      ),
    );
  }
}

// app id 2069136757
// appsign df0967e68bd3c490c81ec0aa63a7b53e8f4095cd18f30698b8173088024c8740
