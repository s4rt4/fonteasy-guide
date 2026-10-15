---
title: Mengenal Antarmuka
description: Menjelajahi FontEasy, dari layar Beranda dan ruang kerja sampai panel, mode, palet perintah, dan setiap menu.
---

Saat pertama kali membuka font di FontEasy, layar langsung penuh dengan kisi kotak-kotak, sederet
alat, beberapa panel, dan sebaris menu. Kelihatannya banyak. Kabar baiknya, setiap bagian punya satu
tugas yang jelas, dan di minggu-minggu pertama Anda hanya akan memakai segelintir saja.

Bab ini berkeliling jendela FontEasy, satu bagian demi satu bagian. Anda tidak perlu menghafal
semuanya: baca sekali, coba-coba, lalu kembali ke sini saat Anda bertanya-tanya untuk apa sebuah
panel. Gambar-gambarnya menampilkan Mode Pro kecuali disebutkan lain, karena Mode Pro memuat
semuanya; di Mode Sederhana Anda akan melihat lebih sedikit alat dan panel.

Dalam bab ini Anda akan mempelajari:

- apa saja yang ada di layar Beranda;
- bagian-bagian ruang kerja: bilah judul dan menu, bilah opsi, kotak alat, tab, Ikhtisar, panel,
  Pratinjau, dan bilah status;
- apa yang berubah antara Mode Sederhana dan Mode Pro, dan cara berpindah;
- cara memindahkan, menyembunyikan, dan memunculkan kembali panel;
- cara menemukan perintah apa pun lewat palet perintah;
- cara mengubah tampilan, bahasa, dan shortcut keyboard;
- kegunaan setiap menu dari kesebelas menu yang ada;
- cara memutar ulang tur terpandu.

## Layar Beranda

Saat tidak ada font yang terbuka, FontEasy menampilkan layar Beranda. Inilah tempat untuk memulai
font baru atau membuka kembali font lama.

![Layar Beranda: Font Baru… dan Buka… di kiri, empat template di bawah Mulai font baru, daftar Terbaru, dan dua kartu mode di bawah Bagaimana Anda ingin bekerja?.](screen:home)

Di sebelah kiri:

- **Font Baru…** (<kbd>Ctrl</kbd>+<kbd>N</kbd>) membuka dialog **Font Baru**, tempat Anda menamai font
  dan memilih template.
- **Buka…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>) membuka file font: UFO, designspace, file Glyphs, atau font
  jadi TTF maupun OTF.
- **Kembali ke Font** muncul bila ada font yang terbuka, dan membawa Anda kembali ke font-font itu.
- **Preferensi…** dan **Tentang FontEasy** ada di bagian bawah.

Di tengah:

- **Mulai font baru** menampilkan empat template. **Kosong** tidak berisi apa-apa, **Latin Dasar**
  berisi 95 karakter untuk teks bahasa Inggris dan Indonesia dasar, **Latin Lengkap** menambahkan
  huruf beraksen untuk sebagian besar bahasa Eropa (319 karakter), dan **Tulisan Tangan** berisi 76
  karakter template tulisan tangan. Klik sebuah kartu untuk membuka dialog **Font Baru** dengan
  template itu sudah terpilih.
- **Terbaru** mendaftar font yang baru-baru ini Anda buka. Klik namanya untuk membukanya lagi; tombol
  **✕** menghapusnya dari daftar (bukan dari disk).
- **Bagaimana Anda ingin bekerja?** memilih antara **Mode Sederhana** dan **Mode Pro**. Kartu yang
  terpilih diberi centang.

Anda juga bisa membuka font dengan menyeret filenya dari File Explorer ke jendela FontEasy.

Saat ada font yang terbuka, Anda tetap bisa kembali ke layar Beranda lewat **Jendela › Beranda**
(<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>H</kbd>) atau ikon rumah di bilah judul.

## Sekilas ruang kerja

Begitu sebuah font terbuka, jendela berubah menjadi ruang kerja. Berikut peta bagian-bagiannya,
disusul tampilan aslinya.

