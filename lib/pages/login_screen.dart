import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/menu_tile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey,
          elevation: 4,
          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.network(
                'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/new-ui-logo.png'),
          ),
        ),
      ),
      endDrawer: const Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challenge'),
              MenuTile(title: 'Event'),
              MenuTile(title: 'Job'),
              MenuTile(title: 'Developer'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                  'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/certificate_logo.png'),
              Text(
                'Masuk',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(),
                    isDense: true),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                    hintText: 'Password',
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                    isDense: true),
              ),
              SizedBox(height: 8.0),
              Text(
                'Lupa Password',
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(decoration: TextDecoration.underline),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: Colors.blueGrey.shade800),
                onPressed: () {},
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(
                      color: Colors.black,
                    ),
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        color: Colors.white,
                        child: Text(
                          'atau',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              OutlinedButton.icon(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black)),
                icon: const FaIcon(FontAwesomeIcons.google, color: Colors.grey),
                label: Text(
                  'Masuk dengan Google',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                label: Text(
                  'Masuk dengan Facebook',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Belum punya akun? Ayo ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                      text: 'daftar',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan melakukan login, Anda setuju dengan ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                      text: 'syarat & ketentuan Dicoding',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
