import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/config.dart';
import 'package:flutter_application_1/model/login_result.dart';
import 'home.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "N/A";
    String accountEmail = "N/A";
    String accountUrl = "https://scontent.furt1-1.fna.fbcdn.net/v/t39.30808-6/356672238_983065786073338_8487576990006188383_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=VF5RxjPY820AX8hie72&_nc_ht=scontent.furt1-1.fna&oh=00_AfCQpYWO6v4yeEXlbdZptlViUkBPMClmcxzgjrchm6GMjA&oe=64F90403";
    Users user = Configure.login;
    print(user.toJson().toString());
    if (user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName), 
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            title: Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
        ],
      ),
    );
  }
}
class Login extends StatefulWidget {
  static const routeName = "/login";

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User CRUD',
      initialRoute: '/',
      routes: {
        '/':(constext) => const Home(),
        '/login':(context) => const Login(),

      },
    );
  }
}