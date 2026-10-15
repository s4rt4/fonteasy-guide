---
title: Memasang FontEasy
description: Cara mengunduh, memasang, menjalankan, memperbarui, dan menghapus FontEasy di Windows, lewat penginstal atau zip portabel.
---

Sebelum bisa menggambar huruf, FontEasy perlu ada di komputer Anda. Prosesnya hanya beberapa menit
dan tidak butuh pengetahuan teknis: Anda mengunduh satu file dari internet, membukanya, lalu mengeklik
**Next** beberapa kali. Anda tidak memerlukan hak administrator, dan FontEasy tidak pernah meminta
akun atau kunci lisensi.

FontEasy tersedia dalam dua bentuk. **Penginstal** (*installer*) memasukkan FontEasy ke menu Start
seperti aplikasi lain, dan inilah pilihan terbaik bagi kebanyakan orang. **Zip portabel** berupa
folder yang bisa dijalankan dari mana saja, bahkan dari flashdisk, tanpa perlu dipasang. Isi
programnya sama persis.

Dalam bab ini Anda akan mempelajari:

- apa yang dibutuhkan komputer Anda untuk menjalankan FontEasy;
- file mana yang perlu diunduh, dan di mana mendapatkannya;
- cara memasang FontEasy, atau menjalankannya dari zip portabel;
- apa yang harus dilakukan saat Windows SmartScreen menampilkan peringatan;
- apa yang terjadi saat FontEasy pertama kali dijalankan, dan cara mengubahnya ke bahasa Indonesia;
- cara memperbarui dan menghapus FontEasy.

## Kebutuhan komputer

FontEasy adalah aplikasi Windows untuk PC 64-bit (sering ditulis "x64"). Hampir semua komputer
Windows yang dijual dalam sepuluh tahun terakhir sudah 64-bit. Kalau ragu, buka **Pengaturan › Sistem ›
Tentang** di Windows dan lihat **Jenis sistem**: seharusnya tertulis "sistem operasi 64-bit".

Anda juga memerlukan:

- ruang disk kosong sekitar 100 MB (program terpasang beserta alat bantunya sekitar 80 MB);
- layar 1366 × 768 piksel atau lebih agar nyaman. FontEasy terbuka di ukuran 1440 × 900 bila muat,
  dan mengecil mengikuti layar yang lebih kecil (jendelanya bisa sampai 760 × 480);
- koneksi internet hanya untuk mengunduh. FontEasy sendiri bisa dipakai tanpa internet.

Anda tidak memerlukan hak administrator: penginstal maupun zip hanya memasang untuk akun pengguna
Windows Anda sendiri.

## Memilih file unduhan

FontEasy diterbitkan di halaman rilis GitHub:

**https://github.com/s4rt4/fonteasy/releases**

GitHub adalah situs tempat proyek perangkat lunak menyimpan kode sumber dan menerbitkan rilisnya. Anda
tidak perlu akun GitHub untuk mengunduh. Buka halaman itu di browser dan lihat rilis terbaru (paling
atas; saat panduan ini ditulis versinya 1.5.0). Gulir ke bawah sampai **Assets**, yaitu daftar file
milik rilis tersebut, lalu pilih salah satu dari dua file berikut:

| File | Isinya | Pilih jika… |
|---|---|---|
| `FontEasy-1.5.0-windows-x64-setup.exe` | Penginstal (sekitar 25 MB) | Anda ingin FontEasy ada di menu Start, lengkap dengan uninstaller |
| `FontEasy-1.5.0-windows-x64.zip` | Versi portabel (sekitar 35 MB) | Anda tidak bisa atau tidak mau memasang program, atau ingin FontEasy di flashdisk |

File lain di halaman itu (misalnya "Source code") ditujukan untuk pemrogram. Abaikan saja.

:::tip
Saat ada versi yang lebih baru, nama filenya memuat nomor versi baru itu, bukan 1.5.0. Semua langkah
di bab ini tetap sama.
:::

## Memasang dengan penginstal

