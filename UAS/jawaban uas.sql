-- no 1
SELECT 
    t.kode_pelanggan,
    p.nama_produk,
    t.qty AS jumlah,
    t.harga,
    (t.qty * t.harga) AS total
FROM 
    (
        SELECT 
            kode_produk,
            kode_pelanggan,
            qty,
            harga
        FROM 
            tr_penjualan
        WHERE 
            qty * harga >= 200000
    ) t,
    ms_produk p
WHERE 
    t.kode_produk = p.kode_produk
ORDER BY 
    total ASC;



-- no2 
SELECT 
    pl.nama_pelanggan,
    (t.qty * t.harga) AS nilai_transaksi
FROM 
    (
        SELECT * 
        FROM tr_penjualan 
        WHERE qty * harga = (
            SELECT MAX(qty * harga) FROM tr_penjualan
        )
    ) t,
    ms_pelanggan pl
WHERE 
    t.kode_pelanggan = pl.kode_pelanggan;




-- no 3
SELECT 
    p.nama_produk,
    p.kategori,
    p.harga
FROM 
    ms_produk p
LEFT JOIN 
    tr_penjualan t ON p.kode_produk = t.kode_produk
WHERE 
    t.kode_produk IS NULL;
