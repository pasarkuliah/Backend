import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfirmationScreen extends StatelessWidget {
  void _openWhatsApp() async {
    String url =
        'https://wa.me/+6281375330581?text=Halo%20saya%20ingin%20mengetahui%20informasi%20terkait%20status%20pengiriman%20barang%20saya';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Logo_2.png', // Replace with actual asset path
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Pesanan Diterima !!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.green, // Set the color to green
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Terima kasih atas pesanan Anda. Pesanan Anda sedang kami proses dan akan segera kami konfirmasi melalui aplikasi WhatsApp',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                onPressed: () {
                  // Add WhatsApp deep link or functionality
                  _openWhatsApp();
                },
                child: Text(
                  'Informasi Lebih Lanjut (KLIK DISINI)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
