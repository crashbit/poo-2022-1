import 'package:flutter/material.dart';
import 'package:login_demo/HomePage.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login user"),
        ),
        body: Column(
          children: [
            loginBox(),
            passwordBox(),
            controlButtons(context),
          ],
        ));
  }

  Widget loginBox() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextField(
        controller: emailController,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 3.0),
            ),
            fillColor: Colors.white,
            filled: true,
            labelText: "Email",
            hintText: "Introduzca un correo válido"),
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget passwordBox() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 3.0),
            ),
            fillColor: Colors.white,
            filled: true,
            labelText: "Password",
            hintText: "Introduzca su contraseña"),
        style: TextStyle(color: Colors.black),
        obscureText: true,
      ),
    );
  }

  Widget controlButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(color: Colors.blue),
            child: TextButton(
              child: Text(
                "Entrar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                var email = emailController.text;
                print("Usted tecleo: $email");

                Widget okButton = ElevatedButton(
                  child: Text("ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                );

                final snackBar = SnackBar(
                    content: Text("Introduzca un correo"),
                    action: SnackBarAction(
                      label: "Cerrar",
                      onPressed: () {
                        print("SnackBar");
                      },
                    ));

                if (email == "") {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("Introduzca un correo"),
                          title: Text("Error"),
                          actions: [
                            okButton,
                          ],
                        );
                      });
                }

                if (email == "hola@acatlan.unam.mx") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
} //Fin de clase 
