  - Nama : Dinda Dinanti
  - NPM : 2306245440
  - Kelas : PBP C

  <details>
    <summary>TUGAS 7</summary>
   
  **TUGAS INDIVIDU 7**

  **1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya**
   - Stateless Widget:
    Stateless Widget adalah widget yang tidak memiliki status (state) yang dapat diubah setelah widget tersebut dibangun. Artinya, setelah widget ini dibuat, segala konfigurasi yang ada di dalamnya bersifat tetap dan   tidak dapat berubah seiring waktu.  Jadi mereka tidak dapat menyimpan atau merubah data internal mereka sendiri. Ketika data atau kondisi aplikasi berubah, kita harus membuat ulang widget stateless dan     menggantinya dengan widget baru. Hal ini mempengaruhi seluruh widget,tidak hanya satu bagian dari widget tersebut. Stateless widget digunakan untuk komponen yang tidak memerlukan perubahan atau pembaruan berdasarkan data atau input tertentu, seperti teks statis atau ikon.
  
  - Stateful Widget:
    Stateful widget adalah widget yang memiliki status (state) yang dapat diubah selama siklus hidupnya. Widget ini memungkinkan perubahan tampilan berdasarkan interaksi pengguna atau data yang diterima.
    Saat data atau kondisi aplikasi berubah, stateful widget dapat memperbarui tampilan mereka tanpa perlu membuat ulang seluruh widget. Hal ini memungkinkan efisiensi yang lebih baik dalam hal pembaruan tampilan.
  Stateful widget digunakan untuk komponen yang perlu merespons perubahan data atau interaksi pengguna, seperti formulir, daftar item yang dapat di-scroll, atau penghitung.

  **2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya**
  
  - Scaffold
    
    Fungsi: Widget dasar untuk struktur visual aplikasi, menyediakan area untuk AppBar, Drawer, BottomNavigationBar, dan Body.
    
    Penggunaan dalam proyek: Scaffold mengatur tampilan utama halaman dengan judul aplikasi dan konten utama.

  - AppBar
    
    Fungsi: Menyediakan bilah aplikasi di bagian atas layar, berisi judul, ikon, dan tindakan.
    
    Penggunaan dalam proyek: Menampilkan judul "Sunrise Mart" dengan teks berwarna hitam dan latar belakang berwarna krem.

  - Container
    
    Fungsi: Widget fleksibel yang mendukung padding, margin, batas, dan warna latar belakang.
    
    Penggunaan dalam proyek: Memberi warna latar belakang pada halaman dan menambahkan padding pada area tertentu.
    
  - Row
    
    Fungsi: Menampilkan widget secara horizontal dalam satu baris.
    
    Penggunaan dalam proyek: Menyusun tiga InfoCard secara sejajar.
    
  - Column
    
    Fungsi: Menampilkan widget secara vertikal dalam kolom.
    
    Penggunaan dalam proyek: Mengatur elemen-elemen seperti judul, InfoCard, dan grid yang berisi ItemCard.
    
  - SizedBox
    
    Fungsi: Memberikan ukuran tetap pada ruang kosong.
    
    Penggunaan dalam proyek: Memberi jarak vertikal antara elemen-elemen.
    
  - GridView
    
    Fungsi: Menampilkan widget dalam grid dua dimensi, ideal untuk daftar item.
    
    Penggunaan dalam proyek: GridView.count digunakan untuk menampilkan ItemCard dalam bentuk grid dengan 3 kolom.
    
  - Card
    
    Fungsi: Memberikan efek elevasi dan tampilan seperti kartu yang menonjol dari latar belakang.
    
    Penggunaan dalam proyek: Menampilkan InfoCard dengan latar belakang berwarna dan efek elevasi.
    
  - InkWell
    
    Fungsi: Widget yang merespons sentuhan dengan efek ripple.
    
    Penggunaan dalam proyek: Di ItemCard, InkWell memberikan respons ketukan pengguna dengan menampilkan SnackBar.
    
  - Material
    
    Fungsi: Menerapkan prinsip desain material pada widget anaknya.
    
    Penggunaan dalam proyek: Material diterapkan pada ItemCard untuk memberikan efek desain material dan menetapkan warna latar belakang.
    
  - Text
    
    Fungsi: Widget untuk menampilkan teks.
    
    Penggunaan dalam proyek: Menampilkan judul, konten, dan nama item di berbagai tempat dalam aplikasi.
    
  - Icon
    
    Fungsi: Widget untuk menampilkan ikon grafis.
    
    Penggunaan dalam proyek: Di ItemCard, Icon menampilkan ikon sesuai nama item.

  **3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut**
  
   Fungsi `setState()`
  `setState()` adalah metode dalam Flutter yang digunakan untuk memberi tahu framework bahwa ada perubahan pada data yang harus diperbarui dalam tampilan antarmuka pengguna. Dengan memanggil `setState()`, Flutter akan menjadwalkan ulang proses rendering widget, sehingga tampilan dapat mencerminkan perubahan data.
  
  Fungsi Utama
  - **Memperbarui UI**: `setState()` memberitahu Flutter bahwa data dalam state widget telah berubah dan UI perlu diperbarui untuk mencerminkan perubahan tersebut.
  - **Mengelola Status**: Fungsi ini digunakan dalam widget yang memiliki status (stateful widget) untuk mengelola dan memperbarui keadaan internal, seperti variabel yang menyimpan informasi yang ditampilkan di UI.
  
  - Variabel yang Terdampak
  Ketika `setState()` dipanggil, variabel yang dideklarasikan dalam kelas yang mengimplementasikan `State` akan terdampak, terutama yang dideklarasikan sebagai variabel instance. Contoh variabel yang mungkin terpengaruh:
  
  1. **Variabel Instance**: Variabel yang dideklarasikan dalam kelas `State`, menyimpan informasi yang ditampilkan di UI.
     ```dart
     int counter = 0;
  
     void incrementCounter() {
       setState(() {
         counter++; // Mengubah nilai counter
       });
     }
     
  **4. Jelaskan perbedaan antara const dengan final**
  
   -  `final`
        - **Inisialisasi Sekali**: Variabel yang dideklarasikan dengan `final` hanya dapat diinisialisasi satu kali. Setelah diberikan nilai, nilai tersebut tidak dapat diubah.
        - **Waktu Inisialisasi**: Nilai dari variabel `final` dapat ditentukan pada saat runtime, memungkinkan nilai tersebut bergantung pada hasil perhitungan atau input pengguna.
        - **Contoh**:
          ```dart
          final String name = 'Dinda'; // Dapat diinisialisasi
          // name = 'Siti'; // Ini akan menyebabkan error karena name tidak bisa diubah
        
          final currentTime = DateTime.now(); // Dapat diinisialisasi dengan nilai runtime```

  -  `const`
        - **Inisialisasi Konstan**: Variabel yang dideklarasikan dengan `const` hanya dapat diinisialisasi satu kali, tetapi nilainya harus diketahui pada saat kompilasi.
        - **Waktu Inisialisasi**: Nilai dari `const` adalah konstan dan tidak dapat diubah, menjadikannya lebih ketat dibandingkan dengan `final`.
        
        - **Contoh**:
          ```dart
          const int age = 20; // Harus diketahui pada saat kompilasi
          // age = 21; // Ini akan menyebabkan error karena age tidak bisa diubah
          
          const List<String> fruits = ['Apple', 'Banana']; // List konstan

 **5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas**

  ### 1. Membuat Proyek Baru
  - Buat proyek baru bernama **sunrise_mart** dengan perintah:
    ```
    flutter create sunrise_mart
  - Masuk ke direktori proyek dengan:
     ```
     cd sunrise_mart
  - Jalankan proyek pertama kali dengan:
     ```
    flutter run
  - Jalankan proyek tersebut di aplikasi Google Chrome dengan perintah:
    ```
    flutter run -d chrome

  ## 2. Menambahkan File `menu.dart`
  - Buat file baru yang bernama **menu.dart** di dalam folder **lib**.
  - Pindahkan kode untuk halaman utama (**MyHomePage**) dari **main.dart** ke dalam **menu.dart**.
  - Tambahkan import berikut di bagian atas **main.dart**:
    ```
    import 'package:sunrise_mart/menu.dart';

  ## 3. Membuat Tombol “Lihat Daftar Produk", "Tambah Produk", dan "Logout” dengan Ikon dan Teks

  - Tombol "Lihat Daftar Produk", "Tambah Produk", dan "Logout" dibuat sebagai bagian dari halaman utama aplikasi (MyHomePage).
  - Masing-masing tombol disusun dalam bentuk kartu (card) pada GridView agar terlihat rapi dalam tata letak grid.
  - Untuk mendefinisikan tombol-tombol ini, saya menggunakan kelas ItemHomepage, yang menyimpan data nama tombol, ikon, dan warna.

  ## 4. Mengimplementasikan Warna-Warna yang Berbeda untuk Setiap Tombol

