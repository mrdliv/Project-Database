create database DATABASETOKOC;
use DATABASETOKOC;

create table merk(
id_merk varchar(50) primary key,
merk varchar(50)
);

create table kategori(
id_kategori varchar(50) primary key,
kategori_produk varchar(50)
);

create table warna(
id_warna varchar(50) primary key,
warna varchar(50)
);

create table produk(
id_produk varchar(50) primary key,
id_kategori varchar(50),
id_merk varchar(50),
id_warna varchar(50),
nama_produk varchar(50),
storage_ram varchar(50),
stok int,
harga int,
foreign key (id_kategori) references kategori (id_kategori),
foreign key (id_merk) references merk (id_merk),
foreign key (id_warna) references warna (id_warna)
);

create table pelanggan(
no_telp varchar(50) primary key,
nama varchar(50),
alamat varchar(100)
);

create table pesanan(
id_pemesanan int,
tgl_pemesanan date,
no_telp varchar(50),
primary key (id_pemesanan),
foreign key (no_telp) references pelanggan (no_telp)
);

CREATE TABLE detail_pesanan (
	id_detail_pesanan INT,
    id_pemesanan INT,
    id_produk VARCHAR(50),
    jlh_barang INT,
    PRIMARY KEY (id_detail_pesanan, id_pemesanan, id_produk),
    FOREIGN KEY (id_pemesanan) REFERENCES pesanan (id_pemesanan),
    FOREIGN KEY (id_produk) REFERENCES produk (id_produk),
    CONSTRAINT unique_detail_pesanan UNIQUE (id_pemesanan, id_produk)
);



insert into merk values
("M1A", "Apple A"),
("M1B",	"Apple B"),
("M2A",	"Samsung A"),
("M2B",	"Samsung B"),
("M3A",	"Asus A"),
("M3B",	"Asus B");

insert into kategori values
("K1","Smartphone"),
("K2","Laptop"),
("K3","PC"),
("K4","Tablet");

insert into warna values
("W1", "Rosegold"),
("W2", "Black"),
("W3", "White"),
("W4", "Grey");

