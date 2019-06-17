import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Form'),
        ),
        body: FormLatihan(),
      ),
    );
  }
}

class FormLatihan extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormLatihan> {
  final _formkey = GlobalKey<FormState>();
  bool _validasi = false;
  String nama;
  String nohp;
  String email;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          autovalidate: _validasi,
          child: FormUI(),
        ),
      ),
    );
  }

  Widget FormUI() {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(labelText: 'nama'),
          keyboardType: TextInputType.text,
          validator: validateNama,
          onSaved: (String val) {
            nama = val;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'nohp'),
          keyboardType: TextInputType.phone,
          validator: validateNoHp,
          onSaved: (String val) {
            nohp = val;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'email'),
          keyboardType: TextInputType.emailAddress,
          validator: validateEmail,
          onSaved: (String val) {
            email = val;
          },
        ),
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.green,
            child: Text('submit'),
            onPressed: validateInputan,
          ),
        ),
      ],
    );
  }

  void validateInputan() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('data complete'),
      ));
      Fluttertoast.showToast(
          msg: "berhasil inputdata",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 26.0);
    } else {
      setState(() {
        _validasi = true;
      });
    }
  }

  String validateNama(String value) {
    if (value.length < 5) {
      return 'Nama min 5 karakter';
    } else {
      return null;
    }
  }

  String validateNoHp(String value) {
    if (value.length < 12) {
      return 'No HP min 12 karakter';
    } else {
      return null;
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }
}
