import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data/mood_data.dart';

class ResultScreen extends StatelessWidget {
  final String mood;
  ResultScreen({required this.mood});

  @override
  Widget build(BuildContext context) {
    final songs = moodSongs[mood] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('$mood Vibes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.music_note, color: Colors.deepPurple),
              title: Text(song['title'] ?? ''),
              trailing: IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () async {
                  final uri = Uri.parse(song['url'] ?? '');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