insert into produk values
('K1-M1A-W1', 'K1', 'M1A', 'W1', 'iPhone 14 Pro', '512 GB/6 GB', 8, '24999000'),
('K1-M1A-W2', 'K1', 'M1A', 'W2', 'iPhone 14 Pro', '512 GB/6 GB', 5, '24999000'),
('K1-M1A-W3', 'K1', 'M1A', 'W3', 'iPhone 14 Pro', '512 GB/6 GB', 17, '24999000'),
('K1-M1A-W4', 'K1', 'M1A', 'W4', 'iPhone 14 Pro', '512 GB/6 GB', 12, '24999000'),
('K1-M1B-W1', 'K1', 'M1B', 'W1', 'iPhone 15 Pro Max', '512 GB/8 GB', 22, '19499000'),
('K1-M1B-W2', 'K1', 'M1B', 'W2', 'iPhone 15 Pro Max', '512 GB/8 GB', 22, '19499000'),
('K1-M1B-W3', 'K1', 'M1B', 'W3', 'iPhone 15 Pro Max', '512 GB/8 GB', 9, '19499000'),
('K1-M1B-W4', 'K1', 'M1B', 'W4', 'iPhone 15 Pro Max', '512 GB/8 GB', 21, '19499000'),
('K1-M2A-W1', 'K1', 'M2A', 'W1', 'Galaxy S23 Ultra', '512 GB/8 GB', 30, '12667000'),
('K1-M2A-W2', 'K1', 'M2A', 'W2', 'Galaxy S23 Ultra', '512 GB/8 GB', 23, '12667000'),
('K1-M2A-W3', 'K1', 'M2A', 'W3', 'Galaxy S23 Ultra', '512 GB/8 GB', 30, '12667000'),
('K1-M2A-W4', 'K1', 'M2A', 'W4', 'Galaxy S23 Ultra', '512 GB/8 GB', 30, '12667000'),
('K1-M2B-W1', 'K1', 'M2B', 'W1', 'Galaxy Z Flip5', '256 GB/8 GB', 10, '15999000'),
('K1-M2B-W2', 'K1', 'M2B', 'W2', 'Galaxy Z Flip5', '256 GB/8 GB', 29, '15999000'),
('K1-M2B-W3', 'K1', 'M2B', 'W3', 'Galaxy Z Flip5', '256 GB/8 GB', 23, '15999000'),
('K1-M2B-W4', 'K1', 'M2B', 'W4', 'Galaxy Z Flip5', '256 GB/8 GB', 11, '15999000'),
('K1-M3A-W1', 'K1', 'M3A', 'W1', 'Zenfone 10', '256 GB/6 GB', 11, '8999000'),
('K1-M3A-W2', 'K1', 'M3A', 'W2', 'Zenfone 10', '256 GB/6 GB', 24, '8999000'),
('K1-M3A-W3', 'K1', 'M3A', 'W3', 'Zenfone 10', '256 GB/6 GB', 33, '8999000'),
('K1-M3A-W4', 'K1', 'M3A', 'W4', 'Zenfone 10', '256 GB/6 GB', 35, '8999000'),
('K1-M3B-W1', 'K1', 'M3B', 'W1', 'ROG Phone 7 Ultimate', '512GB/12 GB', 6, '18999000'),
('K1-M3B-W2', 'K1', 'M3B', 'W2', 'ROG Phone 7 Ultimate', '512GB/12 GB', 10, '18999000'),
('K1-M3B-W3', 'K1', 'M3B', 'W3', 'ROG Phone 7 Ultimate', '512GB/12 GB', 5, '18999000'),
('K1-M3B-W4', 'K1', 'M3B', 'W4', 'ROG Phone 7 Ultimate', '512GB/12 GB', 6, '18999000'),
('K2-M1A-W1', 'K2', 'M1A', 'W1', 'Macbook Pro M3', '512 GB/8 GB', 9, '25000000'),
('K2-M1A-W2', 'K2', 'M1A', 'W2', 'Macbook Pro M3', '512 GB/8 GB', 9, '25000000'),
('K2-M1A-W3', 'K2', 'M1A', 'W3', 'Macbook Pro M3', '512 GB/8 GB', 33, '25000000'),
('K2-M1A-W4', 'K2', 'M1A', 'W4', 'Macbook Pro M3', '512 GB/8 GB', 31, '25000000'),
('K2-M1B-W1', 'K2', 'M1B', 'W1', 'Macbook Air M2', '512 GB/8 GB', 15, '18999000'),
('K2-M1B-W2', 'K2', 'M1B', 'W2', 'Macbook Air M2', '512 GB/8 GB', 4, '18999000'),
('K2-M1B-W3', 'K2', 'M1B', 'W3', 'Macbook Air M2', '512 GB/8 GB', 28, '18999000'),
('K2-M1B-W4', 'K2', 'M1B', 'W4', 'Macbook Air M2', '512 GB/8 GB', 8, '18999000'),
('K2-M2A-W1', 'K2', 'M2A', 'W1', 'Galaxy Book3 Ultra', '512 GB/8 GB', 9, '49910000'),
('K2-M2A-W2', 'K2', 'M2A', 'W2', 'Galaxy Book3 Ultra', '512 GB/8 GB', 11, '49910000'),
('K2-M2A-W3', 'K2', 'M2A', 'W3', 'Galaxy Book3 Ultra', '512 GB/8 GB', 22, '49910000'),
('K2-M2A-W4', 'K2', 'M2A', 'W4', 'Galaxy Book3 Ultra', '512 GB/8 GB', 25, '49910000'),
('K2-M2B-W1', 'K2', 'M2B', 'W1', 'Galaxy Book3 Pro 360', '512 GB/16 GB', 32, '38500000'),
('K2-M2B-W2', 'K2', 'M2B', 'W2', 'Galaxy Book3 Pro 360', '512 GB/16 GB', 35, '38500000'),
('K2-M2B-W3', 'K2', 'M2B', 'W3', 'Galaxy Book3 Pro 360', '512 GB/16 GB', 34, '38500000'),
('K2-M2B-W4', 'K2', 'M2B', 'W4', 'Galaxy Book3 Pro 360', '512 GB/16 GB', 14, '38500000'),
('K2-M3A-W1', 'K2', 'M3A', 'W1', 'Zenbook 14 OLED', '512 GB/16 GB', 19, '17799000'),
('K2-M3A-W2', 'K2', 'M3A', 'W2', 'Zenbook 14 OLED', '512 GB/16 GB', 6, '17799000'),
('K2-M3A-W3', 'K2', 'M3A', 'W3', 'Zenbook 14 OLED', '512 GB/16 GB', 19, '17799000'),
('K2-M3A-W4', 'K2', 'M3A', 'W4', 'Zenbook 14 OLED', '512 GB/16 GB', 15, '17799000'),
('K2-M3B-W1', 'K2', 'M3B', 'W1', 'Zenbook Flip 13 OLED', '512 GB/8 GB', 5, '15999000'),
('K2-M3B-W2', 'K2', 'M3B', 'W2', 'Zenbook Flip 13 OLED', '512 GB/8 GB', 12, '15999000'),
('K2-M3B-W3', 'K2', 'M3B', 'W3', 'Zenbook Flip 13 OLED', '512 GB/8 GB', 9, '15999000'),
('K2-M3B-W4', 'K2', 'M3B', 'W4', 'Zenbook Flip 13 OLED', '512 GB/8 GB', 7, '15999000'),
('K3-M1A-W1', 'K3', 'M1A', 'W1', 'iMac M3', '512 GB/8 GB', 14, '29999000'),
('K3-M1A-W2', 'K3', 'M1A', 'W2', 'iMac M3', '512 GB/8 GB', 23, '29999000'),
('K3-M1A-W3', 'K3', 'M1A', 'W3', 'iMac M3', '512 GB/8 GB', 12, '29999000'),
('K3-M1A-W4', 'K3', 'M1A', 'W4', 'iMac M3', '512 GB/8 GB', 15, '29999000'),
('K3-M1B-W1', 'K3', 'M1B', 'W1', 'iMac M1', '512 GB/8 GB', 12, '26999000'),
('K3-M1B-W2', 'K3', 'M1B', 'W2', 'iMac M1', '512 GB/8 GB', 17, '26999000'),
('K3-M1B-W3', 'K3', 'M1B', 'W3', 'iMac M1', '512 GB/8 GB', 8, '26999000'),
('K3-M1B-W4', 'K3', 'M1B', 'W4', 'iMac M1', '512 GB/8 GB', 9, '26999000'),
('K3-M2A-W1', 'K3', 'M2A', 'W1', 'ViewFinity S9', '1 TB/16 GB', 14, '23999000'),
('K3-M2A-W2', 'K3', 'M2A', 'W2', 'ViewFinity S9', '1 TB/16 GB', 28, '23999000'),
('K3-M2A-W3', 'K3', 'M2A', 'W3', 'ViewFinity S9', '1 TB/16 GB', 30, '23999000'),
('K3-M2A-W4', 'K3', 'M2A', 'W4', 'ViewFinity S9', '1 TB/16 GB', 31, '23999000'),
('K3-M2B-W1', 'K3', 'M2B', 'W1', 'ViewFinity S65', '2 TB/32 GB', 30, '9939000'),
('K3-M2B-W2', 'K3', 'M2B', 'W2', 'ViewFinity S65', '2 TB/32 GB', 24, '9939000'),
('K3-M2B-W3', 'K3', 'M2B', 'W3', 'ViewFinity S65', '2 TB/32 GB', 33, '9939000'),
('K3-M2B-W4', 'K3', 'M2B', 'W4', 'ViewFinity S65', '2 TB/32 GB', 18, '9939000'),
('K3-M3A-W1', 'K3', 'M3A', 'W1', 'Zen AiO A5401', '1 TB/16 GB', 18, '14999000'),
('K3-M3A-W2', 'K3', 'M3A', 'W2', 'Zen AiO A5401', '1 TB/16 GB', 17, '14999000'),
('K3-M3A-W3', 'K3', 'M3A', 'W3', 'Zen AiO A5401', '1 TB/16 GB', 18, '14999000'),
('K3-M3A-W4', 'K3', 'M3A', 'W4', 'Zen AiO A5401', '1 TB/16 GB', 19, '14999000'),
('K3-M3B-W1', 'K3', 'M3B', 'W1', 'Zen AiO M5401', '2 TB/32 GB', 21, '11249000'),
('K3-M3B-W2', 'K3', 'M3B', 'W2', 'Zen AiO M5401', '2 TB/32 GB', 19, '11249000'),
('K3-M3B-W3', 'K3', 'M3B', 'W3', 'Zen AiO M5401', '2 TB/32 GB', 23, '11249000'),
('K3-M3B-W4', 'K3', 'M3B', 'W4', 'Zen AiO M5401', '2 TB/32 GB', 19, '11249000'),
('K4-M1A-W1', 'K4', 'M1A', 'W1', 'iPad Pro Gen 6', '512 GB/8 GB', 31, '15699000'),
('K4-M1A-W2', 'K4', 'M1A', 'W2', 'iPad Pro Gen 6', '512 GB/8 GB', 11, '15699000'),
('K4-M1A-W3', 'K4', 'M1A', 'W3', 'iPad Pro Gen 6', '512 GB/8 GB', 10, '15699000'),
('K4-M1A-W4', 'K4', 'M1A', 'W4', 'iPad Pro Gen 6', '512 GB/8 GB', 18, '15699000'),
('K4-M1B-W1', 'K4', 'M1B', 'W1', 'iPad Gen 10', '128 GB/4 GB', 27, '6999000'),
('K4-M1B-W2', 'K4', 'M1B', 'W2', 'iPad Gen 10', '128 GB/4 GB', 21, '6999000'),
('K4-M1B-W3', 'K4', 'M1B', 'W3', 'iPad Gen 10', '128 GB/4 GB', 26, '6999000'),
('K4-M1B-W4', 'K4', 'M1B', 'W4', 'iPad Gen 10', '128 GB/4 GB', 26, '6999000'),
('K4-M2A-W1', 'K4', 'M2A', 'W1', 'Galaxy Tab S9', '256 GB/6 GB', 17, '13999000'),
('K4-M2A-W2', 'K4', 'M2A', 'W2', 'Galaxy Tab S9', '256 GB/6 GB', 11, '13999000'),
('K4-M2A-W3', 'K4', 'M2A', 'W3', 'Galaxy Tab S9', '256 GB/6 GB', 14, '13999000'),
('K4-M2A-W4', 'K4', 'M2A', 'W4', 'Galaxy Tab S9', '256 GB/6 GB', 18, '13999000'),
('K4-M2B-W1', 'K4', 'M2B', 'W1', 'Galaxy Tab S9 Ultra', '512 GB/8 GB', 21, '19999000'),
('K4-M2B-W2', 'K4', 'M2B', 'W2', 'Galaxy Tab S9 Ultra', '512 GB/8 GB', 12, '19999000'),
('K4-M2B-W3', 'K4', 'M2B', 'W3', 'Galaxy Tab S9 Ultra', '512 GB/8 GB', 14, '19999000'),
('K4-M2B-W4', 'K4', 'M2B', 'W4', 'Galaxy Tab S9 Ultra', '512 GB/8 GB', 10, '19999000'),
('K4-M3A-W1', 'K4', 'M3A', 'W1', 'Chromebook Tablet CT100', '64 GB/4 GB', 18, '5699000'),
('K4-M3A-W2', 'K4', 'M3A', 'W2', 'Chromebook Tablet CT100', '64 GB/4 GB', 15, '5699000'),
('K4-M3A-W3', 'K4', 'M3A', 'W3', 'Chromebook Tablet CT100', '64 GB/4 GB', 10, '5699000'),
('K4-M3A-W4', 'K4', 'M3A', 'W4', 'Chromebook Tablet CT100', '64 GB/4 GB', 11, '5699000'),
('K4-M3B-W1', 'K4', 'M3B', 'W1', 'Vivobook 13 Slate OLED', '512 GB/8 GB', 27, '9090000'),
('K4-M3B-W2', 'K4', 'M3B', 'W2', 'Vivobook 13 Slate OLED', '512 GB/8 GB', 7, '9090000'),
('K4-M3B-W3', 'K4', 'M3B', 'W3', 'Vivobook 13 Slate OLED', '512 GB/8 GB', 13, '9090000'),
('K4-M3B-W4', 'K4', 'M3B', 'W4', 'Vivobook 13 Slate OLED', '512 GB/8 GB', 10, '9090000');

