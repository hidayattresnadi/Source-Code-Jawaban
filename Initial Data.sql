use `siperpus`;

INSERT Into kategori (nama) VALUES
('Horror'),('Fantasy'),('Humor'),('Masak'),('Slice of life');

Insert Into user (nama,alamat,no_ktp,no_hp,email,tanggal_terdaftar) values
('User 1','Bogor','32781718','0812289','user1@gmail.com',curdate()),
('User 2','Jakarta','32781719','0813289','user2@gmail.com',curdate()),
('User 3','Denpasar','32781716','0814289','user3@gmail.com',curdate()),
('User 4','Palembang','32781715','0815289','user4@gmail.com',curdate()),
('User 5','Purwokerto','32781714','0816289','user5@gmail.com',curdate());

Insert Into buku (judul,pengarang,penerbit,isbn,tahun_terbit,jumlah_tersedia,kategori_id) values
('Buku 1','dayat','gramedia','0819289',2024,1,1),
('Buku 2','steven','gramedia','0819289',2024,1,1),
('Buku 3','arul','gramedia','0819289',2024,1,1),
('Buku 4','rehun','gramedia','0819289',2024,1,1),
('Buku 5','kiki','gramedia','0819289',2024,1,1),
('Buku 6','dayat','gramedia','0819289',2024,1,1),
('Buku 7','steven','gramedia','0819289',2024,1,1),
('Buku 8','arul','gramedia','0819289',2024,1,1),
('Buku 9','rehun','gramedia','0819289',2024,1,1),
('Buku 10','kiki','gramedia','0819289',2024,1,1);

Insert Into peminjaman (anggota_id,buku_id,tanggal_pinjam,tanggal_batas_kembali,tanggal_kembali,denda) values
(1,1,'2024-07-18','2024-09-01','2024-09-01',0),
(1,2,'2024-07-18','2024-09-01','2024-09-01',0),
(1,3,'2024-07-18','2024-09-01','2024-09-01',0),
(2,4,'2024-07-18','2024-09-01','2024-09-01',0),
(2,5,'2024-07-18','2024-09-01','2024-09-01',0),
(2,6,'2024-07-18','2024-09-01','2024-09-01',0),
(3,7,'2024-07-18','2024-09-01','2024-09-01',0),
(3,8,'2024-07-18','2024-09-01','2024-09-01',0),
(3,9,'2024-07-18','2024-09-01','2024-09-06',5000);