import 'package:flutter/material.dart';
import 'package:mini_katalog/product.dart';

class CartScreen extends StatefulWidget {
  final List<Product> cartProducts;
  final Function(Product) onRemoveFromCart;

  const CartScreen({
    super.key, 
    required this.cartProducts, 
    required this.onRemoveFromCart,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.cartProducts.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(title: const Text("Sepetim")),
      body: widget.cartProducts.isEmpty
          ? const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_basket_outlined, size: 80, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              "Sepetiniz henüz boş!",
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ],
        ),
          )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.cartProducts.length,
                    itemBuilder: (context, index) {
                      final product = widget.cartProducts[index];
                      return ListTile(
                        leading: Image.network(product.imageUrl, width: 40),
                        title: Text(product.name),
                        subtitle: Text("${product.price} TL"),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove_circle, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              widget.onRemoveFromCart(product); 
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Toplam:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("${totalPrice.toStringAsFixed(2)} TL", 
                           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}