insert into pelanggan values
("087233647854","Richard Setiawan","Jl. Wijaya, Jakarta"),
("082313457465","Chelsea Ayu Putri","Jl. Anggrek, Jakarta"),
("089972834746","Amelia Rinawati","Jl. Lima Panca, Tangerang"),
("087681127526","Alam Saputra Jaya","Jl. Brawijaya, Bandung"),
("081329483756","Harris Tanusubidjo","Jl. Orang Baik, Tangerang"),
("081123657289","Belinda Polii","Jl. Teknik, Surabaya"),
("089817283647","Cantika Nesya","Jl. Airlangga, Surabaya"); 

insert into pesanan values
(1,"2023-12-05","087233647854"),
(2,"2023-12-02","082313457465"),
(3,"2023-12-02","082313457465"),
(4,"2023-11-20","089972834746"),
(5,"2023-11-18","087681127526"),
(6,"2023-11-18","087681127526"),
(7,"2023-11-16","081329483756"),
(8,"2023-11-07","081123657289"),
(9,"2023-11-03","089817283647"),
(10,"2023-10-31","081329483756");

INSERT INTO detail_pesanan VALUES
(53,1,"K3-M1A-W3",1),
(54,2,"K1-M1A-W3",1),
(54,3,"K2-M3A-W1",1),
(55,4,"K3-M2A-W3",1),
(56,5,"K1-M3A-W2",1),
(56,6,"K3-M2A-W4",1),
(57,7,"K1-M2B-W1",1),
(58,8,"K4-M1B-W2",2),
(59,9,"K2-M3B-W1",2),
(60,10,"K4-M3B-W4",1);