1. Di halaman rilis, klik `FontEasy-1.5.0-windows-x64-setup.exe`. Browser akan mengunduhnya, biasanya
   ke folder **Unduhan** (*Downloads*).
2. Buka file yang sudah diunduh (klik di daftar unduhan browser, atau klik dua kali di folder
   **Unduhan**).
3. Kalau muncul jendela biru bertuliskan "Windows melindungi PC Anda", baca dulu bagian
   [Bila Windows SmartScreen memberi peringatan](#bila-windows-smartscreen-memberi-peringatan) di
   bawah, lalu kembali ke sini.
4. Penginstal menyambut Anda dengan halaman pembuka. Klik **Next**.
5. Halaman berikutnya menampilkan lisensi: FontEasy gratis dan *open source* di bawah Lisensi MIT.
   Klik **I Agree**.
6. Pilih lokasi pemasangan. Folder yang disarankan adalah `%LOCALAPPDATA%\Programs\FontEasy`, folder
   milik akun pengguna Anda, sehingga tidak perlu hak administrator. Biarkan saja kecuali Anda punya
   alasan untuk mengubahnya, lalu klik **Next**.
7. Pilih komponen. **FontEasy** selalu dipasang. **Desktop shortcut** (pintasan di desktop) sudah
   dicentang; hapus centangnya bila Anda tidak ingin ikon di desktop. Klik **Install**.
8. Tunggu beberapa detik selagi file disalin, lalu klik **Next**.
9. Di halaman terakhir, biarkan **Run FontEasy 1.5.0** tetap dicentang dan klik **Finish**.

FontEasy pun berjalan. Mulai sekarang Anda bisa menemukannya di menu Start: tekan tombol
<kbd>Windows</kbd>, ketik `FontEasy`, lalu tekan <kbd>Enter</kbd>. Anda juga bisa mengeklik kanan
FontEasy di sana dan memilih **Sematkan ke bilah tugas** atau **Sematkan ke Mulai**.

:::note
Penginstal tersedia dalam bahasa Inggris dan Indonesia. Bila Windows Anda berbahasa Indonesia,
halaman-halaman penginstal mungkin tampil dalam bahasa Indonesia. Nama tombolnya berbeda, tetapi
letak dan urutan langkahnya sama.
:::

## Memakai zip portabel

File zip adalah folder yang dipadatkan. Windows bisa membukanya, tetapi FontEasy harus *diekstrak*
(disalin keluar dari zip) dulu sebelum bisa dijalankan, karena program ini membutuhkan folder-folder
yang ada di sebelahnya.

1. Di halaman rilis, klik `FontEasy-1.5.0-windows-x64.zip` untuk mengunduhnya.
2. Di File Explorer, klik kanan zip yang sudah diunduh dan pilih **Ekstrak Semua…**.
3. Tentukan tujuan foldernya, misalnya folder **Dokumen** atau flashdisk, lalu klik **Ekstrak**.
4. Buka folder hasil ekstrak, `FontEasy-1.5.0-windows-x64`.
5. Klik dua kali `FontEasy.exe`. Bila SmartScreen memberi peringatan, lihat bagian berikutnya.

Agar lain kali FontEasy cepat dibuka, klik kanan `FontEasy.exe` lalu pilih **Tampilkan opsi lainnya ›
Kirim ke › Desktop (buat pintasan)** (di Windows 10: **Kirim ke › Desktop (buat pintasan)**).

:::caution
Jangan mengeklik dua kali `FontEasy.exe` di dalam zip tanpa mengekstraknya, dan jangan memindahkan
`FontEasy.exe` sendirian keluar dari foldernya. FontEasy mencari alat bantunya (folder `python` dan
`tools`) di sebelahnya. Tanpa keduanya FontEasy tetap jalan, tetapi scripting dan *hinting* TrueType
tidak berfungsi. Pindahkan seluruh foldernya.
:::

### Isi folder FontEasy

Apa pun unduhan yang Anda pilih, folder FontEasy berisi hal yang sama:

| Isi | Kegunaannya |
|---|---|
| `FontEasy.exe` | Aplikasinya |
| `python` | Salinan Python 3.14 khusus FontEasy beserta fontTools, hanya untuk script dan plugin |
| `tools\ttfautohint.exe` | ttfautohint 1.8.4, yang menambahkan *hinting* pada font TrueType saat ekspor |
| `licenses` | Lisensi Python, fontTools, ttfautohint, dan komponen lain |
| `README.md`, `LICENSE-MIT`, `LICENSE-APACHE`, `NOTICE`, `ATTRIBUTION.md` | Keterangan tentang FontEasy dan lisensinya |

Anda tidak perlu menyentuh file-file ini. Python adalah bahasa pemrograman; FontEasy hanya memakainya
ketika Anda menjalankan script di panel **Scripting** atau memakai plugin (lihat
[Scripting](/power/scripting/)). Python berjalan sebagai program pembantu terpisah, jadi FontEasy
tetap bisa dibuka dan dipakai seperti biasa walaupun Python tidak ada.
[*Hinting*](/reference/glossary/#hinting) adalah informasi tambahan yang membuat teks kecil tampak
lebih tajam di layar Windows; bab [Ekspor](/production/export/) menjelaskan kapan Anda
membutuhkannya.

## Bila Windows SmartScreen memberi peringatan

Saat pertama kali membuka penginstal atau `FontEasy.exe`, Windows mungkin menampilkan jendela biru
berjudul **Windows melindungi PC Anda** (*Windows protected your PC*), dengan keterangan bahwa
Microsoft Defender SmartScreen mencegah aplikasi yang tidak dikenal berjalan.

Ini tidak berarti FontEasy berbahaya. SmartScreen memberi peringatan untuk program yang masih baru
atau belum banyak diunduh orang, dan untuk program tanpa tanda tangan digital (sertifikat berbayar
yang menunjukkan identitas penerbitnya). FontEasy adalah proyek *open source* yang masih muda dan
filenya belum ditandatangani, sehingga Windows belum mengenalinya.

Bila Anda mengunduh file itu dari halaman rilis resmi di atas, Anda bisa menjalankannya begini:

1. Di jendela biru itu, klik **Info selengkapnya** (*More info*). Jendela kini menampilkan nama file
   dan penerbit "Unknown publisher" (penerbit tidak dikenal).
2. Pastikan nama filenya sama dengan yang Anda unduh, misalnya
   `FontEasy-1.5.0-windows-x64-setup.exe`.
3. Klik **Tetap jalankan** (*Run anyway*).

Biasanya peringatan itu tidak muncul lagi untuk file tersebut setelahnya.

Browser Anda mungkin juga bertanya apakah unduhan ini mau disimpan, karena file tersebut "jarang
diunduh". Di Microsoft Edge, buka daftar unduhan, arahkan ke file itu, klik tombol **…**, lalu pilih
**Simpan** (*Keep*). Browser lain punya pilihan yang serupa.

:::danger
Klik **Tetap jalankan** hanya untuk file yang Anda unduh sendiri dari
`https://github.com/s4rt4/fonteasy/releases`. Bila ada file yang mengaku FontEasy sampai kepada Anda
lewat jalan lain (lampiran email, situs unduhan yang tidak Anda kenal), hapus file itu dan unduh
ulang FontEasy dari halaman rilis.
:::

## Saat pertama dijalankan

Ketika FontEasy dijalankan, sebuah jendela kecil berwarna gelap menampilkan logo FontEasy, nomor
versi, dan bilah kemajuan selagi aplikasi memuat preferensi, font antarmuka, dan ikon. Inilah layar
pembuka (*splash screen*). Sesaat kemudian jendela itu membesar menjadi jendela utama.

![Layar pembuka FontEasy: logo, "Desain huruf untuk semua orang", versi v1.5.0, dan bilah kemajuan.](screen:splash)

Jendela utama terbuka di layar **Beranda**. Di kiri ada **Font Baru…** dan **Buka…**; di tengah Anda
bisa memulai font baru dari template, membuka lagi font terbaru, dan memilih cara bekerja.

![Layar Beranda sesaat setelah pemasangan: empat template di bawah "Mulai font baru", daftar Terbaru yang masih kosong, dan Mode Pro terpilih.](screen:home)

FontEasy dimulai dengan pengaturan berikut:

- tampilan **gelap**;
- antarmuka berbahasa **Inggris**;
- **Mode Pro**, dengan semua alat dan panel.

Kalau ini font pertama Anda, pilih **Simple Mode** (**Mode Sederhana**) di bawah **How do you want to
work?** (**Bagaimana Anda ingin bekerja?**). Kartunya diberi centang, dan FontEasy mengingat pilihan
itu. Saat Anda pertama kali membuka atau membuat font, tur singkat lima langkah menjelaskan isi layar.
Anda bisa mengikutinya dengan **Lanjut**, menutupnya dengan **Lewati tur** atau <kbd>Esc</kbd>, dan
melihatnya lagi kapan saja lewat **Bantuan › Tur**.

### Mengubah antarmuka ke bahasa Indonesia

FontEasy tersedia dalam bahasa Inggris dan Indonesia. Karena FontEasy dimulai dalam bahasa Inggris,
langkah-langkah ini memakai nama menu berbahasa Inggris:

1. Di layar Beranda, klik **Preferences…** di kiri bawah (atau pilih **Edit › Preferences…**,
   <kbd>Ctrl</kbd>+<kbd>K</kbd>).
2. Klik tab **Interface**.
3. Buka daftar **Language** dan pilih **Bahasa Indonesia**.
4. Klik **OK**.

Menu, panel, dan dialog langsung berganti ke bahasa Indonesia tanpa perlu memulai ulang. Untuk kembali
ke bahasa Inggris, pilih **English** di daftar yang sama, yang sekarang ada di
**Edit › Preferensi… › Antarmuka › Bahasa**. Tab yang sama juga memuat **Tema** (Gelap, Terang, atau
Sistem) dan **Ukuran font antarmuka**.

:::tip
Kalau layar pembuka terasa lambat, matikan saja: **Edit › Preferensi… › Umum**, lalu hapus centang
**Tampilkan saat memulai** di samping **Layar pembuka**.
:::

### Tempat FontEasy menyimpan pengaturan

FontEasy menyimpan preferensi, tata letak jendela, plugin, dan salinan pemulihan pekerjaan yang belum
disimpan di folder `%APPDATA%\FontEasy`. Untuk membukanya, tekan <kbd>Windows</kbd>+<kbd>R</kbd>,
ketik `%APPDATA%\FontEasy`, lalu tekan <kbd>Enter</kbd>.

Font Anda tidak disimpan di sana. Anda menyimpan setiap font di tempat yang Anda pilih sendiri,
seperti yang akan Anda lihat di [Font Pertama Anda](/start/first-font/).

:::note
Salinan pemulihan adalah jaring pengaman FontEasy. Selama Anda bekerja, FontEasy menulis salinan
setiap font yang berubah ke sana setiap lima menit. Bila FontEasy atau komputer Anda mogok, saat
dijalankan berikutnya FontEasy menawarkan untuk mengembalikan pekerjaan Anda lewat dialog **Pulihkan
Font yang Belum Disimpan**. Salinan ini tidak pernah menimpa file Anda sendiri.
:::

## Memperbarui FontEasy

FontEasy tidak memperbarui dirinya sendiri. Sesekali kunjungi halaman rilis untuk melihat apakah ada
versi yang lebih baru. Untuk mengetahui versi yang Anda pakai, pilih **Bantuan › Tentang FontEasy**,
atau lihat ujung kanan bilah status di bagian bawah jendela.

**Bila Anda memakai penginstal:**

1. Simpan pekerjaan Anda dan tutup FontEasy.
2. Unduh `…-setup.exe` yang baru lalu jalankan.
3. Ikuti halaman-halamannya seperti sebelumnya. Penginstal menemukan folder FontEasy yang lama dan
   mengganti programnya, termasuk folder `python` dan `tools`.

**Bila Anda memakai zip:** ekstrak zip baru di sebelah folder lama, pastikan versi baru berjalan,
lalu hapus folder lama.

Dengan cara mana pun, preferensi, tata letak, dan plugin Anda di `%APPDATA%\FontEasy` tetap utuh.

## Menghapus FontEasy

Bila Anda pernah memasang salinan uji font Anda (lihat [Font Pertama Anda](/start/first-font/)),
hapus dulu salinan itu: di FontEasy pilih **Berkas › Hapus Font Uji**. Font uji tidak berada di
folder FontEasy, jadi tidak ikut terhapus saat FontEasy dihapus.

Untuk menghapus versi yang terpasang:

1. Buka **Pengaturan › Aplikasi › Aplikasi terinstal** (di Windows 10: **Pengaturan › Aplikasi ›
   Aplikasi & fitur**).
2. Cari **FontEasy** di daftar.
3. Klik tombol **…** di sebelahnya (Windows 10: klik entrinya) dan pilih **Hapus instalan**.
4. Konfirmasi, lalu klik **Uninstall** di jendela yang terbuka.

Langkah ini menghapus program, entri di menu Start, dan pintasan di desktop. Dua hal sengaja tetap
disimpan: font buatan Anda (itu file milik Anda) dan folder `%APPDATA%\FontEasy` berisi preferensi
dan plugin, supaya bila nanti dipasang lagi Anda bisa melanjutkan seperti semula. Kalau ingin
menghapus semuanya, hapus sendiri folder itu setelahnya.

Untuk menghapus versi portabel, cukup hapus foldernya.

## Bila ada masalah

**Tidak terjadi apa-apa saat saya mengeklik dua kali FontEasy.exe.** Pastikan zip sudah diekstrak.
Bila sudah, perbarui driver kartu grafis lewat Windows Update atau situs pembuat PC Anda; FontEasy
menggambar jendelanya memakai kartu grafis.

**Preferensi menyebut Python "tidak ditemukan".** Folder `python` tidak ada di sebelah
`FontEasy.exe`, biasanya karena programnya dipindah keluar dari foldernya. Pasang ulang, atau ekstrak
lagi zip-nya. Semua fitur selain script dan plugin tetap berjalan.

**Dialog Ekspor menyebut "ttfautohint tidak ditemukan".** Penyebabnya sama: folder `tools` hilang.
Font tetap bisa diekspor, hanya tanpa *hinting* TrueType.

**Teks antarmuka terlalu kecil atau terlalu besar.** Ubah **Ukuran font antarmuka** di
**Edit › Preferensi… › Antarmuka**.

## Ringkasan

- FontEasy berjalan di Windows 64-bit dan tidak memerlukan hak administrator.
- Unduh dari https://github.com/s4rt4/fonteasy/releases: penginstal `…-setup.exe` untuk kebanyakan
  orang, `.zip` untuk salinan portabel.
- Penginstal memasang FontEasy di folder pengguna Anda, menambah entri di menu Start dan (opsional)
  pintasan di desktop, dan bisa dihapus lewat Pengaturan › Aplikasi.
- FontEasy membawa Python sendiri beserta fontTools (untuk scripting) dan ttfautohint (untuk
  *hinting*).
- SmartScreen mungkin memperingatkan karena aplikasinya belum ditandatangani: **Info selengkapnya ›
  Tetap jalankan**, tetapi hanya untuk file dari halaman rilis resmi.
- FontEasy dimulai dalam bahasa Inggris, tampilan gelap, dan Mode Pro; pilih Mode Sederhana di
  Beranda, dan bahasa Indonesia di **Preferences › Interface › Language**.
- Pengaturan tersimpan di `%APPDATA%\FontEasy` dan tetap ada setelah pembaruan maupun penghapusan.

## Coba sendiri

1. Pasang FontEasy, jalankan, ubah bahasanya ke Indonesia, lalu pilih **Mode Sederhana** di layar
   Beranda.
2. Buka **Edit › Preferensi…** dan lihat ketiga tabnya. Ganti **Tema** ke **Terang**, klik
   **Terapkan** untuk melihat hasilnya, lalu kembalikan bila Anda lebih suka tampilan gelap.
3. Buka **Bantuan › Tentang FontEasy** dan periksa versi yang Anda pakai.
