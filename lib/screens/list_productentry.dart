import 'package:flutter/material.dart';
import 'package:sunrise_mart/models/product_entry.dart';
import 'package:sunrise_mart/screens/product_detail.dart';
import 'package:sunrise_mart/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://127.0.0.1:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object ProductEntry
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
        backgroundColor: const Color(0xFFFFECB3), // Warna AppBar diubah
      ),
      // drawer: const LeftDrawer(),
      backgroundColor: const Color(0xFFFFF8E1), // Warna latar belakang halaman
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data product pada sunrise mart.',
                    style: TextStyle(fontSize: 20, color: Color(0xFFFFF8E1)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    // Navigasi ke halaman detail saat item ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          ProductDetail(product: snapshot.data![index]),
                      ),
                    );
                  },
                  child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.nama}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Text("${snapshot.data![index].fields.nama}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.harga}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.deskripsi}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.stock}"),
                   ],
                    )
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}