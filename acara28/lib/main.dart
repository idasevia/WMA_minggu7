import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Form Register Sevia",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Register Sevia"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: "Contoh: Ida Sevia",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: new InputDecoration(
                  labelText: "Alamat",
                  icon: Icon(Icons.house),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: "Password",
                  icon: Icon(Icons.security),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
            ),
            // TexField(),
            ElevatedButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.blue,
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ]),
        ),
      ),
    );
  }
}