- Pada daftar **items** di dalam **MyHomePage**, setiap item memiliki warna yang berbeda untuk membedakan tombol. Berikut kodenya:
    ```
    final List<ItemHomepage> items = [
      ItemHomepage("Lihat Daftar Produk", Icons.local_florist, Colors.orangeAccent.shade100),
      ItemHomepage("Tambah Produk", Icons.add_business, Colors.red.shade900),
      ItemHomepage("Logout", Icons.logout, Colors.lime.shade900),
    ];
- Warna dari masing-masing tombol ini diambil dari item.color dan diterapkan pada latar belakang tombol di dalam ItemCard.

  ## 5. Memunculkan Snackbar dengan Pesan Tertentu Saat Tombol Ditekan

- Setiap tombol di dalam **ItemCard** memiliki metode **onTap** yang memicu **SnackBar** untuk menampilkan pesan.
- Pesan pada **SnackBar** disesuaikan dengan tombol yang ditekan. Misalnya, saat tombol **"Lihat Daftar Produk"** ditekan, pesan yang muncul adalah:
  ```
  onTap: () {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
      );
  },
  
</details>

<details>
  <summary>TUGAS 8</summary>
   
  **TUGAS INDIVIDU 8**

## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
   
  `const` adalah keyword yang digunakan untuk mendefinisikan objek yang **immutable (tidak dapat diubah)** dan dihitung pada **waktu kompilasi**. Objek yang diberi tanda `const` hanya akan dibuat sekali dan tidak akan berubah selama waktu eksekusi aplikasi. Ini memberikan keuntungan dalam hal optimasi performa dan penggunaan memori.

