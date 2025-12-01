import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // متحكمات لحقول النص
  TextEditingController _inputController = TextEditingController();
  TextEditingController _outputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الرئيسية'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الحقل الأول للإدخال
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'أدخل النص هنا',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.edit),
              ),
            ),
            SizedBox(height: 20),

            // زر النسخ


            // الحقل الثاني للإخراج
            TextField(
              controller: _outputController,
              decoration: InputDecoration(
                labelText: 'النص المنسوخ',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.text_fields),
                filled: true,
                fillColor: Colors.grey[100],
              ),
              readOnly: true, // جعله للقراءة فقط
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // نسخ النص من الحقل الأول إلى الثاني
                setState(() {
                  _outputController.text = _inputController.text;
                  _inputController.clear();

                });


              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.copy),
                  SizedBox(width: 8),
                  Text('نسخ النص'),
                ],
              ),

            ),
            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }



}