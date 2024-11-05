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

              
        