## Keuntungan Menggunakan `const` di Flutter

### 1. **Optimasi Performa**
   - Menggunakan `const` memungkinkan Flutter untuk **menghindari pembuatan ulang widget** yang sudah ada, sehingga meningkatkan kecepatan aplikasi.
   - Objek yang diberi `const` hanya dibuat satu kali, dan Flutter akan menggunakan instance yang sama setiap kali objek tersebut dibutuhkan.

### 2. **Penghematan Memori**
   - Objek yang dibuat dengan `const` hanya akan ada **satu instance** yang digunakan berulang kali. Ini mengurangi **penggunaan memori** karena Flutter tidak perlu membuat objek baru setiap kali widget dirender.

### 3. **Stabilitas Kode**
   - Kode yang menggunakan `const` lebih **terprediksi** dan lebih sedikit **bug** karena objek yang didefinisikan dengan `const` tidak berubah selama runtime aplikasi.

## Kapan Menggunakan `const`?
1. **Widget yang Tidak Berubah**
   
   Gunakan `const` untuk widget yang tidak akan berubah selama runtime, seperti `Text`, `Icon`, atau widget dengan nilai yang tetap.
      ```dart
      const Text('Hello World');
   
2. **Nilai Konstanta**

    Gunakan `const` untuk nilai yang tetap dan tidak berubah, seperti warna, ukuran, atau teks yang bersifat tetap.
    ```dart
    const Color backgroundColor = Color(0xFFFFF8E1);


