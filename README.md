### **📌 สรุปโค้ด Flutter: แอปแปลงอุณหภูมิ**  

โค้ดนี้เป็นแอป **Flutter** ที่ใช้ในการแปลงอุณหภูมิจากหน่วย **เซลเซียส (°C)** ไปเป็นหน่วยอื่น ได้แก่  
✅ **ฟาเรนไฮต์ (°F)**  
✅ **เคลวิน (K)**  
✅ **โรเมอร์ (°Rø)**  

---

### **📌 โครงสร้างของโค้ด**
1. **`TempConverterApp` (StatelessWidget)**  
   - เป็นจุดเริ่มต้นของแอป (Root Widget)  
   - ใช้ `MaterialApp` กำหนด **theme** และหน้าแรกเป็น `TempConverterScreen()`

2. **`TempConverterScreen` (StatefulWidget)**  
   - มี TextField สำหรับกรอกอุณหภูมิเป็น **เซลเซียส (°C)**  
   - เมื่อกดปุ่ม **Convert** ระบบจะแปลงค่าอุณหภูมิเป็นหน่วยอื่น  
   - ใช้ `setState()` อัปเดตค่า **ฟาเรนไฮต์, เคลวิน, โรเมอร์**  

3. **`ResultCard` (StatelessWidget)**  
   - ใช้สำหรับแสดงผลลัพธ์แต่ละหน่วย  
   - ใช้ `Card` + `ListTile` เพื่อให้ UI ดูสวยงาม  

---

### **📌 วิธีการติดตั้งและรันโค้ด**
#### **1️⃣ ติดตั้ง Flutter และ Dart**
📌 ถ้ายังไม่มี **Flutter SDK** ติดตั้งตามนี้ 👉 [Flutter Installation Guide](https://docs.flutter.dev/get-started/install)  
ตรวจสอบว่า Flutter ติดตั้งเรียบร้อยแล้ว  
```bash
flutter --version
```

#### **2️⃣ สร้างโปรเจค Flutter**
```bash
flutter create temp_converter
cd temp_converter
```

#### **3️⃣ แทนที่โค้ดใน `lib/main.dart`**
📌 เปิดไฟล์ `lib/main.dart` แล้ววางโค้ดที่ให้มา

#### **4️⃣ รันแอป**
📌 ทดสอบรันแอปบน **Emulator หรือ Device จริง**  
```bash
flutter run
```
**หรือระบุ Device ID**  
```bash
flutter run -d emulator-5554  # สำหรับ Emulator Android
flutter run -d chrome          # สำหรับ Web
flutter run -d windows         # สำหรับ Windows App
```

---

### **📌 วิธีใช้งานแอป**
1. กรอกอุณหภูมิเป็นเซลเซียส **(°C)**
2. กดปุ่ม **Convert**
3. ระบบจะแสดงผลลัพธ์เป็น **°F, K, °Rø**

---

🎯 **สรุป:**  
📌 **Flutter App** นี้ใช้แปลงอุณหภูมิแบบเรียลไทม์  
📌 ใช้ **TextField, ElevatedButton, Card, ListTile**  
📌 รองรับ **Android, iOS, Web, และ Desktop**  
