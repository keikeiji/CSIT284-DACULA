
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() {
    return _SettingsScreenState();
  }
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _showCookingTips = true;
  bool _showMealImages = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Preferences',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Customize your meal browsing experience.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.lightbulb_outline),
              title: const Text('Cooking tips'),
              subtitle: const Text('Show helpful cooking tips'),
              value: _showCookingTips,
              onChanged: (value) {
                setState(() {
                  _showCookingTips = value;
                });
              },
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.image_outlined),
              title: const Text('Meal images'),
              subtitle: const Text('Display meal photos in the app'),
              value: _showMealImages,
              onChanged: (value) {
                setState(() {
                  _showMealImages = value;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            child: ListTile(
              leading: Icon(Icons.palette_outlined),
              title: Text('App theme'),
              subtitle: Text('Olive and Cream'),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Note: These preferences are temporary and reset when the screen is recreated.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}