3. **Widget Tree yang Stabil**
   
   Gunakan const dalam widget tree yang besar namun tidak memiliki perubahan nilai, untuk meningkatkan performa rendering.
      ```dart
      return const Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
      );

## Kapan Tidak Menggunakan `const`?
1. **Nilai atau State yang Berubah**
Jangan gunakan const pada widget yang bergantung pada nilai yang dapat berubah saat runtime, seperti input pengguna, data yang diambil dari API, atau nilai yang sering berubah.

2. **Pada StatefulWidget**
   Hindari penggunaan const pada widget yang menggunakan StatefulWidget, karena widget tersebut bergantung pada state yang bisa berubah sesuai dengan interaksi pengguna.
      ```dart
          class MyCounter extends StatefulWidget {
            @override
            _MyCounterState createState() => _MyCounterState();
          }

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

### 1. **`Column`**
   - **Arah Layout**: Vertikal (atas ke bawah).
   - **Penggunaan**: Digunakan untuk menata widget secara vertikal.
   - **Keuntungan**: Cocok untuk menyusun widget seperti form, daftar, atau elemen-elemen yang saling bertumpuk secara vertikal.
   - **Kekurangan**: Memiliki batasan tinggi (overflow) jika ukuran widget lebih besar dari ruang yang tersedia.

### 2. **`Row`**
   - **Arah Layout**: Horizontal (kiri ke kanan).
   - **Penggunaan**: Digunakan untuk menata widget secara horizontal.
   - **Keuntungan**: Cocok untuk menata elemen seperti tombol atau gambar yang saling berdampingan secara horizontal.
   - **Kekurangan**: Memiliki batasan lebar (overflow) jika ukuran widget lebih besar dari ruang yang tersedia.


## Kapan Menggunakan `Column` dan `Row`?
- **Gunakan `Column`** ketika ingin widget tampil secara vertikal, seperti pada form input atau daftar elemen.
- **Gunakan `Row`** ketika ingin widget tampil secara horizontal, seperti tombol yang diletakkan berdampingan atau gambar yang saling bersebelahan.

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Saya menggunakan beberapa elemen input Flutter untuk mengumpulkan informasi produk, yaitu:

- TextFormField untuk Nama: Untuk memasukkan nama produk.
- TextFormField untuk Harga: Untuk memasukkan harga produk dalam format angka.
- TextFormField untuk Deskripsi: Untuk memasukkan deskripsi produk.
- TextFormField untuk Stock: Untuk memasukkan informasi tentang stockproduk.

Selain itu, ada beberapa elemen input Flutter lainnya yang tidak digunakan dalam formulir ini, yaitu:

- DropdownButtonFormField: Untuk memilih nilai dari daftar dropdown.
- CheckboxListTile: Untuk pilihan ya/tidak menggunakan kotak centang.
- RadioListTile: Untuk memilih satu opsi dari beberapa pilihan.
- SwitchListTile: Untuk memilih antara dua status menggunakan toggle switch.
- Slider: Untuk memilih nilai dalam rentang tertentu.
- Date & Time Pickers: Untuk memilih tanggal dan waktu.

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk memastikan konsistensi tema dalam aplikasi Flutter, kita dapat mendefinisikan tema di dalam widget MaterialApp melalui properti theme. Tema yang ditentukan di sini akan diterapkan secara otomatis pada semua widget yang mendukung theming, sehingga menghasilkan tampilan yang seragam di seluruh aplikasi. Dengan menggunakan Theme.of(context), kita dapat mengakses berbagai properti tema yang telah ditetapkan, seperti warna, font, dan gaya lainnya, yang kemudian dapat digunakan pada berbagai widget sesuai kebutuhan.

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

- Navigasi Dasar dengan Navigator.push dan Navigator.pop
Metode ini digunakan untuk navigasi sederhana, seperti berpindah ke halaman baru dan kembali ke halaman sebelumnya. Navigator.push menambahkan halaman baru ke dalam stack navigasi, sementara Navigator.pop mengeluarkan halaman paling atas dari stack, yang memungkinkan pengguna untuk kembali ke halaman sebelumnya.

- Named Routes
Dengan named routes, kita dapat menetapkan nama tertentu untuk setiap rute aplikasi. Ini memungkinkan kita untuk menggunakan nama rute saat melakukan navigasi antarhalaman, yang membuat navigasi lebih rapi dan terstruktur, terutama pada aplikasi dengan banyak halaman.

