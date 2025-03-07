import 'package:flutter/material.dart';

void main() {
  runApp(TempConverterApp());
}

class TempConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temperature Converter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TempConverterScreen(),
    );
  }
}

class TempConverterScreen extends StatefulWidget {
  @override
  _TempConverterScreenState createState() => _TempConverterScreenState();
}

class _TempConverterScreenState extends State<TempConverterScreen> {
  TextEditingController _controller = TextEditingController();
  double? fahrenheit, kelvin, romer;

  void convertTemperature() {
    double? celsius = double.tryParse(_controller.text);
    if (celsius != null) {
      setState(() {
        fahrenheit = (celsius * 9 / 5) + 32; // แปลงเป็น °F
        kelvin = celsius + 273.15; // แปลงเป็น K
        romer = (celsius * 21 / 40) + 7.5; // แปลงเป็น °Rø
      });
    } else {
      setState(() {
        fahrenheit = kelvin = romer = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Temperature Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'แปลงค่าอุณหภูมิจากเซลเซียส',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'กรอกอุณหภูมิ (°C)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: convertTemperature,
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            if (fahrenheit != null) ...[
              ResultCard(label: 'ฟาเรนไฮต์ (°F)', value: fahrenheit!),
              ResultCard(label: 'เคลวิน (K)', value: kelvin!),
              ResultCard(label: 'โรเมอร์ (°Rø)', value: romer!),
            ],
          ],
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String label;
  final double value;

  ResultCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value.toStringAsFixed(2)),
      ),
    );
  }
}
