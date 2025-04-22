-- nama: maulana ihsan --
-- nim : 23241049 ----

-- Tabel Pemilik Toko
CREATE TABLE pemilik_toko (
    id_toko INT PRIMARY KEY,
    nama_toko VARCHAR(100),
    email VARCHAR(100),
    no_tlpn VARCHAR(20),
    alamat TEXT
);

-- Tabel Karyawan
CREATE TABLE karyawan (
    id_penjual INT PRIMARY KEY,
    nama VARCHAR(100),
    email VARCHAR(100),
    no_hp VARCHAR(20),
    alamat TEXT,
    id_toko INT,
    FOREIGN KEY (id_toko) REFERENCES pemilik_toko(id_toko)
);

-- Tabel Kue
CREATE TABLE kue (
    id_barang INT PRIMARY KEY,
    harga_kue DECIMAL(10,2),
    stok INT,
    harga DECIMAL(10,2),
    id_penjual INT,
    FOREIGN KEY (id_penjual) REFERENCES karyawan(id_penjual)
);

-- Tabel Pembeli
CREATE TABLE pembeli (
    id_pembeli INT PRIMARY KEY,
    nama VARCHAR(100),
    email VARCHAR(100),
    no_hp VARCHAR(20),
    alamat TEXT
);

-- Tabel Transaksi
CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY,
    id_pembeli INT,
    id_barang INT,
    jumlah_barang INT,
    FOREIGN KEY (id_pembeli) REFERENCES pembeli(id_pembeli),
    FOREIGN KEY (id_barang) REFERENCES kue(id_barang)
);

-- Data untuk tabel pemilik_toko
INSERT INTO pemilik_toko VALUES
(1, 'Toko Manis', 'manis@email.com', '081234567890', 'Jalan Girisakak'),
(2, 'Kue Kita', 'kuekita@email.com', '082233445566', 'Jalan Kuripan'),
(3, 'Sweet House', 'sweet@house.com', '081998877665', 'Jalan Dusun Buntage'),
(4, 'Cake & Co', 'cakeco@mail.com', '081234111122', 'Jalan Gerung'),
(5, 'Kue Laris', 'laris@mail.com', '082344556677', 'Jalan Tempos');

-- Data untuk tabel karyawan
INSERT INTO karyawan VALUES
(1, 'Maulana Ihsan', 'ihsan@email.com', '08120000111', 'Jalan Girisakak', 1),
(2, 'Putra', 'putra@email.com', '08120000222', 'Jalan Kuripan', 2),
(3, 'Akmal', 'akmal@email.com', '08120000333', 'Jalan Dusun Buntage', 3),
(4, 'Solihin', 'solihin@email.com', '08120000444', 'Jalan Gerung', 4),
(5, 'Karni', 'karni@email.com', '08120000555', 'Jalan Tempos', 5);

-- Data untuk tabel kue
INSERT INTO kue VALUES
(1, 15000.00, 20, 15000.00, 1),
(2, 12000.00, 30, 12000.00, 2),
(3, 18000.00, 15, 18000.00, 3),
(4, 10000.00, 25, 10000.00, 4),
(5, 20000.00, 10, 20000.00, 5);

-- Data untuk tabel pembeli
INSERT INTO pembeli VALUES
(1, 'Maulana Ihsan', 'ihsan@email.com', '08120000111', 'Jalan Girisakak'),
(2, 'Putra', 'putra@email.com', '08120000222', 'Jalan Kuripan'),
(3, 'Akmal', 'akmal@email.com', '08120000333', 'Jalan Dusun Buntage'),
(4, 'Solihin', 'solihin@email.com', '08120000444', 'Jalan Gerung'),
(5, 'Karni', 'karni@email.com', '08120000555', 'Jalan Tempos');

-- Data untuk tabel transaksi
INSERT INTO transaksi VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3),
(4, 4, 4, 2),
(5, 5, 5, 1);



-- Data untuk tabel pemilik_toko
INSERT INTO pemilik_toko VALUES
(1, 'Toko Manis', 'manis@email.com', '081234567890', 'Jalan Girisakak'),
(2, 'Kue Kita', 'kuekita@email.com', '082233445566', 'Jalan Kuripan'),
(3, 'Sweet House', 'sweet@house.com', '081998877665', 'Jalan Dusun Buntage'),
(4, 'Cake & Co', 'cakeco@mail.com', '081234111122', 'Jalan Gerung'),
(5, 'Kue Laris', 'laris@mail.com', '082344556677', 'Jalan Tempos');

-- Data untuk tabel karyawan
INSERT INTO karyawan VALUES
(1, 'Maulana Ihsan', 'ihsan@email.com', '08120000111', 'Jalan Girisakak', 1),
(2, 'Putra', 'putra@email.com', '08120000222', 'Jalan Kuripan', 2),
(3, 'Akmal', 'akmal@email.com', '08120000333', 'Jalan Dusun Buntage', 3),
(4, 'Solihin', 'solihin@email.com', '08120000444', 'Jalan Gerung', 4),
(5, 'Karni', 'karni@email.com', '08120000555', 'Jalan Tempos', 5);

-- Data untuk tabel kue
INSERT INTO kue VALUES
(1, 15000.00, 20, 15000.00, 1),
(2, 12000.00, 30, 12000.00, 2),
(3, 18000.00, 15, 18000.00, 3),
(4, 10000.00, 25, 10000.00, 4),
(5, 20000.00, 10, 20000.00, 5);

-- Data untuk tabel pembeli
INSERT INTO pembeli VALUES
(1, 'Maulana Ihsan', 'ihsan@email.com', '08120000111', 'Jalan Girisakak'),
(2, 'Putra', 'putra@email.com', '08120000222', 'Jalan Kuripan'),
(3, 'Akmal', 'akmal@email.com', '08120000333', 'Jalan Dusun Buntage'),
(4, 'Solihin', 'solihin@email.com', '08120000444', 'Jalan Gerung'),
(5, 'Karni', 'karni@email.com', '08120000555', 'Jalan Tempos');

-- Data untuk tabel transaksi
INSERT INTO transaksi VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3),
(4, 4, 4, 2),
(5, 5, 5, 1);