- Mendefinisikan Routes di dalam MaterialApp
Pada widget MaterialApp, kita bisa mendefinisikan semua rute aplikasi melalui properti routes. Dengan cara ini, setiap halaman memiliki nama yang unik, dan kita dapat menggunakan Navigator.pushNamed untuk menavigasi ke halaman tertentu. Pendekatan ini membantu menjaga navigasi aplikasi tetap terorganisir.

- Nested Navigators
Untuk aplikasi yang lebih kompleks, seperti aplikasi dengan beberapa level navigasi (misalnya, menggunakan tab atau drawer), kita dapat menggunakan nested navigators. Dengan navigasi bertingkat, setiap bagian aplikasi memiliki stack navigasinya sendiri, memungkinkan pengguna untuk berpindah antarhalaman dalam satu bagian tanpa mempengaruhi stack navigasi utama.

## Berikut implementasi dalam pembuatan  Flutter Navigation, Layouts, Forms, and Input Elements

**1. Menambahkan Drawer Menu Untuk Navigasi**
  - Membuat direktori baru bernama widgets di subdirektori lib/.
  - Kemudian, membuat berkas dengan nama left_drawer.dart
  - Tambahkan impor untuk halaman-halaman yang ingin dimasukkan navigasinya ke dalam Drawer Menu
  - Memasukkan routing untuk halaman-halaman yang diimpor Navigator.pop(context); // Menutup drawer Navigator.push( context, MaterialPageRoute( builder: (context) => const ProductEntryFormPage(), ), );
  - Menghias drawer dengan memasukkan drawer header di TODO: Bagian drawer header
  - Memasukka drawer ke halaman yang diinginkan // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold drawer: const LeftDrawer(),
    
**2. Menambahkan Form dan Elemen Input**
  - Membuat berkas baru pada direktori lib dengan nama productentry_form.dart
  - Menambahkan kerangka dasar untuk membuat halaman form entri
  - Ubah widget Placeholder
  - Membuat struktur dasar halaman form dengan material design ( Siap untuk menampung form fields yang bisa di-scroll, sudah memiliki styling dasar (warna primary untuk app bar dan teks putih), siap untuk ditambahkan drawer)
  - Membuat variabel baru bernama _formKey dengan nilai GlobalKey(); lalu tambahkan _formKey tersebut ke dalam atribut key milik widget Form. Atribut key akan berfungsi sebagai handler dari form state, validasi form, dan penyimpanan form.
  - Mengisi widget Form dengan field. Membuat beberapa variabel untuk menyimpan input dari masing-masing field yang akan dibuat.
  - Membuat form field untuk masing masing field/variable (berisi validasi beserta UI/UX)
  - Buatlah tombol sebagai child selanjutnya dari Column. Bungkus tombol ke dalam widget Padding dan Align. Tombol belum untuk menyimpan data ke database (hanya untuk memunculkan pop-up)
    
**3. Memunculkan Data**
  - Menambahkan fungsi showDialog() pada bagian onPressed() dari potongan kode yang sebelumnya ditambahkan. Lalu memunculkan widget AlertDialog pada fungsi tersebut.
    
**4. Menambahkan Fitur Navigasi pada Tombol​**
  - Buat agar kode yang terletak pada atribut onTap dari InkWell dapat melakukan navigasi ke route lain

</details>

<details>
  <summary>TUGAS 9</summary>
   
  **TUGAS INDIVIDU 9**

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON sangat penting karena:
- **Memberikan Struktur Data**: Model memetakan data JSON ke dalam objek aplikasi yang jelas.
- **Memastikan Format Data**: Memastikan data JSON sesuai dengan struktur yang diharapkan.
- **Memudahkan Validasi dan Debugging**: Meminimalkan risiko error dengan tipe data eksplisit.
- **Meningkatkan Keandalan dan Pemeliharaan**: Kode lebih mudah dipahami dan dikelola.

Tanpa model, kita masih bisa menggunakan `Map` atau `List`, namun kode akan sulit dipahami, rentan terhadap error runtime, dan konsistensinya kurang terjamin.

