import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notifications = false;
  void _onNotificationsChanged(bool? newValue) {
    if (newValue == null) return;
    setState(() {
      _notifications = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            // ios에선 ios스위치로, android에선 android 스위치로 렌더링됨
            title: const Text("Enable notifications"),
            subtitle: const Text("Enable notifications"),

            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          Switch.adaptive(
            // ios에선 ios스위치로, android에선 android 스위치로 렌더링됨
            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          CupertinoSwitch(
            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          Switch(
            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          SwitchListTile(
            title: const Text("Enable notifications"),
            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          Checkbox(
            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).primaryColor,
            value: _notifications,
            onChanged: _onNotificationsChanged,
            title: const Text("Enable notifications"),
          ),
          ListTile(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1980),
                lastDate: DateTime(2030),
              );
              print("ㄴ $date");
              final time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              print("ㄴ $time");
              final booking = await showDateRangePicker(
                context: context,
                firstDate: DateTime(1980),
                lastDate: DateTime(2030),
                builder: (context, child) {
                  return Theme(
                      data: ThemeData(
                        appBarTheme: const AppBarTheme(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      child: child!);
                },
              );
              print("ㄴ $booking");
            },
            title: const Text("What is your birthday?"),
          ),
          const AboutListTile(),
        ],
      ),
    );
  }
}
