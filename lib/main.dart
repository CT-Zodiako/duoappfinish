import 'package:duo/screens/screens.dart';
import 'package:duo/screens/sobre_nosotros_screen.dart';
import 'package:duo/services/services.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => GameService()),
      ChangeNotifierProvider(create: (_) => UsuarioService()),
      ChangeNotifierProvider(create: (_) => AuthService()),
    ], child: MyApp());
  }
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  static const tittle = 'Native Splash Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Duo App',
      initialRoute: 'checkauth',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
        'conect': (_) => ConectScreen(),
        'new_account': (_) => NewAccountScreen(),
        'rec_pass': (_) => RecuperarPassScreen(),
        'duo': (_) => DouScreen(),
        'perfil': (_) => PerfilScreen(),
        'senduo': (_) => SendDuoScreen(),
        'ajustes': (_) => AjustesScreen(),
        'contactanos': (_) => ContactanosScreen(),
        'nosotros': (_) => SobreNosotrosScreen(),
        'editperfil': (_) => EditPerfilScreen(),
        'mygame': (_) => MyGamesScreen(),
        'formaddgame': (_) => FormAddGame(),
        'checkauth': (_) => CheckAuthScreen(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
    );
  }
}