![Peta ruang kerja: bilah judul dengan menu di atas, bilah opsi di bawahnya, kotak alat di kiri, tab dan Ikhtisar di tengah dengan filter di sebelah kirinya, dock bawah, tiga kelompok panel di dock kanan, dan bilah status paling bawah.](diagram:start-workspace-map)

![Ruang kerja di Mode Pro dengan font baru bernama Nusantara Sans: kisi Ikhtisar di tengah, Info Glyph dan panel lain di kanan, serta Pratinjau di bawah.](screen:workspace)

### Bilah judul dan menu

Baris paling atas memuat kesebelas menu di kiri: **Berkas**, **Edit**, **Glyph**, **Font**,
**Metrics**, **Kerning**, **Fitur**, **Alat**, **Tampilan**, **Jendela**, dan **Bantuan**. Di tengah
tertulis nama font yang sedang Anda kerjakan. Titik di belakang nama, seperti "Nusantara Sans •",
berarti ada perubahan yang belum disimpan.

Di kanan, dari kiri ke kanan: ikon rumah (kembali ke Beranda), kaca pembesar
([palet perintah](#palet-perintah)), sakelar **Pro** / **Sederhana**, lalu tombol biasa untuk
meminimalkan, memaksimalkan, dan menutup jendela. Anda bisa menggeser jendela dengan menyeret bagian
kosong bilah judul, dan mengeklik dua kali untuk memaksimalkannya.

### Bilah opsi

Di bawah bilah judul ada bilah opsi. Di kirinya tertulis nama alat yang aktif, misalnya **Pilih**
atau **Pena**, diikuti pengaturan alat itu dan petunjuk satu baris. Di editor glyph, alat **Pilih**
menampilkan **Lebar**, **LSB**, dan **RSB** glyph saat tidak ada yang dipilih, serta isian **X**,
**Y**, **W**, dan **H** untuk pilihan saat ada yang dipilih.

### Kotak alat

Kolom sempit di sebelah kiri adalah kotak alat. Setiap tombol adalah alat yang dipakai di editor
glyph: klik tombolnya, atau tekan tombol keyboard-nya. Arahkan kursor ke tombol untuk melihat nama dan
tombol pintasnya.

Segitiga kecil di sudut tombol berarti tombol itu menyimpan alat lain. Klik kanan tombolnya, atau
tekan dan tahan, untuk memilih alat lain dari kelompok itu; tombolnya lalu menampilkan alat yang Anda
pilih.

| Kelompok | Alat (tombol) |
|---|---|
| Pilih | **Pilih** (<kbd>V</kbd>), **Node** (<kbd>A</kbd>) |
| Pena | **Pena** (<kbd>P</kbd>), **Tambah Titik** (<kbd>=</kbd>), **Hapus Titik** (<kbd>-</kbd>) |
| Pensil | **Pensil** (<kbd>N</kbd>) |
| Bentuk | **Persegi Panjang** (<kbd>M</kbd>), **Elips** (<kbd>L</kbd>), **Poligon** (<kbd>Shift</kbd>+<kbd>L</kbd>) |
| Potong | **Pisau** (<kbd>K</kbd>), **Gunting** (<kbd>C</kbd>) |
| Transformasi | **Putar** (<kbd>R</kbd>), **Skala** (<kbd>S</kbd>) |
| Ukur | **Ukur** (<kbd>U</kbd>), **Anchor** (<kbd>Shift</kbd>+<kbd>A</kbd>) |
| Spasi | **Metrics** (<kbd>Y</kbd>), **Kerning** (<kbd>J</kbd>) |
| Teks | **Teks** (<kbd>T</kbd>) |
| Tampilan | **Tangan** (<kbd>H</kbd>), **Zoom** (<kbd>Z</kbd>) |

Di Mode Sederhana, **Tambah Titik**, **Hapus Titik**, **Poligon**, **Gunting**, **Putar**, **Skala**,
dan **Ukur** disembunyikan. Bab [Alat Gambar](/drawing/drawing-tools/) menjelaskan setiap alat.

:::tip
Tahan <kbd>Space</kbd> untuk menggeser kanvas dengan mouse saat alat apa pun aktif, sama seperti alat
**Tangan**.
:::

### Tab

Di bawah bilah opsi ada sederet tab, satu untuk setiap font yang terbuka. Klik tab untuk berpindah
font, dan **×**-nya untuk menutup font. Anda bisa membuka beberapa font sekaligus, berguna untuk
membandingkan atau menyalin glyph.

Di dalam setiap font ada baris tab kedua. Yang pertama selalu **Ikhtisar**, kisi semua glyph. Saat
Anda membuka sebuah glyph untuk diedit, glyph itu mendapat tab sendiri di sebelah Ikhtisar, sehingga
Anda bisa membuka beberapa glyph dan melompat di antaranya. Editor **Fitur** dan **Papan Sketsa** juga
terbuka sebagai tab di sini.

### Ikhtisar

Ikhtisar menampilkan setiap glyph sebagai kotak dalam kisi. Glyph yang sudah digambar menampilkan
outline-nya; glyph yang masih kosong menampilkan hurufnya secara samar, sehingga Anda tahu mana yang
belum digambar. Nama glyph tertulis di bawah setiap kotak. Arahkan kursor ke sebuah kotak untuk
melihat nama, *code point*, dan nama Unicode-nya.

![Ikhtisar Source Serif 4: kategori, aksara, dan set glyph di kiri, dan kisi huruf-huruf asli di kanan dengan huruf a terpilih.](screen:g-overview)

Cara bekerja dengan kisi:

- Klik sebuah glyph untuk memilihnya. <kbd>Ctrl</kbd>+klik menambah atau mengurangi glyph dari
  pilihan, dan <kbd>Shift</kbd>+klik memilih satu rentang. Tombol panah menggeser pilihan.
- Klik dua kali sebuah glyph, atau tekan <kbd>Enter</kbd>, untuk membukanya di editor glyph.
- Klik kanan sebuah glyph untuk **Ganti Nama Glyph…**, **Duplikat Glyph**, **Salin Nama**, dan
  **Warna Tanda**.
- Ketik di kotak pencarian, atau tekan <kbd>/</kbd> untuk langsung ke sana, untuk mencari glyph
  berdasarkan nama, karakter, atau *code point* (`U+00E9`).
- Perbesar atau perkecil kotaknya lewat **Tampilan › Sel Glyph Lebih Besar** dan **Sel Glyph Lebih
  Kecil**, atau tahan <kbd>Ctrl</kbd> sambil memutar roda mouse.

Kolom di kiri menyaring kisi. **Semua Glyph** menampilkan semuanya. **Kategori** (Huruf, Angka, Tanda
baca…) dan **Aksara** (Latin, Yunani…) menampilkan sebagian font. **Set Glyph** mendaftar himpunan
karakter standar beserta jumlah yang sudah dimiliki font Anda, misalnya "95/95" untuk Latin Dasar;
pilih sebuah set untuk melihat yang belum ada dan menambahkannya dengan satu klik. Bab
[Memilih Karakter](/drawing/glyph-set/) membahas set glyph lebih rinci.

### Panel dan dock

Panel adalah jendela-jendela kecil di tepi layar. Panel disusun dalam kelompok bertab di tiga *dock*
(tempat berlabuh): kanan, bawah, dan (bila Anda menaruh sesuatu di sana) kiri. Klik tab panel untuk
menampilkannya.

| Panel | Isinya |
|---|---|
| **Perjalanan Font** | Langkah-langkah dari font kosong sampai font jadi (hanya Mode Sederhana) |
| **Info Glyph** | Nama, *code point*, karakter, aksara, *advance width*, jumlah kontur dan titik glyph yang dipilih |
| **Layer** | Layer glyph yang sedang diedit, misalnya layer latar |
| **Transformasi** | Menggeser, mengubah skala, memutar, dan memiringkan dengan angka |
| **Variasi** | Slider untuk *master* font variabel (Mode Pro) |
| **Warna** | Warna dan layer glyph berwarna |
| **Gambar** | Efek langsung: goresan, efek sudut, bagian pintar |
| **Validasi** | Masalah yang ditemukan pada outline, dengan tombol **Perbaiki** |
| **Kerning** | Daftar pasangan kerning font yang bisa dicari |
| **Riwayat** | Setiap perubahan yang Anda buat; klik sebuah entri untuk kembali ke sana |
| **Pratinjau** | Font Anda, dikompilasi dan dipakai untuk sebaris teks |
| **Periksa Font** | Hasil **Periksa Font** |
| **Scripting** | Script Python (Mode Pro) |

Cara menatanya:

- **Menciutkan kelompok:** klik dua kali salah satu tabnya, atau klik panah kecil di ujung kanan
  baris tab. Lakukan lagi untuk membentangkannya.
- **Memindahkan panel:** klik kanan tabnya lalu pilih **Pindah ke Dock Kiri**, **Pindah ke Dock
  Kanan**, atau **Pindah ke Dock Bawah**.
- **Menutup panel:** klik kanan tabnya lalu pilih **Tutup Panel**. Munculkan lagi lewat
  **Jendela › Panel**.
- **Menyembunyikan semua panel** agar lebih lega: **Tampilan › Panel**, atau tekan <kbd>Tab</kbd>.
  Tekan lagi untuk menampilkannya.
- **Mengembalikan semuanya:** **Jendela › Atur Ulang Ruang Kerja** mengembalikan setiap panel dan
  bilah ke posisi awalnya.

![Ruang kerja dengan panel Riwayat dan Layer dipindah ke dock baru di sebelah kiri.](screen:dock-left)

FontEasy mengingat tata letak Anda saat aplikasi ditutup.

### Panel Pratinjau

**Pratinjau** di bawah menampilkan font Anda seperti yang akan dilihat aplikasi lain: FontEasy
mengompilasinya menjadi font sungguhan di latar belakang, lalu memakainya untuk menampilkan teks
Anda. Selama proses itu, sesaat tampak tulisan "Mengompilasi…".

![Panel Pratinjau menampilkan HAVANA LIVES dalam Mutator Sans berukuran 64 pt, dengan slider ukuran, kotak centang Waterfall dan Glyph, serta fitur kern yang aktif.](screen:preview)

- Ketik teks apa saja di isian sebelah kiri. "Hamburgefonstiv" adalah kata uji klasik.
- Geser slider atau ketik ukurannya dalam poin.
- **Waterfall** menampilkan teks yang sama dalam beberapa ukuran, berjajar ke bawah.
- **Glyph** mendaftar nama glyph hasil olahan teks, berguna untuk memeriksa ligatur dan bentuk
  pengganti.
- Bila font punya fitur OpenType, sederet label fitur muncul di bawah isian teks ("Di-shape dengan
  HarfRust"); klik sebuah label untuk menyalakan atau mematikan fitur itu, dan pilih bahasa untuk
  menguji bentuk khusus suatu bahasa.

### Bilah status

Bilah tipis paling bawah menampilkan pesan di kiri, seperti "Siap", "… tersimpan", atau hasil
perintah terakhir. Di kanan, tergantung apa yang sedang Anda lakukan, tampil posisi kursor dalam unit
font saat Anda di editor glyph, glyph yang dipilih dan *code point*-nya (misalnya "A · U+0041"),
jumlah glyph dan *units per em* ("320 glyph · 1000 UPM"), mode yang aktif, dan versi FontEasy.

## Mode Sederhana dan Mode Pro

FontEasy punya dua mode. Keduanya bekerja dengan file font yang sama, dan Anda bisa berpindah kapan
saja tanpa kehilangan apa pun; yang berubah hanya banyaknya alat di layar.

![Font yang sama di Mode Sederhana: panel Perjalanan Font di kanan atas, alat di kotak alat lebih sedikit, dan langkah pertama tur terpandu di bawah.](screen:simple)

| | Mode Sederhana | Mode Pro |
|---|---|---|
| Kotak alat | Alat-alat penting | Ke-20 alat |
| Panel | Ada Perjalanan Font; tanpa Variasi dan Scripting | Semua panel kecuali Perjalanan Font |
| Menu | Item lanjutan disembunyikan | Semua item |
| Validasi | Pemeriksaan pokok (kontur terbuka, kontur bersilangan, arah…) | Semua pemeriksaan |
| Tombol Periksa Font | **Periksa Font Saya** | **Periksa Font** |
| Dialog Font Baru | *Units per em* disembunyikan (1000) | Ada isian **Units per em** |

Yang disembunyikan di Mode Sederhana antara lain **Berkas › Impor › Berkas Glyphs App (.glyphs)…**,
**Berkas › Ekspor › Instance Statis…** dan **Profil Ekspor…**, **Font › Master & Sumbu…**,
**Instance…** dan **Samakan Struktur**, **Kerning › Audit Kerning**, **Fitur › Periksa Fitur**,
**Alat › Scripting**, dan beberapa perintah kontur.

Untuk berpindah mode, pakai salah satu cara berikut:

- sakelar **Pro** / **Sederhana** di kanan atas jendela;
- **Jendela › Mode Sederhana**, **Jendela › Mode Pro**, atau **Jendela › Ganti Mode**
  (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>);
- kartu mode di layar Beranda;
- **Edit › Preferensi… › Antarmuka › Mode**.

Bilah status mengonfirmasi perubahannya, misalnya "Mode Sederhana: alat-alat penting dan wizard
terpandu.".

:::tip
Mode Sederhana bukan versi "lite". Ini FontEasy yang sama dengan lebih sedikit hal di layar. Banyak
orang menggambar di Mode Sederhana dan baru pindah ke Mode Pro untuk pekerjaan tertentu, misalnya
mengedit kode fitur.
:::

## Palet perintah

Lupa letak sebuah perintah? Tekan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> (atau klik kaca
pembesar di bilah judul, atau pilih **Tampilan › Palet Perintah**) lalu mulai mengetik.

![Palet perintah dengan kata "mode": tampil Mode Sederhana, Mode Pro, dan Ganti Mode, masing-masing dengan menu dan shortcut-nya.](screen:palette)

Palet mendaftar setiap perintah yang cocok beserta menu tempatnya dan shortcut-nya. Pilih dengan
tombol panah lalu tekan <kbd>Enter</kbd> untuk menjalankannya, atau klik. Tekan <kbd>Esc</kbd> untuk
menutup palet. Perintah yang saat ini tidak bisa dijalankan (misalnya **Perbesar** saat tidak ada
glyph yang terbuka) tetap tampil, tetapi tidak bisa dipilih.

## Tampilan, bahasa, dan ukuran teks

FontEasy punya tampilan gelap dan terang. Gantilah lewat **Tampilan › Tampilan › Gelap**, **Terang**,
atau **Ikuti Sistem** (mengikuti pengaturan Windows). Ya, namanya dua kali: submenu **Tampilan**
(*Appearance*) ada di dalam menu **Tampilan** (*View*). Gambar-gambar di panduan ini memakai tampilan
gelap.

![Ruang kerja dengan tampilan terang.](screen:light)

Pilihan lain ada di **Edit › Preferensi…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>), pada tab **Antarmuka**:

- **Tema**: Gelap, Terang, atau Sistem;
- **Ukuran font antarmuka**: Kecil, Sedang, atau Besar;
- **Bahasa**: English atau Bahasa Indonesia, langsung berlaku;
- **Mode**: Sederhana atau Pro;
- **Bilah judul**: centang **Pakai bilah judul sistem (setelah mulai ulang)** bila Anda lebih suka
  bilah judul standar Windows daripada bilah judul FontEasy.

Klik **Terapkan** untuk mencoba perubahan tanpa menutup jendela, **OK** untuk menerapkan lalu menutup,
atau **Batal** untuk membatalkan perubahan. **Kembalikan Bawaan** mengatur ulang tab yang sedang
dibuka.

![Jendela Preferensi pada tab Umum, berisi pengaturan Saat memulai, Font baru, Ekspor, dan Scripting.](screen:prefs)

Tab **Umum** mengatur apa yang terjadi saat aplikasi dibuka (tampilkan layar Beranda, tampilkan layar
pembuka, berapa banyak font terbaru yang didaftar), *units per em* dan selang simpan otomatis untuk
font baru, serta ttfautohint dan Python yang dipakai FontEasy. Di aplikasi yang terpasang, keduanya
menunjuk ke salinan di dalam folder FontEasy; Anda hanya perlu mengubahnya bila ingin memakai milik
Anda sendiri. Bab [Preferensi](/power/preferences/) membahas setiap pengaturan.

## Shortcut keyboard

Sebagian besar perintah menu dan semua alat punya shortcut keyboard, yang tertera di samping perintah
di menu. Beberapa yang perlu dihafal lebih dulu:

| Shortcut | Perintah |
|---|---|
| <kbd>Ctrl</kbd>+<kbd>N</kbd> | Font Baru… |
| <kbd>Ctrl</kbd>+<kbd>O</kbd> | Buka… |
| <kbd>Ctrl</kbd>+<kbd>S</kbd> | Simpan |
| <kbd>Ctrl</kbd>+<kbd>Z</kbd> / <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd> | Batalkan / Ulangi |
| <kbd>Enter</kbd> | Edit Glyph |
| <kbd>PageUp</kbd> / <kbd>PageDown</kbd> | Glyph Sebelumnya / Berikutnya |
| <kbd>Ctrl</kbd>+<kbd>0</kbd> | Muat di Jendela |
| <kbd>F5</kbd> | Uji Font di Browser |
| <kbd>Ctrl</kbd>+<kbd>E</kbd> | Ekspor Font… |
| <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> | Palet Perintah |

Setiap shortcut bisa diubah. Pilih **Edit › Shortcut Keyboard…**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>K</kbd>) atau **Bantuan › Shortcut Keyboard**.

![Tab Shortcut Keyboard di Preferensi: isian penyaring dan daftar perintah seperti Berkas › Font Baru… beserta shortcut dan tombol Hapus-nya.](screen:shortcuts)

1. Ketik sebagian nama perintah di **Saring perintah**.
2. Klik shortcut di samping perintah itu. Tulisannya berubah menjadi "Tekan tombol…".
3. Tekan kombinasi tombol yang baru. Atau tekan <kbd>Esc</kbd> untuk membatalkan.
4. Klik **OK**.

Bila kombinasi itu sudah dipakai perintah lain, FontEasy memindahkannya dan memberi tahu perintah mana
yang kehilangan shortcut. **Hapus** mengosongkan shortcut, dan **Atur Ulang** mengembalikan shortcut
bawaan. Daftar lengkapnya ada di [Shortcut Keyboard](/reference/shortcuts/).

## Sekilas tentang menu

Menu memuat setiap perintah di FontEasy. Berikut kegunaan masing-masing. Gambarnya menampilkan menu
di Mode Pro dengan Source Serif 4 terbuka; di Mode Sederhana sebagian item disembunyikan, dan item yang
saat ini tidak bisa dipakai tampak redup.

### Berkas

Membuat, membuka, menyimpan, dan menutup font; mengimpor glyph dari file SVG atau file Glyphs;
mengekspor font dan font web; menguji font di browser (<kbd>F5</kbd>) atau memasang salinan uji
(<kbd>Ctrl</kbd>+<kbd>F5</kbd>); serta **Buka Terbaru**.

![Menu Berkas terbuka: Font Baru…, Buka…, Buka Folder UFO…, Tutup, Simpan, Impor, Ekspor, Uji Font di Browser, Pasang Font untuk Uji, Hapus Font Uji, Keluar, dan Buka Terbaru.](screen:g-menu-file)

### Edit

Membatalkan dan mengulangi, memotong, menyalin, menempel, dan menghapus, memilih, **Cari Glyph…**
(<kbd>Ctrl</kbd>+<kbd>F</kbd>), serta jendela **Shortcut Keyboard…** dan **Preferensi…**.

![Menu Edit terbuka, dengan Batalkan, Ulangi, Potong, Salin, Tempel, Hapus, Pilih Semua, Batal Pilih, Cari Glyph…, Shortcut Keyboard…, dan Preferensi….](screen:g-menu-edit)

### Glyph

Semua hal tentang satu glyph atau glyph-glyph yang dipilih: mengedit, berpindah ke glyph sebelumnya
atau berikutnya, membuat baru, menduplikat, dan mengganti nama, warna tanda, menempatkan gambar
acuan, komponen dan anchor, submenu **Transformasi** dan **Kontur** (hapus tumpang tindih,
menggabungkan bentuk, memperbaiki arah, membulatkan sudut…), menyusun huruf beraksen dengan
**Buat Komposit…**, dan **Perbaiki Masalah**.

![Menu Glyph terbuka, dengan Edit Glyph, Glyph Baru…, Warna Tanda, Tambah Komponen…, submenu Transformasi dan Kontur, Buat Komposit…, dan Perbaiki Masalah.](screen:g-menu-glyph)

### Font

Pengaturan dan alat untuk seluruh font: **Info Font…**, menambah dan mengurutkan glyph, membuat
*small caps*, **Periksa Font…** (<kbd>F7</kbd>), palet warna, font variabel (**Jadikan Variabel…**,
*master*, *instance*), dan **Validasi Font**.

![Menu Font terbuka, dengan Info Font…, Tambah Glyph…, Urutkan Glyph, Buat Small Caps…, Periksa Font…, Palet Warna…, Jadikan Variabel…, Master & Sumbu…, dan Validasi Font.](screen:g-menu-font)

### Metrics

Pengaturan jarak: **Jendela Metrics** untuk mengatur spasi glyph dalam sebaris teks, **Spasi
Otomatis…**, dan **Perbarui Metrics**.

![Menu Metrics terbuka, dengan Jendela Metrics, Spasi Otomatis…, dan Perbarui Metrics.](screen:g-menu-metrics)

### Kerning

Kerning: **Jendela Kerning**, grup kerning, grup otomatis dan **Kerning Otomatis…**, serta di Mode
Pro **Audit Kerning**.

![Menu Kerning terbuka, dengan Jendela Kerning, Grup Kerning…, Grup Otomatis dari Komposit, Kerning Otomatis…, dan Audit Kerning.](screen:g-menu-kerning)

### Fitur

Fitur OpenType: editor **Fitur**, **Perbarui Fitur Otomatis**, dan di Mode Pro **Periksa Fitur**.

![Menu Fitur terbuka, dengan Fitur, Perbarui Fitur Otomatis, dan Periksa Fitur.](screen:g-menu-features)

### Alat

Pembantu dan wizard: submenu **Wizard** (Wizard Font Baru, Wizard Font Tulisan Tangan, Wizard
Komposit Otomatis), **Jiplak Gambar Otomatis…**, **Ubah Glyph…** untuk mengubah banyak glyph
sekaligus, **Papan Sketsa**, **Scripting**, **Plugin…**, dan perintah-perintah yang ditambahkan
plugin.

![Menu Alat terbuka, dengan Wizard, Jiplak Gambar Otomatis…, Ubah Glyph…, Papan Sketsa, Scripting, Plugin…, dan submenu Plugin.](screen:g-menu-tools)

### Tampilan

Memperbesar dan memperkecil editor glyph, apa yang ditampilkan di kanvas (isian, layer latar, master
lain, warna, masalah), ukuran kotak di Ikhtisar, **Palet Perintah**, bilah mana yang ditampilkan
(kotak alat, bilah opsi, bilah status, panel), dan **Tampilan** (gelap atau terang).

![Menu Tampilan terbuka, dengan Perbesar, Perkecil, Muat di Jendela, pilihan Tampilkan, Sel Glyph Lebih Besar dan Lebih Kecil, Palet Perintah, Kotak Alat, Bilah Opsi, Bilah Status, Panel, dan Tampilan.](screen:g-menu-view)

### Jendela

Mode, layar **Beranda**, submenu **Panel** untuk menampilkan panel apa pun, **Atur Ulang Ruang
Kerja**, dan di bagian bawah daftar font yang terbuka untuk berpindah di antaranya.

![Menu Jendela terbuka, dengan Mode Sederhana, Mode Pro (dicentang), Ganti Mode, Beranda, Panel, Atur Ulang Ruang Kerja, dan font terbuka Source Serif 4.](screen:g-menu-window)

### Bantuan

**Bantuan FontEasy** (<kbd>F1</kbd>) membuka halaman proyek FontEasy di browser. **Shortcut Keyboard**
membuka editor shortcut, **Tur** memutar ulang tur terpandu, dan **Tentang FontEasy** menampilkan
versi dan daftar kredit.

![Menu Bantuan terbuka, dengan Bantuan FontEasy, Shortcut Keyboard, Tur, dan Tentang FontEasy.](screen:g-menu-help)

## Tur terpandu

Saat pertama kali Anda membuka atau membuat font di Mode Sederhana, FontEasy menampilkan tur singkat
lima langkah dalam sebuah kotak di dekat bagian bawah jendela:

1. **Font Anda, glyph demi glyph**: setiap kotak di Ikhtisar adalah glyph; klik dua kali untuk
   menggambarnya.
2. **Alat di sebelah kiri**: Pena dan Pensil untuk menggambar, Persegi Panjang dan Elips membuat
   bentuk, Metrics dan Kerning mengatur jarak huruf.
3. **Perjalanan Font**: panel di kanan memandu Anda dari huruf pertama sampai font jadi.
4. **Preview sambil bekerja**: Pratinjau di bawah menampilkan font Anda selagi Anda bekerja.
5. **Siap untuk lebih?**: beralih ke Pro untuk semua alat dan panel.

![Langkah pertama tur, "Font Anda, glyph demi glyph", dengan titik-titik untuk lima langkah, Lewati tur, dan Lanjut.](screen:tour)

Klik **Lanjut** untuk meneruskan, **Kembali** untuk mundur, dan **Mulai** di langkah terakhir untuk
selesai. **Lewati tur** atau <kbd>Esc</kbd> menutupnya kapan saja. Untuk melihatnya lagi, pilih
**Bantuan › Tur**.

## Ringkasan

- Layar Beranda memulai font baru dari template, membuka lagi font terbaru, dan memilih mode.
- Ruang kerja terdiri atas bilah judul dengan menu, bilah opsi untuk alat yang aktif, kotak alat di
  kiri, tab untuk font dan glyph, kisi Ikhtisar, panel yang berlabuh di dock, Pratinjau, dan bilah
  status.
- Panel bisa diciutkan, dipindah ke dock lain lewat klik kanan pada tabnya, ditutup, dan dimunculkan
  lagi lewat **Jendela › Panel**; <kbd>Tab</kbd> menyembunyikan semuanya dan **Jendela › Atur Ulang
  Ruang Kerja** mengembalikannya.
- Mode Sederhana menyembunyikan alat lanjutan dan menambahkan Perjalanan Font; Mode Pro menampilkan
  semuanya. Berpindahlah lewat sakelar **Pro** / **Sederhana** atau
  <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>.
- Palet perintah (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) menemukan perintah apa pun dari
  namanya.
- Tampilan, bahasa, ukuran teks, dan shortcut diatur di **Edit › Preferensi…**.
- **Bantuan › Tur** memutar ulang tur lima langkah.

## Coba sendiri

1. Buat font dari template **Latin Dasar**. Cari glyph `g` lewat kotak pencarian, pilih, lalu baca
   *code point*-nya di **Info Glyph**.
2. Klik kanan tab **Riwayat** dan pindahkan panelnya ke dock kiri. Lalu pilih **Jendela › Atur Ulang
   Ruang Kerja** untuk mengembalikannya.
3. Tekan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>, ketik `terang`, lalu tekan <kbd>Enter</kbd>.
   Lakukan hal yang sama dengan `gelap`.
4. Pindah ke Mode Sederhana lalu kembali ke Mode Pro, dan hitung berapa banyak alat yang muncul dan
   hilang di kotak alat.
