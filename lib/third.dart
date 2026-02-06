import 'package:flutter/material.dart';

class ThirdApp extends StatefulWidget {
  const ThirdApp({super.key});

  @override
  State<ThirdApp> createState() => _ThirdAppState();
}

class _ThirdAppState extends State<ThirdApp> {
  final List<Map<String, dynamic>> subjects = [
    {"name": "Mobile Application Dev", "credits": 3},
    {"name": "Information Security", "credits": 3},
    {"name": "Cloud Computing", "credits": 2},
    {"name": "IT Project Management", "credits": 2},
    {"name": "Human Computer Interaction", "credits": 2},
    {"name": "Data Mining & Warehousing", "credits": 3},
    {"name": "Rapid App Development", "credits": 3},
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
        totalPoints +=
            getGradePoints(selectedGrades[i]) * subjects[i]['credits'];
        totalCredits += subjects[i]['credits'] as int;
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
          "THIRD YEAR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF26A69A),
      ),
      body: Column(
        children: [
          // GPA Display
          Container(
            padding: const EdgeInsets.symmetric(vertical: 35),
            decoration: const BoxDecoration(
              color: Color(0xFF26A69A),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "3rd YEAR GPA",
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

          // Subjects List
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
                backgroundColor: const Color(0xFF26A69A),
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
