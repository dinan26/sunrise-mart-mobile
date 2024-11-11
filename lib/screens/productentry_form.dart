import 'package:flutter/material.dart';
import 'package:sunrise_mart/widgets/left_drawer.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  int _stock = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Warna AppBar yang konsisten dengan tema
      appBar: AppBar(
        title: const Center(
          child: Text('Form Tambah Product'),
        ),
        backgroundColor: const Color(0xFFFFECB3), // Warna header sesuai tema
        foregroundColor: Colors.black,
      ),
      drawer: const LeftDrawer(),
      body: Container(
        // Warna background halaman sampai bawah
        color: const Color(0xFFFFF8E1), // Warna background konsisten dari atas ke bawah
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Field input untuk nama produk
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Name tidak boleh kosong!";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              // Field input untuk harga produk
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Price",
                  labelText: "Price",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _price = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Price tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null || int.tryParse(value)! < 0) {
                    return "Masukkan angka yang valid!";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              // Field input untuk stok produk
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Stock",
                  labelText: "Stock",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _stock = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Stock tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null || int.tryParse(value)! < 0) {
                    return "Masukkan angka yang valid!";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              // Field input untuk deskripsi produk
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Description tidak boleh kosong!";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              // Tombol "Save"
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFECB3), // Warna tombol sesuai tema
                    foregroundColor: Colors.black, // Warna teks tombol hitam
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Product berhasil tersimpan'),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name: $_name'),
                                Text('Price: $_price'),
                                Text('Stock: $_stock'),
                                Text('Description: $_description'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                                _formKey.currentState!.reset();
                              },
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Save"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
