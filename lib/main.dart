 import 'package:chat_app/pages/cubit/auth_cubit/auth_cubit.dart';
import 'package:chat_app/pages/cubit/bloc_observe/bloc_observer.dart';
import 'package:chat_app/pages/cubit/chat_cubit/chat_cubit.dart';
import 'package:chat_app/pages/screens/chat_page.dart';
import 'package:chat_app/pages/screens/login_page.dart';
import 'package:chat_app/pages/screens/resgister_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned((){
    runApp(ScholarChat());
  },
  blocObserver: SimpleBlocObserver(),
  );
 }

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (
          create: (BuildContext context) => AuthCubit(),
        ),
        BlocProvider (
          create: (BuildContext context) => ChatCubit(),
        ),
      ],
      child: MaterialApp(
        routes: {
         LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id : (context) => ChatPage()
        },
        initialRoute: LoginPage.id,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