---

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini 
Library `http` di Flutter digunakan untuk:
- **Mengelola Protokol HTTP**: Memungkinkan aplikasi untuk melakukan permintaan seperti `GET`, `POST`, `PUT`, dan `DELETE`.
- **Komunikasi dengan Server**: Memfasilitasi pengiriman dan penerimaan data dari server.
  
Dalam konteks tugas ini, library `http` digunakan untuk menghubungkan aplikasi Flutter dengan server Django, baik untuk mengambil data maupun mengirim data seperti input formulir.

---

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` adalah kelas yang mengelola:
- **Autentikasi Berbasis Cookie**: Memastikan sesi pengguna tetap aktif.
- **Pengelolaan Sesi**: Menyimpan cookie untuk login, logout, dan permintaan lainnya.
- **Kemudahan Akses Global**: Dibagikan melalui `Provider`, memungkinkan semua komponen aplikasi Flutter mengakses sesi pengguna.

Hal ini memastikan operasi autentikasi dan komunikasi dengan server berjalan konsisten di seluruh aplikasi.

---

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter. 
1. **Input Data**: Pengguna mengisi formulir (misalnya, detail menu: URL gambar, nama, harga, status, deskripsi).
2. **Validasi Data**: Data diverifikasi di sisi aplikasi sebelum dikirim.
3. **Pengiriman ke Server**: Menggunakan HTTP POST melalui `http` atau `pbp_django_auth`, data dikirim dalam format JSON melalui `CookieRequest`.
4. **Pemrosesan oleh Server**: Data diterima oleh Django, diproses, dan disimpan dalam database.
5. **Respons ke Flutter**: Server mengirimkan respons JSON (status dan data).
6. **Tampilkan di UI**: Flutter memproses respons dan memperbarui tampilan, seperti daftar menu yang diperbarui.

---

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
#### a. Login
- **Input Data**: Pengguna memasukkan username dan password.
- **Permintaan Verifikasi**: Flutter mengirimkan data ke endpoint Django.
- **Verifikasi Berhasil**: Server mengembalikan cookie sesi yang disimpan di Flutter melalui `CookieRequest`.
  
#### b. Register
- **Input Data**: Pengguna mengisi formulir pendaftaran.
- **Pembuatan Akun Baru**: Data dikirim ke server Django untuk dibuatkan akun.
- **Akun Baru Tersimpan**: Jika valid, akun disimpan di database.

#### c. Logout
- **Permintaan Logout**: Flutter mengirimkan permintaan untuk mengakhiri sesi.
- **Penghapusan Cookie**: Server menghapus cookie sesi, dan status login di Flutter juga dihapus.

---

### 6. Implementasi Checklist Secara Step-by-Step
1. **Membuat Model**:
   - Identifikasi data yang akan dipetakan (misalnya, menu).
   - Buat kelas Dart untuk merepresentasikan data JSON.
   - Tambahkan metode `fromJson` dan `toJson` untuk konversi.

2. **Mengimplementasikan Library `http`**:
   - Tambahkan dependensi `http` di `pubspec.yaml`.
   - Buat fungsi untuk melakukan permintaan HTTP seperti `GET` dan `POST`.
   - Gunakan endpoint Django sebagai tujuan.

3. **Menambahkan `CookieRequest`**:
   - Implementasikan `CookieRequest` untuk mengelola cookie.
   - Integrasikan `CookieRequest` dengan fitur login dan logout.

4. **Mekanisme Pengiriman Data**:
   - Buat form di Flutter untuk menerima input pengguna.
   - Validasi data sebelum mengirim ke server.
   - Kirim data melalui `http` atau `CookieRequest`.

5. **Autentikasi**:
   - Tambahkan logika autentikasi di server Django.
   - Implementasikan UI login dan register di Flutter.
   - Integrasikan dengan Django menggunakan cookie untuk menjaga sesi.

6. **Debugging dan Testing**:
   - Tes setiap langkah menggunakan data dummy.
   - Verifikasi respons server untuk memastikan alur kerja.

7. **Integrasi dengan UI**:
   - Pastikan data yang diterima dari server tampil di UI aplikasi Flutter.
   - Tambahkan error handling untuk memastikan pengalaman pengguna yang baik.



