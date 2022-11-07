CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki','perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

--Insert data jurusan
INSERT INTO `jurusan` (`kode`, `nama`) VALUES
('PSSI', 'Sistem Informasi'),
('PSTI', 'Teknologi Informasi'),
('PSIF', 'Informatika');

--Insert data mahasiswa
INSERT INTO `mahasiswa` (`id_jurusan`, `nim`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`) VALUES
(1, '20241001', 'Lilik Wulandari', 'perempuan', 'Nganjuk', '2001-11-04', 'Jl. Semangka 10'),
(2, '20241002', 'Nindi Fenestiyan', 'perempuan', 'Situbondo', '2001-02-18', 'Jl. Durian 12'),
(3, '20243001', 'Muhammad Andi Azriel', 'laki-laki', 'Jember', '2002-05-28', 'Jl. Mangga 15'),
(1, '20241012', 'Atika Ummul', 'perempuan', 'Jember', '2002-04-05', 'Jl. Mangga 133');

-- update mahasiswa
update mahasiswa set nim = '20242002' where id = 2;

-- delete mahasiswa
delete from mahasiswa where id = 3;