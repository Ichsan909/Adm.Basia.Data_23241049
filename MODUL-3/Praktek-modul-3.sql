-- Modul    : 3 Nilai Literal, Operator, Fungsi, Date, dan Klausal WHERE
-- Nama     : MAULANA IHSAN
-- NIM      : 23241049
-- Kelas    : PTI 4B

-- menggunakan database
USE pti_mart;

--- Praktek 1
--- Menggunakan statemen SELECT untuk menampilkan nilai literal, 
--- berikut ini perintahnya :
SELECT 77;
SELECT 77 AS angka;

--- Praktek 2
--- Menggunakan `SELECT` Statement untuk menampilkan beberapa 
--- nilai literal dengan tipe data yang berbeda
SELECT 77 AS angka, true AS nilai_logika, 'PTI' AS teks;

--- Praktek 3
--- Menggunakan `SELECT` statemen untuk menampilkan `NULL`
SELECT NULL AS kosong;

--- Praktek 4
--- Menggunakan SELECT Statement untuk melakukan kalkulasi dengan ekspresi matematika.
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

--- Latihan Mandiri 1
--- hitung 4*2 (4 dikali 2)
SELECT 4*2 AS hasil1;

--- hitung (4*8)%7
SELECT (4*8)%7 AS hasil2;

--- hitung (4*8) MOD 7
SELECT (4*8) MOD 7 AS hasil3;

--- Praktek 5
--- Menggunakan `SELECT` Statement untuk melakukan 
--- kalkulasi *field* *table* dengan ekspresi matematika
SELECT qty*harga AS total_beli FROM tr_penjualan;

--- Praktek 6
--- Menggunakan SELECT Statement untuk melakukan operasi perbandingan.
SELECT 5=5, 5<>5, 5<>4, 5!=5,5!=4, 5>4;

--- Latihan Mandiri 2
--- lakukan perbandingan 1 = true
SELECT 1 = TRUE AS hasil1;

--- lakukan perbandingan 1 = false
SELECT 1 = FALSE AS hasil2;

--- lakukan perbandingan 5 >= 5
SELECT 5 >= 5 AS hasil3;

--- lakukan perbandingan 5.2 = 5.20000
SELECT 5.2 = 5.20000 AS hasil4;

--- lakukan perbandingan NULL = 1
SELECT NULL = 1 AS hasil5;

--- lakukan perbandingan NULL = NULL
SELECT NULL = NULL AS hasil6;

--- Praktek 7
--- Melakukan operasi perbandingan pada field qty table tr_penjualan
SELECT nama_produk, qty > 3 FROM tr_penjualan;

--- Praktek 8
--- Mencoba menggunakan beragam fungsi dalam satu statemen SELECT
SELECT POW(3,2), ROUND(3.14), ROUND(3.54), 
	ROUND(3.155, 1), ROUND(3.155, 2),
	FLOOR(4.28), FLOOR(4.78), 
	CEILING(4.39), CEILING(4.55);

--- Praktek 9
--- Mencoba menggunakan beragam fungsi DATE dalam satu statemen SELECT
SELECT NOW(), YEAR('2022-05-03'), DATEDIFF('2022-07-22', '2022-05-03'), DAY('2022-05-03');

--- Latihan Mandiri 3
--- Hitung selisih tanggal '2022-07-23' dengan tanggal saat ini
SELECT DATEDIFF(CURDATE(), '2022-07-23') AS selisih_hari;

--- Ekstrak elemen tahun dari tanggal ini '2022-07-23'
SELECT YEAR('2022-07-23') AS tahun;

--- Ekstrak eleman bulan dari tanggal ini '2022-07-23'
SELECT MONTH('2022-07-23') AS bulan;

--- Ekstrak elemen hari dari date ini '2022-07-23'
SELECT DAY('2022-07-23') AS hari;

--- Ekstrak elemen tahun dari tanggal saat ini
SELECT YEAR(CURDATE()) AS tahun_sekarang;

--- Praktek 11
--- Mengambil data nama_produk, dan qty dari tabel penjualan yang qty lebih dari 3
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab WHERE qty>3;

--- Praktek 12
--- Mengambil dara nama produk dan qty yang terjual dari tabel penjualan 
--- yang qty lebih dari 3 dan transaksinya terjadi pada bulan Juni
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE qty>3 AND month(tgl_transaksi)=6;

--- Praktek 13
--- Mengambil nama produk, qty, dan tanggal transaksi 
--- untuk produk dengan nama 'Flaskdisk 32 GB' dari tabel penjualan
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE nama_produk = 'Flaskdisk 32 GB';

--- Praktek 14
--- Mengambil nama produk dari tabel penjualan yang nama produknya memiliki huruf 'f' sebagai awal kata
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%';

--- Latihan Mandiri 4
--- Ambil nama_produk yang memiliki karakter kedua ‘a’ pada table tr_penjualan
SELECT nama_produk FROM tr_penjualan WHERE nama_produk LIKE '_a%';

--- Ambil kategori_produk yang mengandung huruf ‘t’ pada table ms_produk
SELECT kategori_produk FROM ms_produk WHERE kategori_produk LIKE '%t%';

--- Ambil kategori_produk yang mengandung karakter ‘un’ pada table ms_produk
SELECT kategori_produk FROM ms_produk WHERE kategori_produk LIKE '%un%';

--- Praktek 15
--- Mengambil nama produk dari table tr_penjualan yang
--- memiliki pola teks berawalan huruf F dan qty penjualan di atas 2
SELECT nama_produk 
FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'f%' AND qty > 2;