-- Memanggil Nota
DELIMITER $$
CREATE PROCEDURE nota (
    IN detpesanan INT
)
BEGIN
    DECLARE total_harga INT;
    
    SELECT SUM(detail_pesanan.jlh_barang * produk.harga) 
    INTO total_harga
    FROM produk
    JOIN detail_pesanan ON detail_pesanan.id_produk = produk.id_produk
    WHERE detail_pesanan.id_detail_pesanan = detpesanan;

    SELECT 
        pesanan.tgl_pemesanan, 
        detail_pesanan.id_detail_pesanan,
        produk.nama_produk, 
        detail_pesanan.jlh_barang, 
        produk.harga,
        detail_pesanan.jlh_barang * produk.harga AS Subtotal, 
        total_harga AS TotalHarga, 
        pelanggan.nama, 
        pelanggan.alamat, 
        pelanggan.no_telp
    FROM detail_pesanan
    JOIN produk ON detail_pesanan.id_produk = produk.id_produk
    JOIN pesanan ON detail_pesanan.id_pemesanan = pesanan.id_pemesanan
    JOIN pelanggan ON pesanan.no_telp = pelanggan.no_telp
    WHERE detail_pesanan.id_detail_pesanan = detpesanan;
END $$
DELIMITER ;
CALL nota(56);

