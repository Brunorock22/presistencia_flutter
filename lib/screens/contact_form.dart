import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistencia/database/app_database.dart';
import 'package:persistencia/database/dao/contact_dao.dart';
import 'package:persistencia/models/Contact.dart';

class ContactForm extends StatefulWidget {

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ContactDao _dao =  ContactDao();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Full name'),
              style: TextStyle(fontSize: 24.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: TextField(
                controller: _accountController,
                decoration: InputDecoration(labelText: 'Account number'),
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  child: Text('Create'),
                  onPressed: (){
                    final String name = _nameController.text;
                    final int accountNumber = int.tryParse(_accountController.text);
                    final Contact newContact = Contact(0,name,accountNumber);
                    _dao.save(newContact).then((id) =>  Navigator.pop(context,newContact));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
