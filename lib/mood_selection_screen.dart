import 'package:flutter/material.dart';
import 'result_screen.dart';
import 'data/mood_data.dart';

class MoodSelectionScreen extends StatefulWidget {
  @override
  State<MoodSelectionScreen> createState() => _MoodSelectionScreenState();
}

class _MoodSelectionScreenState extends State<MoodSelectionScreen> {
  String _selectedMood = '';

  void _onMoodTap(String moodLabel) {
    setState(() {
      _selectedMood = moodLabel;
    });

    Future.delayed(Duration(milliseconds: 300), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(mood: moodLabel),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What’s your mood today?'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(24),
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: moods.map((mood) {
          return GestureDetector(
            onTap: () => _onMoodTap(mood['label']!),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: _selectedMood == mood['label']
                    ? mood['color']!.withOpacity(0.3)
                    : Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: mood['color']!,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mood['emoji']!,
                    style: TextStyle(fontSize: 38),
                  ),
                  SizedBox(height: 8),
                  Text(
                    mood['label']!,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