select*from kategori;

-- Data tidak dapat diedit & alias juga
CREATE OR REPLACE VIEW Alias_Tabel_Kategori AS SELECT*FROM Kategori;
SELECT * FROM Kategori;
SELECT * FROM Alias_Tabel_Kategori;

CREATE OR REPLACE VIEW Alias_Tabel_Merk AS SELECT*FROM merk;
SELECT * FROM Alias_Tabel_merk;

CREATE OR REPLACE VIEW Alias_Tabel_Warna AS SELECT*FROM warna;
SELECT * FROM Alias_Tabel_warna;

CREATE OR REPLACE VIEW Alias_Tabel_produk AS SELECT*FROM produk;
SELECT * FROM Alias_Tabel_produk;

CREATE OR REPLACE VIEW Alias_Tabel_detailpesanan AS SELECT*FROM detail_pesanan;
SELECT * FROM Alias_Tabel_detailpesanan;

CREATE OR REPLACE VIEW Alias_Tabel_pesanan AS SELECT*FROM pesanan;
SELECT * FROM Alias_Tabel_pesanan;

-- Update stock procedure
DELIMITER //
CREATE PROCEDURE updated_stock(IN id_detpesanan INT)
BEGIN
    UPDATE produk
    JOIN (
    SELECT id_produk, SUM(jlh_barang) as total_barang
    FROM detail_pesanan
    GROUP BY id_produk) AS pembelian_agg ON produk.id_produk = pembelian_agg.id_produk
	SET produk.stok = produk.stok - pembelian_agg.total_barang;
