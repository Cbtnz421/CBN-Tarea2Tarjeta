import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil Profesional',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 27, 210, 223)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Perfil Profesional")),
        body: const Center(
          child: PerfilProfesionalCard(),
        ),
      ),
    );
  }
}

class MyHomePage {
  const MyHomePage({required String title});
}

class PerfilProfesionalCard extends StatelessWidget {
  const PerfilProfesionalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue[100],
              child: const Icon(Icons.person, size: 50, color: Colors.blue),
            ),
            const SizedBox(height: 10),

            // Nombre y título profesional
            const Text(
              "Carolina Batista",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Desarrolladora Flutter Junior",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 10),

            // Likes
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 5),
                Text("45"),
              ],
            ),
            const SizedBox(height: 20),

            // Habilidades
            const Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                SkillButton("Flutter"),
                SkillButton("Dart"),
                SkillButton("Firebase"),
                SkillButton("Git"),
                SkillButton("UI/UX"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillButton extends StatelessWidget {
  final String skill;
  const SkillButton(this.skill, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.blue[100],
    );
  }
}
