import 'package:flutter/material.dart';
import 'package:mini_katalog/product.dart'; 

class DetailScreen extends StatelessWidget {
  final Product product; 
  final Function(Product) onAddToCart; 
  const DetailScreen({super.key, required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${product.price} TL",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Divider(height: 30),
                  const Text(
                    "Ürün Açıklaması",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
          ),
          onPressed: () {
            onAddToCart(product);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("${product.name} sepete eklendi!"),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.green.shade900,
              margin: EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),
              ),
            );
          },
          child: const Text("Sepete Ekle"),
        ),
      ),
    );
  }
}