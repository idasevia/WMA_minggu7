import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter Sevia",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  @override
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter Sevia"),
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
                    hintText: "Contoh:Ida Sevia",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nama Tidak Boleh Kosong";
                  }
                  return null;
                },
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password Tidak Boleh Kosong";
                  }
                  return null;
                },
              ),
            ),
            CheckboxListTile(
              title: Text("Form Dasar FLutter"),
              subtitle: Text("Dart, Widget, http"),
              value: nilaiCheckBox,
              activeColor: Colors.deepPurple,
              onChanged: (value) {
                setState(() {
                  nilaiCheckBox = value!;
                });
              },
            ),
            SwitchListTile(
              title: Text("Backend Programming"),
              subtitle: Text("Dart, Nodejs, PHP, Java, dll"),
              value: nilaiSwitch,
              activeTrackColor: Colors.pink[100],
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  nilaiSwitch = value;
                });
              },
            ),
            Slider(
              value: nilaiSlider,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  nilaiSlider = value;
                });
              },
            ),
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
