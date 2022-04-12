import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/dash_board_screen.dart';
import 'controllers/controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:track_it_right/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "track-it Right",
        debugShowCheckedModeBanner: false,
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('You have an error! ${snapshot.error.toString()}');
              return Text("Something went wrong...");
            } else if (snapshot.hasData) {
              return MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                    create: (context) => Controller(),
                  ),
                ],
                child: DashBoardScreen(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
