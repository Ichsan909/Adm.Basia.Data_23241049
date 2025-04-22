-- Nama : Maulana Ihsan
-- Nim : 23241049
-- Kelas : B 
-- Modul 2 (SELECT)

-- Membuat database
CREATE DATABASE pti_mart;

-- Menggunakan database
USE pti_mart;

-- Cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- SELECT
-- Menggunakan SELECT untuk 1 tabel
-- Mengambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- Mengambil lebih dari satu kolom dari sebuah tabel
SELECT nama_produk harga FROM ms_produk;

-- Mengambil semua kolom dari sebuah tabel
SELECT * FROM ms_produk;

-- Latihan
-- Mengambil kode produk dan nama produk dari tabel produk
SELECT kode_produk, nama_produk FROM ms_produk;


-- Mengambil seluruh kolom dari tabel pnjualan
SELECT * FROM tr_penjualan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek database yang hirarkinya lebih tinggi
-- Menggunakan PREFIX nama tabel untuk kolom nama_produk dari tabel_produk
SELECT ms_produk. nama_produk FROM ms_produk;

-- Menggunakan nama database dan tabel sebagai prefix untuk kolom nama_produk
SELECT pti_mart. ms_produk. nama_produk FROM ms_produk;

-- ALIAS, nama sementara untuk objek database asli
-- Mengganti sementara kolom nama produk dengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- Mengganti sementara tabel dengan ALIAS
SELECT nama_produk FROM ms_produk AS msp;

-- Kombinasikan PREFIX dan ALIAS
SELECT msp.nama_produk From ms_produk AS msp;

-- CASE 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan;

-- CASE 2
SELECT nama_produk, harga FROM ms_produk;
