import 'package:flutter/material.dart';
import 'package:sunrise_mart/models/product_entry.dart'; // Import model Item untuk digunakan di halaman detail

class ProductDetail extends StatelessWidget {
  final ProductEntry product; // Terima objek Item dari halaman sebelumnya

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.fields.nama,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFFFECB3), // Warna AppBar
        foregroundColor: Colors.black,
      ),
      body: Container(
        color: const Color(0xFFFFF8E1), // Warna latar belakang Scaffold
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Mulai dari atas
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama produk sebagai heading besar
                Text(
                  product.fields.nama,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16), // Jarak antar elemen
                // Harga produk
                Text(
                  'Harga: Rp ${product.fields.harga}',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8),
                // Stock produk
                Text(
                  'Stock: ${product.fields.stock}',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8),
                // Deskripsi produk
                Text(
                  'Deskripsi: ${product.fields.deskripsi}',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 16),
                // Spacer untuk mendorong tombol ke bawah
                const Spacer(),
                // Tombol kembali
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFECB3), // Warna tombol
                      foregroundColor: Colors.black, // Warna teks tombol
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                    ),
                    child: const Text(
                      'Kembali',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
