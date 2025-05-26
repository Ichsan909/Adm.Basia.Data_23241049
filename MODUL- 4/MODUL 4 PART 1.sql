-- NAMA  : Maulana Ihsan
-- NIM   : 23241049
-- KELAS : B
-- MODUL : ORDER BY, Fungsi Agregasi, GROUP BY, HAVING

-- Gunakan database:
USE pti_mart;

-- ORDER BY: digunakan untuk menyusun urutan data sesuai nilai field atau nilai hasil olahan field

-- Ambil nama produk dan qty dari tabel penjualan, urutkan berdasarkan qty (default ASC)
SELECT nama_produk, qty 
FROM tr_penjualan 
ORDER BY qty;

-- Ambil nama produk dan qty dari tabel penjualan, urutkan berdasarkan qty dan nama produk
SELECT nama_produk, qty 
FROM tr_penjualan 
ORDER BY qty, nama_produk;


-- Latihan Mandiri
SELECT * 
FROM tr_penjualan_dqlab 
ORDER BY qty, tgl_transaksi;

SELECT * 
FROM ms_pelanggan 
ORDER BY nama_pelanggan;

SELECT * 
FROM ms_pelanggan 
ORDER BY alamat;


-- ORDER BY ASC dan DESC

-- Ambil nama produk dan qty dari tabel penjualan, urutkan qty dari besar ke kecil
SELECT nama_produk, qty 
FROM tr_penjualan 
ORDER BY qty DESC;

-- Ambil nama produk dan qty dari tabel penjualan, urutkan berdasarkan qty dan nama produk dari besar ke kecil
SELECT nama_produk, qty 
FROM tr_penjualan 
ORDER BY qty DESC, nama_produk DESC;


-- Latihan Mandiri 2
SELECT * 
FROM tr_penjualan_dqlab 
ORDER BY qty, tgl_transaksi DESC;

SELECT * 
FROM ms_pelanggan 
ORDER BY nama_pelanggan DESC;

SELECT * 
FROM ms_pelanggan 
ORDER BY alamat DESC;

-- ORDER BY dari hasil perhitungan
-- ambil nama produk, qty, harga, harga*qty dari tb_penjualan urutkan harga*qty besar-kecil
SELECT nama_produk, harga, qty, harga*qty AS total
FROM tr_penjualan
ORDER BY total DESC;

-- latihan mandiri 3
SELECT nama_produk, harga, qty, diskon_persen, 
(harga * qty) AS total_harga, (harga * qty) - ((diskon_persen / 100) * (harga * qty)) AS total_bayar
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY diskon_persen DESC, total_bayar DESC;

-- ORDER BY menggunakan WHERE
-- ambil nama produc urut qty
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk LIKE 'F'
ORDER BY qty DESC;

-- Tambahan dari Latihan Mandiri:
-- 1. Tampilkan semua kolom dari transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi
SELECT *
FROM tr_penjualan
WHERE diskon_persen IS NOT NULL
ORDER BY harga DESC;

-- 2. Tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan 
--    yang memiliki harga minimal seratus ribu rupiah dan diurutkan berdasarkan harga tertinggi
SELECT nama_produk, qty AS kuantitas_pembelian, harga
FROM tr_penjualan
WHERE harga >= 100000
ORDER BY harga DESC;
-- 3. Tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan 
--    yang memiliki harga minimal seratus ribu rupiah atau nama produk berawalan karakter 'T'
--    dan diurutkan berdasarkan diskon tertinggi
SELECT nama_produk, qty AS kuantitas_pembelian, harga
FROM tr_penjualan
WHERE harga >= 100000 OR nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;

-- Cek data pelanggan
SELECT * FROM ms_pelanggan;
-- 