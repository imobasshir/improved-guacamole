import 'package:flutter/material.dart';
import 'models.dart';

class SaveData extends StatefulWidget {
  const SaveData({Key? key}) : super(key: key);

  @override
  _SaveDataState createState() => _SaveDataState();
}

class _SaveDataState extends State<SaveData> {
  final _usernameController = TextEditingController();
  var _selectedGender = Gender.MALE;
  var _selectedLanguage = Set<ProgrammingLanguage>();
  var _isEmployed = false;
  bool isCheck = false;

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
              onChanged: (Gender? newValue) {
                setState(() {
                  _selectedGender = newValue!;
                });
              }),
          RadioListTile(
              title: const Text('Female'),
              value: Gender.FEMALE,
              groupValue: _selectedGender,
              onChanged: (Gender? newValue) {
                setState(() {
                  _selectedGender = newValue!;
                });
              }),
          RadioListTile(
            title: const Text('Others'),
            value: Gender.OTHERS,
            groupValue: _selectedGender,
            onChanged: (Gender? newValue) {
              setState(() {
                _selectedGender = newValue!;
              });
            },
          ),
          const Divider(),
          CheckboxListTile(
            title: const Text('Java'),
            value: _selectedLanguage.contains(ProgrammingLanguage.JAVA),
            onChanged: (_) {
              _selectedLanguage.contains(ProgrammingLanguage.JAVA)
                  ? _selectedLanguage.remove(ProgrammingLanguage.JAVA)
                  : _selectedLanguage.add(ProgrammingLanguage.JAVA);
            },
          ),
          CheckboxListTile(
            title: const Text('Dart'),
            value: _selectedLanguage.contains(ProgrammingLanguage.DART),
            onChanged: (_) {
              _selectedLanguage.contains(ProgrammingLanguage.DART)
                  ? _selectedLanguage.remove(ProgrammingLanguage.DART)
                  : _selectedLanguage.add(ProgrammingLanguage.DART);
            },
          ),
          CheckboxListTile(
            title: const Text('Cpp'),
            value: _selectedLanguage.contains(ProgrammingLanguage.CPP),
            onChanged: (_) {
              _selectedLanguage.contains(ProgrammingLanguage.CPP)
                  ? _selectedLanguage.remove(ProgrammingLanguage.CPP)
                  : _selectedLanguage.add(ProgrammingLanguage.CPP);
            },
          ),
          StatefulBuilder(
            builder: (context, _setState) => CheckboxListTile(
              title: const Text('Java Script'),
              value: _selectedLanguage.contains(ProgrammingLanguage.JS),
              onChanged: (_) {
                _selectedLanguage.contains(ProgrammingLanguage.JS)
                    ? _selectedLanguage.remove(ProgrammingLanguage.JS)
                    : _selectedLanguage.add(ProgrammingLanguage.JS);
              },
            ),
          ),
          SwitchListTile(
              title: const Text('Is Employed'),
              value: _isEmployed,
              onChanged: (newValue) => setState(() => _isEmployed = newValue)),
          TextButton(
            onPressed: _saveSettings,
            child: const Text('Save Settings'),
          ),
        ],
      ),
    );
  }

  void _saveSettings() {
    final newSettings = Settings(
        username: _usernameController.text,
        gender: _selectedGender,
        programmingLanguages: _selectedLanguage,
        isEmployed: _isEmployed);
  }
}
