import 'package:flutter/material.dart';

final List<Map<String, dynamic>> moods = [
  {'emoji': '😄', 'label': 'Happy', 'color': Colors.yellow},
  {'emoji': '😢', 'label': 'Sad', 'color': Colors.blue},
  {'emoji': '😡', 'label': 'Angry', 'color': Colors.red},
  {'emoji': '😌', 'label': 'Calm', 'color': Colors.green},
  {'emoji': '🤩', 'label': 'Excited', 'color': Colors.purple},
  {'emoji': '😴', 'label': 'Sleepy', 'color': Colors.grey},
  {'emoji': '🤔', 'label': 'Thinking', 'color': Colors.teal},
  {'emoji': '😬', 'label': 'Stressed', 'color': Colors.orange},
  {'emoji': '😍', 'label': 'In Love', 'color': Colors.pink},
];

final Map<String, List<Map<String, String>>> moodSongs = {
  'Happy': [
    {'title': 'Happy – Pharrell', 'url': 'https://youtu.be/ZbZSe6N_BXs'},
  ],
  'Sad': [
    {'title': 'Someone Like You – Adele', 'url': 'https://youtu.be/hLQl3WQQoQ0'},
  ],
  'Angry': [
    {'title': 'Stronger – Kanye West', 'url': 'https://youtu.be/PsO6ZnUZI0g'},
  ],
  'Calm': [
    {'title': 'Weightless – Marconi Union', 'url': 'https://youtu.be/UfcAVejslrU'},
  ],
  'Excited': [
    {'title': 'Can’t Hold Us – Macklemore', 'url': 'https://youtu.be/2zNSgSzhBfM'},
  ],
  'Sleepy': [
    {'title': 'Rain Sounds – Sleep Therapy', 'url': 'https://youtu.be/kpYpC1mx0M4'},
  ],
  'Thinking': [
    {'title': 'Thinking Out Loud – Ed Sheeran', 'url': 'https://youtu.be/lp-EO5I60KA'},
  ],
  'Stressed': [
    {'title': 'Let It Be – The Beatles', 'url': 'https://youtu.be/QDYfEBY9NM4'},
  ],
  'In Love': [
    {'title': 'Perfect – Ed Sheeran', 'url': 'https://youtu.be/2Vv-BfVoq4g'},
  ],
};
