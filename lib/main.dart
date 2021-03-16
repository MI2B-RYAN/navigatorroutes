import 'package:flutter/material.dart';
import './screens/places_screen.dart';
import './screens/detail_screen.dart';
import './screens/category_screen.dart'; //import file categoryscreen yang nantinya berfungsi untuk menampilkan list kategori

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pariwisata',
      //KITA SET THEME-NYA SECARA UMUM AGAR KETIKA MELAKUKAN PERUBAHAN, CUKUP PADA SETTING DIBAWAH AKAN MEMBERIKAN EFEK KE SEMUA PAGE YANG ADA
      theme: ThemeData(
        primaryColor: Colors.pinkAccent, //WARNA UTAMA KITA GUNAKAN pinkAccent
        accentColor: Colors.pink, //SECONDARY COLORNYA KITA SET KE PINK
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //WARNA BACKGROUND CANVASNYA PAKAI RGBO DIMANA CODE DIATAS AKAN MENGHASILKAN WARNA KUNING 
      
        //SET JUGA KONFIGURASI UNTUK TEXT-NYA
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), //TITLE KITA GUNAKAN BOLD DAN SIZE 20
          subhead: TextStyle(fontWeight: FontWeight.bold), //SUBHEADNYA CUKUP BOLD SAJA
        )
      ),
        
      //SET ROUTING YANG AKAN MENGATUR ALUR APLIKASI
      routes: {
  '/': (ctx) => CategoryScreen(),
  '/places': (ctx) => PlacesScreen(),
    '/detail': (ctx) => DetailScreen() //TAMBAHKAN LINE INI
  },
      );
    }
  
    PlacesScreen() {}
}