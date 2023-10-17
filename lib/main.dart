import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_invest/view/main_screen.dart';
import 'package:hive_invest/view_model/profile_controller.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileController()),
      ],
      child: const MainScreen(),
    ),
  );
}
