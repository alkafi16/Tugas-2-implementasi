Anggota Kelompok:

Muhamad nu'man alkafi 2211102223 
Ario mukti elsandy 2211102184
Rafli kurniawan 2211102201

PSPEC bagian untuk login website angkringan Nama Program: LoginUser

Deskripsi Fungsionalitas: Fungsi ini menangani proses login dan logout pengguna, memeriksa apakah pengguna sudah login, dan menyimpan data pengguna dalam sesi.

Spesifikasi Input dan Output:

Input: email: Alamat email pengguna. password: Kata sandi pengguna. Output: Status login (true atau false). Pesan kesalahan jika login gagal. Pesan keberhasilan jika login berhasil. Prosedur atau Algoritma:

Saat objek login dibuat, buat atau baca sesi pengguna. Jika ada parameter logout di URL, lakukan proses logout. Jika ada data login yang dikirim melalui POST, periksa validitasnya. Jika email atau password kosong, beri pesan kesalahan. Buat koneksi ke database dan periksa apakah berhasil. Lakukan query untuk mendapatkan informasi pengguna berdasarkan email. Jika pengguna ditemukan dan password cocok, simpan data pengguna ke sesi. Jika tidak cocok, tampilkan pesan kesalahan. Proses logout akan menghancurkan sesi dan memberikan pesan bahwa pengguna telah keluar.
