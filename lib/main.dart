import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Column and Row Layout',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF607D8B),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // Row 1: Three colour box ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNumberBox('1', const Color(0xFFE53935)),
                  _buildNumberBox('2', const Color(0xFF43A047)),
                  _buildNumberBox('3', const Color(0xFF42A5F5)),
                ],
              ),

              // Big orange Container ---
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFA726),
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Large Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Row 2: Left and Right button ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLabelBox('Left', const Color(0xFF8E24AA)),
                  const SizedBox(width: 16),
                  _buildLabelBox('Right', const Color(0xFF00897B)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  // Number box function ---
  Widget _buildNumberBox(String number, Color color) {
    return Container(
      width: 85,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Text(
        number,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Left/Right function ---
  Widget _buildLabelBox(String label, Color color) {
    return Container(
      width: 110,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}