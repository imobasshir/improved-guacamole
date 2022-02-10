import 'package:flutter/material.dart';
import 'models.dart';

class SaveData extends StatefulWidget {
  const SaveData({Key? key}) : super(key: key);

  @override
  _SaveDataState createState() => _SaveDataState();
}

class _SaveDataState extends State<SaveData> {
  final _usernameController = TextEditingController();
  Gender _selectedGender = Gender.MALE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Data'),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: TextField(
              decoration: InputDecoration(
                label: Text('Username'),
                hintText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          RadioListTile(
            title: const Text('Male'),
            value: Gender.MALE,
            groupValue: _selectedGender,
            onChanged: (newValue) => setState(() => _selectedGender = newValue),
          ),
          RadioListTile(
            title: const Text('Female'),
            value: Gender.FEMALE,
            groupValue: _selectedGender,
            onChanged: (newValue) => setState(() => _selectedGender = newValue),
          ),
          RadioListTile(
            title: const Text('Others'),
            value: Gender.OTHERS,
            groupValue: _selectedGender,
            onChanged: (newValue) {
              setState(() {
                _selectedGender = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
