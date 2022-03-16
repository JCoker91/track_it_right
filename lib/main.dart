import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/dash_board_screen.dart';
import 'controllers/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "track-it Right",
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Controller(),
          ),
        ],
        child: DashBoardScreen(),
      ),
    );
  }
}