END //
DELIMITER ;
call updated_stock(53);

select detail_pesanan.id_produk, produk.stok
from detail_pesanan
join produk on detail_pesanan.id_produk = produk.id_produk;

-- Update stock alter table
ALTER TABLE produk
ADD COLUMN update_stok INT;
UPDATE produk
SET update_stok=stok;
UPDATE produk
JOIN (
    SELECT id_produk, SUM(jlh_barang) as total_barang
    FROM detail_pesanan
    GROUP BY id_produk
) AS pembelian_agg ON produk.id_produk = pembelian_agg.id_produk
SET produk.update_stok = produk.stok - pembelian_agg.total_barang;

-- Menambah keterangan stok
SELECT
    produk.nama_produk,
    produk.stok,
    COALESCE(IF(produk.stok > 10, 'In Stock', 'Low Stock'), 'Unknown') AS stock_status
FROM produk;

-- Keterangan stok
select id_produk, stok,
case
	when stok < 10 then 'Stock is less than 10'
    when stok = 10 then 'Stock is 10'
    else 'Stock is more than 10'
end as keterangan
from produk;

-- Menambah status pesanan
ALTER TABLE pesanan
ADD COLUMN status_pesanan VARCHAR(50);
UPDATE pesanan
SET status_pesanan = 
    CASE
        WHEN tgl_pemesanan >= CURDATE() - INTERVAL 1 MONTH THEN 'New'
        WHEN tgl_pemesanan BETWEEN CURDATE() - INTERVAL 2 MONTH AND CURDATE() - INTERVAL 1 MONTH THEN 'Intermediate'
        ELSE 'Old'
    END;
SELECT * FROM pesanan;

-- Menampilkan produk yang belum pernah dibeli
SELECT * FROM produk
WHERE NOT EXISTS (SELECT * FROM detail_pesanan WHERE detail_pesanan.id_produk=produk.id_produk);

-- Menampilkan produk yang paling banyak dibeli
	select 
		produk.id_produk, produk.nama_produk,
		sum(detail_pesanan.jlh_barang) as total_sold
	from produk
    join detail_pesanan on produk.id_produk = detail_pesanan.id_produk
    join pesanan on detail_pesanan.id_pemesanan = pesanan.id_pemesanan
    group by produk.id_produk, produk.nama_produk
    order by total_sold desc
    limit 2;

-- Menampilkan spesifikasi sebuah produk
	select * from produk
		where id_produk = 'K2-M3B-W1';

-- Menampilkan stok sebuah produk berdasarkan namanya
	select c.id_warna, c.warna, p.nama_produk, sum(p.stok) as total_stok 
    from produk p
		join warna c on p.id_warna = c.id_warna
		group by c.id_warna, p.nama_produk
        having p.nama_produk = 'iPhone 14 Pro';
	select 8+5+10+12 as stok_iPhone14Pro; #seluruh warna ditotalin
    
-- Meng-update stok produk
	update produk
    set stok = 8
    where id_produk = 'K1-M1A-W1';
	update produk
    set update_stok = 8
    where id_produk = 'K1-M1A-W1';

select * from produk;

-- Menampilkan pelanggan dengan pembelian paling banyak selama 1 bulan terakhir
	select c.no_telp, c.nama, count(t.id_pemesanan) as pesanan_count
		from pelanggan c
	join pesanan t on c.no_telp = t.no_telp
    where t.tgl_pemesanan >= curdate() - interval 30 day
    group by c.no_telp, c.nama
    order by pesanan_count desc
    limit 2;

-- Menampilkan pelanggan yang belum pernah membeli
	select c.no_telp, c.nama from pelanggan c
    left join pesanan t on c.no_telp = t.no_telp
    left join detail_pesanan d on t.id_pemesanan = d.id_pemesanan
    where d.id_produk is null
		or d.id_produk not in (select id_produk from produk);
        
-- Menampilkan pelanggan dengan transaksi tertinggi/terendah total harganya
	select 
		t.id_pemesanan, 
        t.tgl_pemesanan, 
        c.nama, 
        sum(p.harga * dp.jlh_barang) as total_harga
	from pesanan t
    join detail_pesanan dp on t.id_pemesanan = dp.id_pemesanan
    join produk p on dp.id_produk = p.id_produk
    join pelanggan c on t.no_telp = c.no_telp
    group by t.id_pemesanan
    order by total_harga desc # asc untuk terendah
    limit 1;

