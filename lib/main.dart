
import 'package:flutter/material.dart';

void main() {
  runApp(const NovaApp());
}

class NovaApp extends StatelessWidget {
  const NovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NOVA',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF080E1D),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF38BDF8),
        ),
      ),
      home: const NovaHome(),
    );
  }
}

class NovaHome extends StatelessWidget {
  const NovaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NOVA',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF38BDF8),
                      letterSpacing: 3,
                    ),
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 34,
                  ),
                ],
              ),

              const SizedBox(height: 35),

              const Text(
                'BUILD YOUR NEXT LEVEL.',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Small steps. Extraordinary results.',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF142D50),
                      Color(0xFF10172B),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: const Color(0xFF287FC0),
                    width: 0.7,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "TODAY'S PROGRESS",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      '75%',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF38BDF8),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const LinearProgressIndicator(
                        value: 0.75,
                        minHeight: 9,
                        backgroundColor: Color(0xFF263B58),
                        valueColor: AlwaysStoppedAnimation(
                          Color(0xFF38BDF8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '3 of 4 missions completed',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'YOUR JOURNEY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  Expanded(
                    child: _infoCard(
                      Icons.track_changes,
                      'MY GOALS',
                      '04',
                      const Color(0xFF38BDF8),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: _infoCard(
                      Icons.emoji_events_outlined,
                      'MY LEVEL',
                      '08',
                      const Color(0xFFFFA726),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'DAILY MISSIONS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              _mission('Learn something new', true),
              _mission('Work on your main goal', true),
              _mission('Read for 20 minutes', false),

              const SizedBox(height: 30),

              const Center(
                child: Text(
                  'NOVA • BUILD YOUR NEXT LEVEL',
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 11,
                    letterSpacing: 1,
                  ),
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCard(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF111E35),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _mission(String title, bool completed) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF111E35),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            completed
                ? Icons.check_circle
                : Icons.radio_button_unchecked,
            color: completed
                ? const Color(0xFF38BDF8)
                : Colors.white38,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
          if (completed)
            const Text(
              '+40 XP',
              style: TextStyle(
                color: Color(0xFFFFA726),
                fontSize: 11,
              ),
            ),
        ],
      ),
    );
  }
}
