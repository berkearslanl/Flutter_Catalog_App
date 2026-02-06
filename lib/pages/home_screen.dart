import 'package:flutter/material.dart';
import 'package:mini_katalog/local_storage.dart';
import 'package:mini_katalog/pages/login_screen.dart';
import 'package:mini_katalog/pages/shopping_cart_screen.dart';
import 'package:mini_katalog/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LocalStorageService localStorage = LocalStorageService();
  String userName ="";

List<Product> cartProducts = [];

void addToCart(Product product) {
  setState(() {
    cartProducts.add(product);
  });
}
  Future<void> loadUsername() async {
    final name = await localStorage.getData();
    setState(() {
      userName = name;
    });
    
  }
  final Set<String> favoriteProductNames = {};
  List<Product> filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    loadUsername();
    super.initState();
    filteredProducts = products;
    
  }
  
  void _filterProducts(String query) {
    setState(() {
      filteredProducts = products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  void toggleFavorite(String productName) {
    setState(() {
      if (favoriteProductNames.contains(productName)) {
        favoriteProductNames.remove(productName);
      } else {
        favoriteProductNames.add(productName);
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    },
  ),
        title: const Text("Ürün Kataloğu"),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text("Hoş geldin $userName",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
              ),
              
          ),
          Stack(
  alignment: Alignment.center,
  children: [
    IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartScreen(
              cartProducts: cartProducts,
              onRemoveFromCart: (product) {
                setState(() {
                  cartProducts.remove(product);
                });
              },
            ),
          ),
        );
      },
    ),
    if (cartProducts.isNotEmpty) // Sepet boş değilse sayıyı göster
      Positioned(
        right: 8,
        top: 8,
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
          child: Text(
            '${cartProducts.length}',
            style: const TextStyle(color: Colors.white, fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ),
      ),
  ],
),
        ],
        
      ),
      body: Column(
        children: [
          // Arama Çubuğu
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterProducts,
              decoration: InputDecoration(
                labelText: "Ürün Ara...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _filterProducts('');
                        },
                      )
                    : null,
              ),
            ),
          ),
          
          // Ürün Listesi
          Expanded(
            child: filteredProducts.isEmpty
                ? const Center(child: Text("Ürün bulunamadı."))
                : ListView.builder(
                    itemCount: filteredProducts.length + 1,
                    itemBuilder: (context, index) {
                      if(index==0)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://i.hizliresim.com/b3v4jiv.png",
                                          ),
                                          fit: BoxFit.fitWidth,
                                          ),
                                      ),
                                    ),
                        );
                      }
                      final product = filteredProducts[index-1];
                      final isFavorite = favoriteProductNames.contains(product.name);

                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: ListTile(
                          leading: Image.network(
  product.imageUrl,
  width: 50,
  fit: BoxFit.cover,
  // Resim yüklenirken ne gösterilsin?
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Container(
      width: 50,
      color: Colors.grey[200],
      child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  },
  // Resim yüklenemezse ne gösterilsin?
  errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
),
                          title: Text(product.name),
                          subtitle: Text("${product.price} TL"),
                          trailing: IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite ? Colors.red : null,
                            ),
                            onPressed: () => toggleFavorite(product.name),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(product: product,
                                onAddToCart: (addedProduct){
                                  setState(() {
                                    cartProducts.add(addedProduct);
                                  });
                                },
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}