-- Menghitung harga setelah pajak
DELIMITER //
CREATE PROCEDURE harga_setelah_pajak(IN detpesanan INT)
BEGIN
	DECLARE total_harga INT;
    DECLARE pajak INT;
    
    SELECT SUM(detail_pesanan.jlh_barang * produk.harga) 
    INTO total_harga
    FROM produk
    JOIN detail_pesanan ON detail_pesanan.id_produk = produk.id_produk
    WHERE detail_pesanan.id_detail_pesanan = detpesanan;
    
    SELECT total_harga * 0.11
    INTO pajak;
    
    select 
    total_harga as TotalHarga,
    total_harga - pajak as HargaSetelahPajak;
END //
DELIMITER ;
call harga_setelah_pajak(56);

-- Menampilkan pelanggan dengan transaksi tertinggi/terendah total harganya setelah pajak
	select 
		t.id_pemesanan, 
        t.tgl_pemesanan, 
        c.nama, 
        sum(p.harga * dp.jlh_barang - (p.harga * dp.jlh_barang * 0.11)) as total_harga_stlh_pajak
	from pesanan t
    join detail_pesanan dp on t.id_pemesanan = dp.id_pemesanan
    join produk p on dp.id_produk = p.id_produk
    join pelanggan c on t.no_telp = c.no_telp
    group by t.id_pemesanan
    order by total_harga_stlh_pajak desc # asc untuk terendah
    limit 1;
    
-- Menghitung harga rata-rata produk smartphone (K1)
	select avg(harga) from produk as ratarata_harga_smartphone where id_kategori = 'K1';
    
    delimiter //
    create procedure rerata_harga_smartphone(out mean_hp int)
    begin
		select avg(harga) from produk
        where id_kategori = 'K1';
	end //
	delimiter ;
    call rerata_harga_smartphone(@mean_hp);
    
-- Menghitung harga variance produk merk Apple (M1-)
	select variance(harga) from produk where id_merk = 'M1A' or id_merk = 'M1B';
    
-- Menghitung harga tertinggi produk smartphone (K1)
	select id_produk, nama_produk, harga from produk
    where id_kategori = 'K1'
    order by harga desc
    limit 4;

-- Menghitung total produk
	select count(id_produk) from produk;
    
-- Menampilkan pesanan menurut warna produk
	select 
		produk.id_produk,
		produk.nama_produk,
        detail_pesanan.jlh_barang,
        pelanggan.nama
	from detail_pesanan
		join produk on detail_pesanan.id_produk=produk.id_produk
        join pesanan on detail_pesanan.id_pemesanan=pesanan.id_pemesanan
        join pelanggan on pesanan.no_telp=pelanggan.no_telp
	where
		produk.id_warna = 'W3';
        
-- Looping Example
#membuat tabel kalender
CREATE TABLE calendars(
    id INT AUTO_INCREMENT,
    fulldate DATE UNIQUE,
    day TINYINT NOT NULL,
    month TINYINT NOT NULL,
    quarter TINYINT NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY(id)
);

#membuat stored procedure untuk menambahkan kalender
DELIMITER $$
CREATE PROCEDURE InsertCalendar(dt DATE)
BEGIN
    INSERT INTO calendars(
        fulldate,
        day,
        month,
        quarter,
        year
    )
    VALUES(
        dt, 
        EXTRACT(DAY FROM dt),
        EXTRACT(MONTH FROM dt),
        EXTRACT(QUARTER FROM dt),
        EXTRACT(YEAR FROM dt)
    );
END $$
DELIMITER ;

#membuat stored procedure iterasi kalender
DELIMITER $$
CREATE PROCEDURE LoadCalendars(
    startDate DATE, 
    day INT
)
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE dt DATE DEFAULT startDate;
    WHILE counter <= day DO
        CALL InsertCalendar(dt);
        SET counter = counter + 1;
        SET dt = DATE_ADD(dt,INTERVAL 1 day);
    END WHILE;
END$$
DELIMITER ;

#memanggil kalender berdasarkan parameter yg diinput
CALL LoadCalendars('2019-01-01',31);

SELECT * FROM calendars;
        
        
	
