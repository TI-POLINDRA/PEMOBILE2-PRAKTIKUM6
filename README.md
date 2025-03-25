# Praktikum 6: **Integrasi SQLite, Push Notification, dan Testing**

## **Tujuan Pembelajaran**

1. Mengimplementasikan CRUD dengan SQLite.
2. Mengintegrasikan push notification.
3. Menulis unit test dan widget test untuk memvalidasi fungsionalitas.

## **Alat dan Bahan**

- Flutter SDK (minimal versi 3.0)
- Package:
    - **`sqflite`, `sqflite_common_ffi`** & **`path_provider`** (SQLite)
    - **`flutter_local_notifications`** (Notifikasi)
    - **`test`, `build_runner`** & **`mockito`** (Testing)
- IDE: VS Code/Android Studio
- Emulator/Perangkat Fisik

## **Kesimpulan Praktikum:**

**Aplikasi Task Manager dengan SQLite & Notifikasi Lokal**

Praktikum ini telah mengajarkan kita untuk membangun aplikasi Flutter yang mengintegrasikan:

1. **Manajemen State dengan SQLite**:
    - Menggunakan `sqflite` untuk menyimpan data task secara lokal.
    - Implementasi **CRUD** (Create, Read, Update, Delete) yang efisien.
2. **Notifikasi Lokal Tanpa Firebase**:
    - Memanfaatkan `flutter_local_notifications` untuk menampilkan reminder.
    - Notifikasi otomatis terpicu saat:
        - Task baru ditambahkan.
        - Deadline task terlewat.
3. **Testing yang Komprehensif**:
    - **Unit Test**: Memvalidasi logika bisnis (seperti operasi database).
    - **Widget Test**: Memastikan UI bereaksi sesuai interaksi pengguna.
4. **Arsitektur Terstruktur**:
    - Pemisahan jelas antara **layer UI**, **logika bisnis**, dan **data**.
    - Penggunaan **design pattern** seperti *Repository Pattern* (`TaskService`).

### **Pelajaran Penting**

✅ **SQLite**: Cocok untuk penyimpanan lokal sederhana, tetapi memerlukan manajemen manual (migrasi, transaction).

✅ **Notifikasi Lokal**: Lebih ringan daripada FCM, tetapi terbatas untuk kasus *in-app reminder*.

✅ **Testing**: Kunci untuk memastikan keandalan aplikasi.

### **Dapat Dikembangkan Lebih Lanjut**

- Tambahkan fitur **sinkronisasi dengan backend** (REST API).
- Implementasi **bloc/cubit** untuk state management yang lebih kompleks.
- Gunakan **isolate** untuk operasi database berat.

Dengan memahami konsep ini, kita siap mengembangkan aplikasi Flutter yang **stabil, terukur, dan kaya fitur**! 🚀

**"Talk is cheap. Show me the code."**

— Linus Torvalds

🔥 **Selamat mencoba dan terus berinovasi!** 🔥

## **Referensi**

- [SQLite dengan Flutter](https://pub.dev/packages/sqflite)
- [Notifikasi Lokal](https://pub.dev/packages/flutter_local_notifications)
- [Testing di Flutter](https://flutter.dev/docs/testing)