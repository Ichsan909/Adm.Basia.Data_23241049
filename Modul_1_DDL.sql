-- Nama : Muhammad arbiyan saputra
-- NIM : 23241041
-- Kelas : B

-- membuat database
CREATE DATABASE mandalika_mart;
USE mandalika_mart;

-- membuat tabel dalam database 'mandalika_mart
CREATE TABLE member`mandalika member`(
member_id varchar(10),
username varchar(20),
nama varchar(100),
tanggal_lahir datetime,
angka_favorit int);

CREATE TABLE produk(
id_produk varchar(10),
nama_produk varchar(25),
kategori varchar(13),
harga int,
qty int);

CREATE TABLE transaksi_penjualan(
tgl_jual datetime,
id_produk varchar(10),
member_id varchar(10),
nama_produk varchar(25)
harga int,
qty int);

-- mengupdate primary key tabel member,produk
ALTER TABLE member
ADD PRIMARY KEY (member_id);

ALTER TABLE produk
ADD PRIMARY KEY (id_produk);

-- mengupdate foreign key tabel transaksi_penjualan
ADD TABLE transaksi_penjualan
ALTER CONSTRAINT FK_memberTransaksi
FOREIGN KEY (member_id) REFERENCES member(member_id);

ALTER TABLE transaksi_penjualan
ADD CONSTRAINT FK_produkTransaksi
FOREIGN KEY (id_produk) REFERENCES member(id_produk);

-- mengisi data pada tabel
INSERT INTO member(member_id, username, nama, tanggal_lahir, angka_favorit)
VALUES ('ID-01','saputra', 'm arbiyan','2005-4-04','11');

-- mengakses isi data pada tabel member
SELECT ' FROM member';
