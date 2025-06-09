USE pti_mart;
-- Fungsi Agregesi
-- ambil untuk mengolah beberapa baris/row data untuk menghasilkan nilai baru
-- praktek 7
-- hitung atau jumlahkan seluruh nilai dari baris dari  qty pada tabel penjualan
SELECT qty FROM tr_penjualan;
SELECT SUM(qty) FROM tr_penjualan;

-- praktek 8
-- hitung seluruh baris pada tabel penjualan
SELECT * FROM tr_penjualan;
SELECT COUNT(*) FROM tr_penjualan;

-- praktek 9
-- mengambil 2 fungsi agregesi dalam satu query sql
SELECT SUM(qty), COUNT(*) FROM tr_penjualan;

-- praktek 10
-- hitung rata rata penjualan, penjualan tertinggi per transaksi, dan penjualan terendah per transaksi
SELECT AVG(qty), MAX(qty), MIN(qty)
FROM tr_penjualan;

-- praktek 11
-- mengkombinasikan fungsi agregesi dengan kolom tertentu (nama_produk, kolom tanggal transaksi
SELECT  tgl_transaksi, nama_produk, MAX(qty) FROM tr_penjualan;

-- COUNT(DISTINCT)
-- digunakan untuk menghitung nilai yang unik saja
-- menghitunng nilai unik yang ada pada nama produk di tabel penjualan 
-- tanpa distinct
-- praktek 12
SELECT COUNT(nama_produk) FROM tr_penjualan;

-- praktek 13
-- dengan distinct
SELECT COUNT(distinct nama_produk) FROM tr_penjualan;
SELECT COUNT(nama_produk), COUNT(distinct nama_produk) FROM tr_penjualan;

-- GROUP BY
-- mengelompokan isi data dari satu atau beberapa kolom, biasanya digabung dengan fungsi agregesi
-- GROUP BY 1 KOLOM
-- praktek 14
SELECT nama_produk FROM tr_penjualan GROUP BY nama_produk;
SELECT nama_produk FROM  tr_penjualan;

-- praktek 15
-- mengelompokan nilai nama produk dan qty pada tabel penjualan
SELECT nama_produk, qty from tr_penjualan
GROUP BY nama_produk, qty;

-- praktek 16
-- ambil qty dari nama produk bedsarakan hasil pengelompokan  nama produk
SELECT nama_produk, SUM(qty) FROM tr_penjualan GROUP BY nama_produk;

-- praktek 17
-- ambil qty dari nama produk bedasarkan hasil pengelompokan  nama produk urut dari besar terkecil
SELECT nama_produk, SUM(qty) FROM tr_penjualan GROUP BY nama_produk ORDER BY SUM(qty) DESC;

-- HAVING 
-- digunakan sebagai filtering untuk GROUP BY dan fungsi agregesi
-- praktek 18
-- ambil jumlah qty 
select nama_produk,SUM(qty)
FROM tr_penjualan
GROUP BY nama_produk
HAVING sum (qty) > 2
ORDER BY SUM(qty) DESC;

-- Tugas mandiri
-- meliahat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah di atas nilai 4
SELECT 
    nama_produk,
    kelompok_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM 
    penjualan
GROUP BY 
    nama_produk, kelompok_produk
HAVING 
    SUM(jumlah_terjual) > 4;

-- melihat daftar nama produk yang  total jumlah produk terjual perkelompok nama produk sama dengan 9
SELECT 
    nama_produk,
    kelompok_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM 
    penjualan
GROUP BY 
    nama_produk, kelompok_produk
HAVING 
    SUM(jumlah_terjual) = 9;

-- melihat daftar kelompok nama produk dan totoal nilai penjualan (harga dikalikan jumlah dikurangi diskon) dengan dan urutan berdasarkan nilai penjualan terbesar
SELECT 
    kelompok_produk,
    nama_produk,
    SUM((harga * jumlah_terjual) - diskon) AS total_penjualan
FROM 
    penjualan
GROUP BY 
    kelompok_produk, nama_produk
ORDER BY 
    total_penjualan DESC;