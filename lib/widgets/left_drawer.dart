import 'package:flutter/material.dart';
import 'package:sunrise_mart/screens/list_productentry.dart';
import 'package:sunrise_mart/screens/menu.dart';
import 'package:sunrise_mart/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFFFF8E1), // Warna latar belakang yang konsisten dengan tema Sunrise Mart
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xFFFFECB3), // Warna yang sama dengan AppBar pada Sunrise Mart
              ),
              child: const Column(
                children: [
                  Text(
                    'Sunsrise Florist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Text(
                    "day bloom with flowers!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            // Bagian routing
            ListTile(
              leading: const Icon(Icons.home_outlined, color: Colors.black),
              title: const Text(
                'Halaman Utama',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket, color: Colors.black),
              title: const Text(
                'Tambah Product',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Product'),
              onTap: () {
                  // Route menu ke halaman mood
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
