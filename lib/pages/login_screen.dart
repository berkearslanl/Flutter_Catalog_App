import 'package:flutter/material.dart';
import 'package:mini_katalog/local_storage.dart';
import 'package:mini_katalog/pages/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

final TextEditingController nameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final formKey = GlobalKey<FormState>();
LocalStorageService localStorage = LocalStorageService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 48,),

            Text("Hoş Geldiniz", style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.bold
            ),
            ),

            const SizedBox(height: 10,),

            Text(
              "Lütfen bilgilerinizi giriniz!",style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 40,),

            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Kullanıcı Adı",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),

            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Şifre",
                border: OutlineInputBorder(),
              ),

            ),

            const SizedBox(height: 30,),

            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
                elevation: 4,
              ),
              onPressed: () {
  // Basit bir kontrol: Alanlar boş değilse giriş yap
  if (nameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
    // Local storage'a kaydetme işlemini burada yapabilirsin
    localStorage.saveData(nameController.text);
    
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  } else {
    // Hata mesajı göster
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Lütfen kullanıcı adı veya şifrenizi giriniz!"),
        backgroundColor: Colors.red,
      ),
    );
  }
},
              child: const Text(
                "Giriş Yap",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
          ],
        ),
      )),
    );
  }
}