import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class KickstarterPage extends StatefulWidget {
  const KickstarterPage({Key? key}) : super(key: key);

  @override
  _KickstarterPageState createState() => _KickstarterPageState();
}

class _KickstarterPageState extends State<KickstarterPage> with RegisterAuth {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  //color: Color(0xfffcfcfb),
                color: Colors.green[200],
                height: 60.0,
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "Have an account? ",
                    children: [
                      TextSpan(
                          text: "Log in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ))
                    ],
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Divider(height: 1.0),
              Form(
                key: formKey,
                child: SizedBox(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: Column(  
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Sign up",
                                  style: Theme.of(context).textTheme.headline4, textAlign: TextAlign.right ),
                              const SizedBox(height: 25.0),
                              TextFormField(
                                decoration: buildInputDecoration("Full Name"),
                                validator: InputValidator.emptyCheck(
                                  "Full name can't be empty",
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              TextFormField(
                                decoration:  buildInputDecoration("Email"),
                                validator: InputValidator.email,
                              ),
                              const SizedBox(height: 8.0),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: TextFormField(
                                  decoration:
                                      buildInputDecoration("Re-enter email"),
                                  validator: InputValidator.email,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: TextFormField(
                                  obscureText: visiblePassword,
                                  decoration:
                                      buildInputDecoration("Password", true),
                                  validator: InputValidator.password,
                                  onChanged: (t) {
                                    InputValidator.passwordText = t;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: TextFormField(
                                  obscureText: visiblePassword,
                                  onChanged: (t) {
                                    InputValidator.confirmPasswordText = t;
                                  },
                                  decoration: buildInputDecoration(
                                      "Re-enter password", true),
                                  validator: InputValidator.password,
                                ),
                              ),
                            ],
                          ),
                      ),
                      SizedBox( 
                        child: Padding(
                          padding: const EdgeInsets.only(right: 26.0),
                          child: CheckboxListTile(
                            onChanged: (a) {
                              setState(() {
                                rememberMe = !rememberMe;
                              });
                            },
                            value: rememberMe,
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text(
                              "Receive our weekly newsletter and other occasional updates",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: MaterialButton(
                            height: 40.0,
                            //width: 20.0,
                            minWidth: MediaQuery.of(context).size.width,
                            color: Color(0xff449b76),
                            //color: Colors.green[100],
                            onPressed: () {
                              register();
                            },
                            child: isLoading
                                ? Container(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.0,
                                    ),
                                    width: 20.0,
                                    height: 20.0)
                                : Text("Crear cuenta",
                                    style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(hintText, [eyeVisible = false]) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
    );

    return InputDecoration(
      suffixIcon: eyeVisible
          ? IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: !visiblePassword ? Colors.grey : Colors.red,
              ),
              onPressed: () {
                setState(() {
                  visiblePassword = !visiblePassword;
                });
              },
            )
          : const SizedBox.shrink(),
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
    );
  }

  @override
  Future register() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      setState(() {
        isLoading = true;
      });
      if (rememberMe) {
        print("saved");
      }
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        isLoading = false;
      });
    }
    return null;
  }
}

abstract class RegisterAuth {
  GlobalKey<FormState> formKey = GlobalKey();
  bool rememberMe = false;
  bool visiblePassword = false;
  bool isLoading = false;
  Future register();
}

class InputValidator {
  static String? confirmPasswordText;
  static String? passwordText;
  static String? emailText;
  static String? name;

  static emptyCheck(String msg) {
    return (t) {
      if (t.isEmpty || t == null) return msg;
      return null;
    };
  }

  static String? email(String? t) {
    if (t!.isEmpty || t == null) return "Email can't be empty";
    return null;
  }

  static String? password(String? t) {
    if (t!.isEmpty) return "Password can't be empty";
    if (confirmPasswordText != passwordText) return "Password not matched";
    return null;
  }
}