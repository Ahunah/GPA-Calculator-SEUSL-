import 'package:flutter/material.dart';

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  final List<Map<String, dynamic>> subjects = [
    {"name": "Fundamentals of Programming", "credits": 3},
    {"name": "Mathematics for ICT", "credits": 3},
    {"name": "Logic Designing & Computer Org.", "credits": 2},
    {"name": "Essentials of ICT & PC Apps", "credits": 2},
    {"name": "Database Design", "credits": 3},
    {"name": "English Language", "credits": 2},
    {"name": "Intro to AI / Soft Skills", "credits": 2},
  ];

  final List<String?> selectedGrades = List.filled(7, null);
  double gpaResult = 0.0;

  double getGradePoints(String? grade) {
    switch (grade) {
      case 'A+':
      case 'A':
        return 4.0;
      case 'A-':
        return 3.7;
      case 'B+':
        return 3.3;
      case 'B':
        return 3.0;
      case 'B-':
        return 2.7;
      case 'C+':
        return 2.3;
      case 'C':
        return 2.0;
      case 'C-':
        return 1.7;
      case 'D+':
        return 1.3;
      case 'D':
        return 1.0;
      default:
        return 0.0;
    }
  }

  void calculateGPA() {
    double totalPoints = 0;
    int totalCredits = 0;

    for (int i = 0; i < subjects.length; i++) {
      if (selectedGrades[i] != null) {
        int credit = subjects[i]['credits'];
        totalPoints += getGradePoints(selectedGrades[i]) * credit;
        totalCredits += credit;
      }
    }

    setState(() {
      gpaResult = totalCredits > 0 ? totalPoints / totalCredits : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "FIRST YEAR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1A237E),
      ),
      body: Column(
        children: [
          // GPA Display Section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 35),
            decoration: const BoxDecoration(
              color: Color(0xFF1A237E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "CURRENT GPA",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    gpaResult.toStringAsFixed(2),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // List of Subjects
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 14),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                subjects[index]['name'],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Credits: ${subjects[index]['credits']}",
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        DropdownButton<String>(
                          hint: const Text("Grade"),
                          value: selectedGrades[index],
                          items:
                              [
                                    'A+',
                                    'A',
                                    'A-',
                                    'B+',
                                    'B',
                                    'B-',
                                    'C+',
                                    'C',
                                    'C-',
                                    'D+',
                                    'D',
                                    'E',
                                  ]
                                  .map(
                                    (g) => DropdownMenuItem(
                                      value: g,
                                      child: Text(g),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (val) =>
                              setState(() => selectedGrades[index] = val),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Calculate Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: calculateGPA,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1A237E),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 6,
              ),
              child: const Text(
                "CALCULATE NOW",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
