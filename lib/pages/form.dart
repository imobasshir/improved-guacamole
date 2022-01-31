import 'package:flutter/material.dart';

class FormView extends StatelessWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage('images/flutter.png'),
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 80.0,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text(
                            'Email',
                            style: TextStyle(color: Colors.indigo),
                          ),
                          hintText: 'Enter Mail Id',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text(
                            'Password',
                            style: TextStyle(color: Colors.indigo),
                          ),
                          hintText: 'Enter Password',
                        ),
                        obscureText: true,
                        obscuringCharacter: '*',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
