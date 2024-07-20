use `siperpus`;

select judul as Buku from buku left join peminjaman on buku.id = peminjaman.buku_id
where peminjaman.buku_id is null;

select nama as "User", CONCAT('Rp', peminjaman.denda) as "Denda" from user join peminjaman on user.id = peminjaman.anggota_id
where peminjaman.denda > 0;

SELECT peminjaman.anggota_id as No, user.nama as "User",GROUP_CONCAT(buku.judul ORDER BY peminjaman.buku_id desc SEPARATOR ', ') AS "Buku"
FROM buku
JOIN peminjaman ON buku.id = peminjaman.buku_id
JOIN user ON user.id = peminjaman.anggota_id
WHERE peminjaman.buku_id IS NOT NULL
GROUP BY peminjaman.anggota_id;
