function dendaKeterlambatanBuku(tanggalKembali, tanggalPinjam, daftarBuku, batasMaxPinjaman = 14, dendaHarian = 1000){
    let priceEachBooks = []
    let denda = 0
    const satuHari = 24 * 60 * 60 * 1000;
    const tanggalPinjam_ms = new Date(tanggalPinjam).getTime();
    const tanggalKembali_ms = new Date(tanggalKembali).getTime();
    let selisih = Math.round((tanggalKembali_ms - tanggalPinjam_ms) / satuHari);
    if(selisih > batasMaxPinjaman) {
        let totalFine = (selisih-batasMaxPinjaman)*dendaHarian
        denda += totalFine
    }
    daftarBuku.forEach(_ => {
        priceEachBooks.push(denda)
    });
    return priceEachBooks
}

// Contoh penggunaan
const tanggalKembali = '2024-07-18';
const tanggalPinjam = '2024-07-01';
const daftarBuku = [{ judul: 'Buku A' }, { judul: 'Buku B' }]; // contoh objek buku

const denda = dendaKeterlambatanBuku(tanggalKembali, tanggalPinjam, daftarBuku);
console.log(denda);