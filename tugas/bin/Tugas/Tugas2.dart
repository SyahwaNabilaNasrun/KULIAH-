import 'dart:io';

void main() {
  // Meminta input skor dari user
  stdout.write("Masukkan skor (0 - 100): ");
  String? input = stdin.readLineSync();

  // Cek apakah input kosong atau tidak
  if (input == null || input.isEmpty) {
    print("Error: Input tidak boleh kosong.");
    return;
  }

  // Ubah input menjadi angka (int)
  int? skor = int.tryParse(input);

  // Validasi apakah input berupa angka
  if (skor == null) {
    print("Error: Input harus berupa angka.");
    return;
  }

  // Validasi range nilai 0 - 100
  if (skor < 0 || skor > 100) {
    print("Error: Skor harus berada dalam rentang 0 - 100.");
    return;
  }

  // Tentukan grade berdasarkan skor
  String grade;
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70 && skor <= 84) {
    grade = "B";
  } else if (skor >= 60 && skor <= 69) {
    grade = "C";
  } else if (skor >= 50 && skor <= 59) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Tampilkan hasil
  print("Skor Anda: $skor");
  print("Grade Anda: $grade");
}
