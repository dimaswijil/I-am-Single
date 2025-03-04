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
      home: const QuoteChanger(),
    );
  }
}

class QuoteChanger extends StatefulWidget {
  const QuoteChanger({super.key});

  @override
  _QuoteChangerState createState() => _QuoteChangerState();
}

class _QuoteChangerState extends State<QuoteChanger> {
  // Teks yang akan ditampilkan
  String dynamicQuote = "If you lost her, you will found yourself so you will win.";

  // List yang berisi beberapa quote yang bisa diganti
  final List<String> quotes = [
    "Focus on yourself, and success will follow.",
    "Growth begins with self-love and understanding.",
    "Sometimes, you need to lose yourself to find who you truly are.",
    "Keep pushing, even when things seem impossible."
  ];

  // Menyimpan indeks dari quote yang sedang ditampilkan
  int currentQuoteIndex = 0;

  // Fungsi untuk merubah quote
  void changeQuote() {
    setState(() {
      // Ganti ke quote berikutnya
      currentQuoteIndex = (currentQuoteIndex + 1) % quotes.length;
      dynamicQuote = quotes[currentQuoteIndex]; // Update quote yang ditampilkan
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Mengubah latar belakang menjadi hitam
      appBar: AppBar(
        title: const Text("I Am Single"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/image/single.png'),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Key Point", style: TextStyle(fontSize: 16)),
                  Text("❤️ Memiliki gaya hidup yang lebih slow living", style: TextStyle(fontSize: 16)),
                  Text("😄 Tidak akan menggantungkan perasaan kepada orang lain", style: TextStyle(fontSize: 16)),
                  Text("🕒 Memiliki waktu lebih banyak untuk diri sendiri", style: TextStyle(fontSize: 16)),
                  Text("🎯 Bisa fokus terhadap target - target dalam hidup", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20), // Menambahkan ruang antara elemen
                  Text("Quote", style: TextStyle(fontSize: 16)),
                  Text(dynamicQuote, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(height: 20), // Menambahkan ruang antara elemen
                  Text(
                    "Mengutamakan kesehatan mental dan kebahagiaan pribadi.",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 20), // Menambahkan ruang di bawah teks terakhir
                  Text(
                    "Life is choice, And every choice has consequence.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Floating button untuk merubah teks
      floatingActionButton: FloatingActionButton(
        onPressed: changeQuote,
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
