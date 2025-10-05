import 'dart:io';

void main() {
  // Daftar menu dan harga
  Map<String, int> menuMakanan = {
    'Nasi Goreng': 15000,
    'Mie Ayam': 12000,
    'Ayam Geprek': 18000,
    'Sate Ayam': 20000,
  };

  Map<String, int> menuMinuman = {
    'Es Teh': 5000,
    'Es Jeruk': 6000,
    'Kopi': 8000,
    'Air Mineral': 4000,
  };

  String ulangPesan;
  do {
    print('=== SELAMAT DATANG DI RESTORAN LEZAT ===');
    print('\n--- Menu Makanan ---');
    menuMakanan.forEach((nama, harga) {
      print('$nama - Rp$harga');
    });

    print('\n--- Menu Minuman ---');
    menuMinuman.forEach((nama, harga) {
      print('$nama - Rp$harga');
    });

    // Proses pemesanan
    int totalHarga = 0;
    String lanjut;
    do {
      stdout.write('\nMasukkan nama menu yang ingin dipesan: ');
      String? pesanan = stdin.readLineSync();

      if (menuMakanan.containsKey(pesanan)) {
        totalHarga += menuMakanan[pesanan]!;
        print('$pesanan ditambahkan ke pesanan Anda.');
      } else if (menuMinuman.containsKey(pesanan)) {
        totalHarga += menuMinuman[pesanan]!;
        print('$pesanan ditambahkan ke pesanan Anda.');
      } else {
        print('Menu tidak ditemukan!');
      }

      stdout.write('Apakah ingin menambah menu lagi? (y/n): ');
      lanjut = stdin.readLineSync()!.toLowerCase();
    } while (lanjut == 'y');

    print('\nTotal harga pesanan Anda: Rp$totalHarga');

    // Proses pembayaran
    int bayar = 0;
    while (bayar < totalHarga) {
      stdout.write('Masukkan uang pembayaran: Rp');
      bayar = int.parse(stdin.readLineSync()!);
      if (bayar < totalHarga) {
        print('Uang Anda kurang! Silakan tambahkan lagi.');
      }
    }

    int kembalian = bayar - totalHarga;
    print('Pembayaran berhasil! Kembalian Anda: Rp$kembalian');

    // Konfirmasi pesan ulang
    stdout.write('\nApakah Anda ingin memesan lagi? (y/n): ');
    ulangPesan = stdin.readLineSync()!.toLowerCase();
    print('');

  } while (ulangPesan == 'y');

  print('Terima kasih telah memesan di Restoran Lezat!');
}
