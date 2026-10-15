---
title: Font Pertama Anda
description: Tutorial praktik lengkap dari font kosong sampai font TrueType yang sudah diuji dan diekspor, dengan lima huruf yang digambar dari bentuk-bentuk sederhana.
---

Cukup membacanya: saatnya membuat font. Di bab ini Anda membuat font kecil bernama **Kotak Sans** dari
awal sampai akhir. Anda akan menggambar lima huruf, **H**, **I**, **O**, **n**, dan **o**, hanya dengan
persegi panjang dan elips, memberinya jarak yang baik, melihatnya di Pratinjau, mengujinya di browser
dan di Word, mengekspor file font `.ttf` sungguhan, dan menyimpan pekerjaan Anda.

Lima huruf memang tidak banyak, tetapi di dalamnya ada hampir semua gagasan desain huruf: bentuk lurus
dan bulat, huruf kapital dan huruf kecil, *stem* yang sama tebal, *overshoot*, dan *sidebearing*.
Begitu Anda bisa membuat kelima huruf ini, sisa abjad bisa Anda buat dengan cara yang sama, dan
nantinya dengan alat yang lebih canggih.

Sediakan waktu sekitar satu jam. Setiap langkah menyebutkan dengan tepat apa yang perlu diklik dan apa
yang seharusnya Anda lihat sesudahnya. Kalau ada yang tampak berbeda, kotak-kotak keterangan di
sepanjang bab menjelaskan sebabnya.

Dalam bab ini Anda akan mempelajari:

- cara membuat font baru lewat dialog Font Baru atau Wizard Font Baru;
- bagaimana Perjalanan Font memandu Anda di Mode Sederhana;
- cara menyimpan font sebagai source UFO;
- cara menggambar huruf dari persegi panjang dan elips dengan ukuran yang tepat;
- cara membuat lubang dan lengkungan dengan **Kurangi**;
- cara mengatur lebar dan *sidebearing* sebuah glyph, serta cara kerja Spasi Otomatis;
- cara melihat pratinjau, memeriksa, dan menguji font, memasang salinan uji, dan mengekspor TTF.

## Rencananya

Sebelum menggambar, desainer huruf membuat rencana. Rencana kita sederhana: setiap goresan tebalnya 80
unit, huruf kapital setinggi 700 unit (*cap height*), dan huruf kecil setinggi 500 unit (*x-height*).
Huruf bulat melewati garis sejauh 10 unit, seperti yang Anda pelajari di
[Dasar-Dasar Huruf](/start/type-basics/#overshoot).

![Lima huruf Kotak Sans yang tersusun dari persegi panjang dan elips di kotaknya masing-masing: H lebar 550, I lebar 200, O lebar 600, n lebar 500, o lebar 520, dengan cap height 700, x-height 500, dan baseline 0.](diagram:first-font-plan)

Semua ukuran di bab ini dalam unit font, pada font dengan 1000
[*units per em*](/reference/glossary/#units-per-em). Titik (0, 0) adalah tempat
[*baseline*](/reference/glossary/#baseline) (garis dasar) bertemu tepi kiri kotak glyph; X bertambah ke
kanan dan Y bertambah ke atas. Anda akan mengetik angka-angka ini di FontEasy, sehingga huruf Anda
persis seperti gambar.

| Huruf | Bentuk | Lebar |
|---|---|---|
| I | satu persegi panjang | 200 |
| H | tiga persegi panjang | 550 |
| O | dua elips, elips dalam dikurangkan | 600 |
| o | dua elips, elips dalam dikurangkan | 520 |
| n | lengkungan dari dua elips dan satu persegi panjang, ditambah dua persegi panjang | 500 |

## Dua cara memulai font

Pastikan dulu FontEasy berada di Mode Sederhana: di layar Beranda, klik **Mode Sederhana** di bawah
**Bagaimana Anda ingin bekerja?**, atau klik **Sederhana** pada sakelar di kanan atas. Mode Sederhana
membuat layar tetap tenang dan menampilkan Perjalanan Font.

FontEasy menyediakan dua cara membuat font. Untuk tutorial ini, pakai cara pertama.

### Dialog Font Baru

1. Di layar Beranda, klik **Font Baru…** (atau tekan <kbd>Ctrl</kbd>+<kbd>N</kbd>). Dialog **Font
   Baru** terbuka.
2. Di **Nama keluarga**, ganti "Untitled" dengan `Kotak Sans`.
3. Di bawah **Mulai dengan**, pilih **Latin Dasar**: 95 karakter ASCII, yaitu A–Z, a–z, angka, dan
   tanda baca.
4. Klik **Buat**.

![Dialog Font Baru dengan isian Nama keluarga, empat template di bawah Mulai dengan (Latin Dasar terpilih), dan tombol Buat.](screen:newfont)

FontEasy membuat font itu dan membukanya di ruang kerja. Semua glyph dari template sudah ada, tetapi
masih kosong: Ikhtisar menampilkan setiap huruf secara samar, menunggu untuk digambar. Bilah status
menunjukkan "96 glyph · 1000 UPM" (95 karakter ditambah `.notdef`, kotak yang tampil untuk karakter
yang tidak dimiliki font).

:::note
Di Mode Pro, dialog ini juga punya isian **Units per em**. Biarkan 1000 untuk tutorial ini; semua
angka di bawah mengandalkan nilai itu.
:::

### Wizard Font Baru

Cara kedua adalah **Alat › Wizard › Wizard Font Baru…**, yang mengajukan tiga pertanyaan ramah:

1. **Nama**: apa nama font Anda, dan untuk apa (**Teks bacaan**, **Judul dan logo**, atau
   **Tulisan tangan saya**)? Memilih tulisan tangan langsung membuka Wizard Font Tulisan Tangan
   sesudahnya.
2. **Karakter**: template mana yang menjadi titik awal.
3. **Proporsi**: seberapa tinggi huruf kecil dibanding huruf kapital, ditampilkan sebagai gambar:
   **Kecil**, **Sedang**, atau **Besar**.

![Langkah 3 Wizard Font Baru: tiga gambar H dengan dua batang pendek untuk x-height Kecil, Sedang, dan Besar, serta tombol Buat Font.](screen:newfont-wizard)

Wizard ini mengatur tinggi kapital menjadi 700 dan tinggi-x menjadi 62, 71, atau 78 % darinya,
misalnya 497 untuk **Sedang**. Itu bagus untuk proyek Anda sendiri, tetapi tutorial ini memakai
tinggi-x tepat 500, jadi untuk sekarang gunakan dialog Font Baru.

## Melihat-lihat sebentar

Karena ini font pertama Anda di Mode Sederhana, tur terpandu muncul di bagian bawah jendela. Klik
**Lanjut** untuk mengikuti kelima langkahnya (atau **Lewati tur**). Tur ini menunjukkan Ikhtisar, alat,
Perjalanan Font, dan Pratinjau, yang sebentar lagi akan Anda pakai.

![Mode Sederhana dengan font baru: kotak tur "Font Anda, glyph demi glyph" di bawah dan Perjalanan Font di kanan atas.](screen:tour)

Sekarang lihat panel di kanan atas: **Perjalanan Font**. Panel ini mendaftar jalan dari font kosong
sampai font jadi:

1. **Beri nama font** (sudah dicentang; tombol **Info Font…**-nya bisa dipakai untuk mengganti nama
   nanti).
2. **Gambar hurufnya**, dengan tombol **Gambar Berikutnya**, **Tulisan Tangan…**, dan **Impor SVG…**.
3. **Tambah huruf beraksen**.
4. **Atur spasi huruf**.
5. **Kerning pasangan sulit**.
6. **Fitur**.
7. **Periksa font Anda**.
8. **Uji dan ekspor**.

Langkah pertama yang belum selesai terbuka dan disorot. Centang hijau menandai langkah yang sudah
selesai. Anda bisa mengeklik langkah mana saja untuk membukanya dan melihat tombol-tombolnya. Di bawah
**Gambar hurufnya** tertulis "0 dari 62 huruf dan angka sudah digambar": 26 huruf kapital, 26 huruf
kecil, dan 10 angka yang dibutuhkan setiap font.

![Perjalanan Font dengan Beri nama font dicentang dan Gambar hurufnya terbuka, menampilkan 6 dari 62 huruf dan angka sudah digambar serta tombol Gambar Berikutnya, Tulisan Tangan…, dan Impor SVG….](screen:journey)

:::tip
**Gambar Berikutnya** membuka huruf atau angka pertama yang masih kosong, dimulai dari A. Di tutorial
ini kita menggambar dengan urutan sendiri, jadi kita membuka glyph dari Ikhtisar.
:::

## Simpan font Anda lebih dulu

Menyimpan sekarang berarti Anda tidak akan pernah kehilangan lebih dari beberapa menit pekerjaan.

1. Tekan <kbd>Ctrl</kbd>+<kbd>S</kbd> (atau pilih **Berkas › Simpan**). Karena font ini belum pernah
   disimpan, jendela **Simpan Font Sebagai** terbuka.
2. Pilih sebuah folder, misalnya folder baru `Fonts` di **Dokumen**.
3. Nama filenya sudah `Kotak Sans.ufo`, dengan jenis **UFO font source**. Klik **Simpan**.

Bilah status menampilkan "Kotak Sans.ufo tersimpan", dan titik di belakang nama font hilang.

[UFO](/reference/glossary/#ufo) (Unified Font Object) adalah format terbuka yang dipakai FontEasy untuk
font yang sedang Anda kerjakan. UFO bukan satu file, melainkan folder berakhiran `.ufo` yang berisi
banyak file teks kecil: satu per glyph, ditambah file untuk info font, kerning, dan fitur. Banyak
aplikasi font lain juga bisa membukanya. Inilah *source* Anda: salinan induk yang bisa disunting.
File `.ttf` yang nanti Anda ekspor adalah produk jadinya, dibuat dari source, mirip PDF yang dibuat
dari dokumen Word.

:::danger
Selalu simpan dan cadangkan folder `.ufo`. File `.ttf` hasil ekspor tidak bisa diubah kembali menjadi
source yang bisa disunting tanpa kehilangan informasi. Jangan memindahkan atau mengganti nama
file-file di dalam folder `.ufo` secara manual; biarkan FontEasy yang mengurusnya.
:::

Mulai sekarang, tekan <kbd>Ctrl</kbd>+<kbd>S</kbd> setiap kali Anda selesai menggambar satu huruf.
FontEasy juga menulis salinan pemulihan setiap beberapa menit, sehingga aplikasi mogok tidak akan
menghapus pekerjaan Anda, tetapi menyimpan tetap tugas Anda.

## Menggambar I

Huruf I hanyalah satu persegi panjang: huruf pertama yang sempurna.

1. Di Ikhtisar, cari glyph `I` (i kapital) dan klik dua kali. Glyph itu terbuka di tab baru di
   sebelah **Ikhtisar**, di editor glyph.
2. Lihat kanvasnya. Garis-garis mendatar diberi label **ascender 750**, **tinggi kapital 700**,
   **Tinggi-x 500**, **baseline 0**, dan **descender -250**. Dua garis tegak adalah tepi kotak glyph:
   di 0 di sebelah kiri, dan di lebarnya (500 untuk glyph baru) di sebelah kanan. Di tengah ada
   petunjuk bahwa glyph ini kosong dan cara menggambarnya.

![Editor glyph untuk glyph kosong di Mode Sederhana: garis metrics berlabel, dua garis tegak kotak glyph, dan petunjuk "Glyph kosong: gambar dengan Pen (P) atau Pencil (N), tempel bentuk dari Illustrator atau Inkscape, atau pakai Alat › Jiplak Gambar Otomatis…".](screen:emptyglyph)

3. Pilih alat **Persegi Panjang**: klik tombol berbentuk persegi di kotak alat, atau tekan
   <kbd>M</kbd>. Bilah opsi menampilkan "Seret untuk menggambar persegi panjang (Shift: persegi)."
4. Seret di mana saja di kanvas untuk menggambar persegi panjang berukuran berapa pun. Jangan pedulikan
   ukuran atau posisinya: angka tepatnya akan Anda ketik sesudah ini.
5. Tekan <kbd>V</kbd> untuk beralih ke alat **Pilih**. Persegi panjang yang baru Anda gambar masih
   terpilih, dan bilah opsi kini menampilkan empat isian: **X**, **Y**, **W**, dan **H**, yaitu tepi
   kiri, tepi bawah, lebar, dan tinggi pilihan.
6. Klik isian **X**, ketik `60`, lalu tekan <kbd>Enter</kbd>. Dengan cara yang sama, isi **Y** dengan
   `0`, **W** dengan `80`, dan **H** dengan `700`, sambil menekan <kbd>Enter</kbd> setelah setiap
   isian.

![Alat Persegi Panjang terpilih di editor glyph: nama dan petunjuknya di bilah opsi, dan tombol alat bentuk yang disorot di kotak alat.](screen:g-tool-rectangle)

Sekarang Anda punya *stem* selebar 80 unit, berdiri di atas *baseline* dan mencapai tepat tinggi
kapital, 60 unit dari tepi kiri kotak.

7. Klik bagian kanvas yang kosong (atau tekan <kbd>Ctrl</kbd>+<kbd>D</kbd>) sehingga tidak ada yang
   terpilih. Bilah opsi kini menampilkan **Lebar**, **LSB**, dan **RSB** glyph.
8. Klik isian **Lebar**, ketik `200`, lalu tekan <kbd>Enter</kbd>.

Tepi kanan kotak bergeser masuk. **LSB** menunjukkan 60 dan **RSB** menunjukkan 60: huruf I punya ruang
60 unit di masing-masing sisi. Lihat panel **Pratinjau** di bawah: setelah sesaat "Mengompilasi…",
huruf I Anda muncul di teks pratinjau di setiap tempat yang mengandung I. Tekan
<kbd>Ctrl</kbd>+<kbd>S</kbd>.

:::tip
Untuk melihat seluruh kotak glyph dengan ukuran yang nyaman, pilih **Tampilan › Muat di Jendela**
(<kbd>Ctrl</kbd>+<kbd>0</kbd>). Tahan <kbd>Space</kbd> sambil menyeret untuk menggeser kanvas, dan pakai
**Tampilan › Perbesar** dan **Perkecil** (<kbd>Ctrl</kbd>+<kbd>=</kbd> dan <kbd>Ctrl</kbd>+<kbd>-</kbd>).
:::

:::caution
Bila sebuah isian angka tidak menerima nilai Anda, pastikan Anda menekan <kbd>Enter</kbd> (atau
mengeklik tempat lain) setelah mengetik: nilainya diterapkan saat isian kehilangan fokus. Dan bila
Anda salah mengetik di isian lain, tekan <kbd>Ctrl</kbd>+<kbd>Z</kbd> untuk membatalkan. Setiap
perubahan bisa dibatalkan.
:::

## Menggambar H

Huruf H terdiri atas dua *stem* seperti I, yang disambung sebuah palang.

1. Kembali ke tab **Ikhtisar** dan klik dua kali `H`.
2. Tekan <kbd>M</kbd> untuk alat **Persegi Panjang** dan seret sebuah persegi panjang.
3. Tekan <kbd>V</kbd> lalu isi **X** `70`, **Y** `0`, **W** `80`, **H** `700`. Inilah *stem* kiri.
4. Tekan <kbd>M</kbd>, seret persegi panjang kedua, tekan <kbd>V</kbd>, lalu isi **X** `400`, **Y**
   `0`, **W** `80`, **H** `700`. Inilah *stem* kanan.
5. Tekan <kbd>M</kbd>, seret persegi panjang ketiga, tekan <kbd>V</kbd>, lalu isi **X** `70`, **Y**
   `320`, **W** `410`, **H** `70`. Inilah palangnya, yang melintang di atas kedua *stem*.
6. Klik bagian kanvas yang kosong, lalu isi **Lebar** dengan `550`.

Palangnya sedikit lebih tipis daripada *stem* (70, bukan 80). Goresan mendatar yang setebal goresan
tegak tampak lebih berat di mata kita, jadi desainer membuatnya sedikit lebih tipis. Palangnya juga
diletakkan sedikit di atas titik tengah huruf, agar tampak lebih seimbang.

Palang menumpuk di atas *stem*. Itu sama sekali tidak masalah: selama menggambar, bentuk boleh saling
menumpuk. Saat ekspor, FontEasy menggabungkannya menjadi satu outline yang bersih (pilihan
**Hapus overlap**, yang menyala secara bawaan).

## Menggambar O

Huruf O adalah cincin: elips luar yang dilubangi elips dalam. Dalam istilah font,
[*contour*](/reference/glossary/#contour) (kontur) luar adalah bentuknya, dan kontur dalam adalah
lubangnya, yaitu [*counter*](/reference/glossary/#counter) (ruang dalam).

1. Di Ikhtisar, klik dua kali `O`.
2. Pilih alat **Elips**: tekan <kbd>L</kbd>, atau klik kanan tombol **Persegi Panjang** di kotak alat
   lalu pilih **Elips**.
3. Seret sebuah elips, tekan <kbd>V</kbd>, lalu isi **X** `40`, **Y** `-10`, **W** `520`, **H**
   `720`. Elipsnya kini membentang dari −10 sampai 710: 10 unit di bawah *baseline* dan 10 unit di
   atas tinggi kapital. Itulah *overshoot*-nya.
4. Tekan <kbd>L</kbd>, seret elips kedua yang lebih kecil, tekan <kbd>V</kbd>, lalu isi **X** `125`,
   **Y** `70`, **W** `350`, **H** `560`. Elips dalam ini masih terpilih.
5. Pilih **Glyph › Kontur › Kurangi**.

Elips dalam terpotong dari elips luar, dan tampaklah sebuah cincin. **Kurangi** mengambil bentuk yang
dipilih (atau, bila tidak ada yang dipilih, bentuk yang terakhir digambar) lalu membuangnya dari
bentuk-bentuk lain.

![Editor glyph dengan huruf O dari dua elips: kontur luar dan kontur dalam, titik-titik persegi di garis dan handle bulatnya, dengan alat Node.](screen:editnew)

Sisi kiri dan kanan cincin tebalnya 85 unit, sedikit lebih tebal daripada bagian atas dan bawah yang
80 unit. Goresan bulat tampak lebih tipis daripada goresan lurus yang sama tebalnya, jadi diberi
sedikit tambahan. *Counter*-nya tepat di tengah: kedua elips berpusat di X 300, Y 350.

6. Klik bagian kanvas yang kosong lalu isi **Lebar** dengan `600`. **LSB** dan **RSB** sama-sama
   menunjukkan 40.

:::caution
Bila bagian dalam O terisi, bukan berlubang, berarti elips dalam belum dikurangkan. Tekan
<kbd>Ctrl</kbd>+<kbd>Z</kbd> sampai kembali ke dua elips, klik elips dalam dengan alat **Pilih**, lalu
pilih **Glyph › Kontur › Kurangi** sekali lagi. Bila bilah status menampilkan "Tidak ada yang berubah:
pilih kontur yang menumpuk kontur lain.", kedua elips tidak saling menumpuk: periksa angka-angkanya.
:::

:::note
Cara lain membuat lubang adalah membiarkan kedua elips lalu memilih **Glyph › Kontur › Perbaiki Arah**
(<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>). Outline punya arah, dan kontur yang berjalan berlawanan
arah di dalam kontur lain menjadi lubang. Bila panel **Validasi** suatu saat melaporkan "Arah kontur
salah", tombol **Perbaiki**-nya melakukan hal yang sama. Bab
[Outline dan Kurva Bézier](/drawing/outlines/) menjelaskan
[*contour direction*](/reference/glossary/#contour-direction) (arah kontur).
:::

## Menggambar o

Huruf o kecil dibuat persis seperti O, hanya lebih kecil: ia berada di antara *baseline* dan tinggi-x,
lagi-lagi dengan *overshoot* 10 unit.

1. Di Ikhtisar, klik dua kali `o`.
2. Tekan <kbd>L</kbd>, seret sebuah elips, tekan <kbd>V</kbd>, lalu isi **X** `40`, **Y** `-10`,
   **W** `440`, **H** `520`.
3. Tekan <kbd>L</kbd>, seret elips lain, tekan <kbd>V</kbd>, lalu isi **X** `122`, **Y** `70`, **W**
   `276`, **H** `360`.
4. Pilih **Glyph › Kontur › Kurangi**.
5. Klik bagian kanvas yang kosong lalu isi **Lebar** dengan `520`.

Sisi kiri-kanannya 82 unit dan bagian atas-bawahnya 80. Bandingkan o dengan O: huruf kecilnya lebih
bulat, karena tingginya menyusut lebih banyak daripada lebarnya. Hal ini juga lazim di font sungguhan.

## Menggambar n

Huruf n adalah yang paling menarik dari kelimanya: satu *stem* di kiri, dan lengkungan yang keluar
darinya lalu turun menjadi *stem* kedua. Kita membuat lengkungan itu dari separuh atas sebuah cincin.

![Membuat n dalam empat langkah: dua elips; Kurangi menghasilkan cincin; persegi panjang di separuh bawah lalu Kurangi lagi menyisakan lengkungan; dua persegi panjang menambahkan stem.](diagram:first-font-n-steps)

1. Di Ikhtisar, klik dua kali `n`.
2. Tekan <kbd>L</kbd>, seret sebuah elips, tekan <kbd>V</kbd>, lalu isi **X** `60`, **Y** `100`, **W**
   `380`, **H** `410`. Puncaknya di 510: *overshoot* 10 unit di atas tinggi-x.
3. Tekan <kbd>L</kbd>, seret elips lain, tekan <kbd>V</kbd>, lalu isi **X** `140`, **Y** `180`, **W**
   `220`, **H** `250`.
4. Pilih **Glyph › Kontur › Kurangi**. Anda mendapat cincin yang tebalnya 80 unit di sekelilingnya.
5. Tekan <kbd>M</kbd>, seret sebuah persegi panjang, tekan <kbd>V</kbd>, lalu isi **X** `40`, **Y**
   `80`, **W** `420`, **H** `225`. Persegi panjang ini menutupi separuh bawah cincin, sampai Y 305,
   yaitu bagian tengah cincin.
6. Pilih **Glyph › Kontur › Kurangi** lagi. Separuh bawahnya hilang dan tersisa sebuah lengkungan.
7. Tekan <kbd>M</kbd>, seret persegi panjang, tekan <kbd>V</kbd>, lalu isi **X** `60`, **Y** `0`,
   **W** `80`, **H** `500`. Inilah *stem* kiri, dari *baseline* sampai tinggi-x.
8. Tekan <kbd>M</kbd>, seret persegi panjang, tekan <kbd>V</kbd>, lalu isi **X** `360`, **Y** `0`,
   **W** `80`, **H** `310`. Inilah *stem* kanan. Ujungnya sedikit masuk ke lengkungan, sehingga
   keduanya tersambung tanpa celah.
9. Klik bagian kanvas yang kosong lalu isi **Lebar** dengan `500`.

Huruf n Anda kini punya [*stem*](/reference/glossary/#stem), bahu, dan *stem* kedua, semuanya setebal
80 unit. *Stem* kiri dan lengkungannya saling menumpuk di dekat kiri atas: sekali lagi, itu tidak
masalah, dan ekspor akan menggabungkannya.

:::tip
Ada yang salah di tengah jalan? <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkan satu langkah setiap kali, dan
panel **Riwayat** (kanan bawah, di sebelah **Validasi** dan **Kerning**) mendaftar setiap langkah:
klik langkah sebelumnya untuk kembali ke sana.
:::

Lihat Perjalanan Font: **Gambar hurufnya** kini menunjukkan "5 dari 62 huruf dan angka sudah
digambar". Simpan dengan <kbd>Ctrl</kbd>+<kbd>S</kbd>.

## Atur spasi huruf

Menggambar baru separuh pekerjaan; separuh lainnya adalah [*spacing*](/reference/glossary/#spacing)
(pengaturan jarak huruf). Seperti yang Anda lihat di
[Dasar-Dasar Huruf](/start/type-basics/#sidebearing-dan-advance-width-gambaran-awal), setiap glyph
duduk di sebuah kotak, dan ruang kosong di kiri-kanannya adalah
[*sidebearing*](/reference/glossary/#sidebearing). Karena Anda mengetik posisi X dan lebarnya, huruf
Anda sudah punya *sidebearing* berikut:

| Huruf | LSB | RSB | Alasannya |
|---|---|---|---|
| H | 70 | 70 | sisi lurus mendapat ruang paling banyak |
| I | 60 | 60 | satu *stem*, sedikit lebih rapat |
| n | 60 | 60 | sisi lurus, huruf kecil |
| O | 40 | 40 | sisi bulat butuh ruang lebih sedikit |
| o | 40 | 40 | sisi bulat butuh ruang lebih sedikit |

Patokan di balik angka-angka ini: sisi bulat mendapat kira-kira setengah sampai dua pertiga ruang sisi
lurus, karena lengkungan sudah membawa ruang putih tambahan di sebelahnya. Tujuannya irama hitam-putih
yang rata di sepanjang kata, sehingga tidak ada huruf yang tampak menyendiri.

### Melihat spasi dalam sebaris teks

Angka hanyalah permulaan; mata Anda yang memutuskan. Editor glyph bisa menampilkan huruf Anda di
antara huruf lain.

1. Buka `n` dari Ikhtisar.
2. Di atas kanvas ada isian **Teks**. Klik isian itu, hapus isinya, lalu ketik `nnonnoonn`. Huruf-huruf
   itu tampil berjajar di kanvas.
3. Pilih alat **Metrics** (<kbd>Y</kbd>). Petunjuknya berbunyi "Seret sidebearing; klik glyph lain di
   teks untuk mengatur spasinya."
4. Perhatikan barisnya. Apakah celah antara n dan n, n dan o, serta o dan o tampak sama terangnya?
   Bila ada celah yang terlalu lebar atau terlalu sempit, seret *sidebearing* glyph tersebut, atau klik
   glyph itu lalu ketik **LSB** atau **RSB** baru di bilah opsi (dengan alat **Pilih** dan tanpa ada
   yang terpilih).
5. Coba juga huruf kapitalnya: ketik `HHOHHIHOOH` di isian **Teks**.

Daftar **Teks spasi** di sebelah isian itu menyediakan rangkaian huruf siap pakai seperti ini. Bab
[Metrics dan Spasi](/spacing/metrics/) menjelaskan cara kerja *spacing* yang lebih runtut.

### Biarkan Spasi Otomatis yang bekerja

FontEasy juga bisa mengatur jarak huruf untuk Anda. FontEasy mengukur ruang putih glyph acuan, `n`
untuk huruf kecil dan `H` untuk huruf kapital dan angka, lalu memberi setiap glyph lain ruang putih
yang sama banyak, dengan ruang lebih sedikit untuk sisi yang bulat.

1. Di Perjalanan Font, klik **Atur spasi huruf**, lalu **Spasi Otomatis…**. FontEasy memilih setiap
   glyph yang punya outline dan membuka dialog **Spasi Otomatis**.
2. Dialog itu menampilkan acuannya (**Acuan huruf kecil** `n`, **Acuan huruf kapital** `H`), slider
   **Kedalaman bukaan**, dan tabel berisi *sidebearing* setiap glyph **Sekarang (Ki / Ka)** dan
   **Baru (Ki / Ka)**.
3. Bandingkan kedua kolom. Bila Anda suka nilai barunya, klik **Terapkan**; bila tidak, klik **Batal**.

![Dialog Spasi Otomatis dengan acuan huruf kecil n, acuan huruf kapital H, slider Kedalaman bukaan di 20 %, dan tabel sidebearing sekarang dan yang baru.](screen:autospace)

Karena Spasi Otomatis menyalin ruang milik `n` dan `H`, kedua huruf itu harus diatur jaraknya dengan
baik lebih dulu. Itulah sebabnya Anda mengaturnya sendiri di atas. Perjalanan Font tetap membiarkan
langkah ini terbuka setelah dipakai: *spacing* adalah hal yang akan Anda datangi lagi setiap kali
menambah huruf.

:::note
Langkah kelima Perjalanan Font, **Kerning pasangan sulit**, menambahkan koreksi untuk pasangan seperti
AV atau To. Kelima huruf kita hampir tidak membutuhkan [*kerning*](/reference/glossary/#kerning),
jadi lewati saja dulu. Bab [Kerning](/spacing/kerning/) membahasnya.
:::

## Melihat pratinjau huruf Anda

Panel **Pratinjau** di bawah menampilkan font Anda sebagai font sungguhan yang sudah dikompilasi.

1. Klik isian teks **Pratinjau** dan ganti "Hamburgefonstiv" dengan `OHIO noon Hon`.
2. Geser slider ukuran ke sekitar 100 pt.
3. Centang **Waterfall** untuk melihat teks yang sama dalam beberapa ukuran.

Huruf yang belum Anda gambar (semua kecuali H, I, O, n, dan o) adalah glyph kosong, jadi tampil sebagai
celah. Lihat kata-kata Anda seperti seorang pembaca. Apakah huruf bulat tampak sama tinggi dengan huruf
lurus? Apakah celahnya tampak rata? Kalau belum, kembali dan sesuaikan; itulah yang dikerjakan
desainer sepanjang hari.

## Memeriksa font Anda

Sebelum memperlihatkan font Anda kepada dunia, biarkan FontEasy memeriksanya.

1. Di Perjalanan Font, klik **Periksa font Anda**, lalu **Periksa Font Saya**. (Atau pilih
   **Font › Periksa Font…**, <kbd>F7</kbd>.)
2. Panel **Periksa Font** terbuka di bawah dan mendaftar temuannya dalam kelompok-kelompok, masing-masing
   dengan ikon untuk galat, peringatan, dan catatan.

![Panel Periksa Font di Mode Sederhana dengan tombol Periksa Lagi, Perbaiki Semua, dan Simpan Laporan…, jumlah galat, peringatan, dan catatan, serta temuan di kelompok Outline yang masing-masing punya tombol Perbaiki.](screen:fontcheck-simple)

Font yang baru digambar lima hurufnya pasti mendapat beberapa peringatan, misalnya tentang huruf yang
belum ada atau informasi yang kurang di nama-nama font. Itu wajar untuk uji pertama. Klik sebuah temuan
untuk melihat apa yang dimaksud; banyak yang punya tombol **Perbaiki**. Bab
[Pemeriksaan Mutu](/production/quality/) menjelaskan setiap pemeriksaan. Bila semuanya beres, langkah
itu di Perjalanan Font mendapat centang hijau.

Panel **Validasi** di kanan bekerja dalam skala yang lebih kecil: panel ini memeriksa outline glyph
yang sedang Anda edit selagi Anda menggambar, dan menampilkan "Glyph ini tidak bermasalah." bila
semuanya baik.

## Menguji font Anda

Melihat huruf Anda di aplikasi sungguhan adalah momen paling seru. FontEasy menyediakan dua cara uji
cepat, dan keduanya tidak memerlukan file hasil ekspor.

### Di browser

Tekan <kbd>F5</kbd> (atau **Berkas › Uji Font di Browser**, atau **Uji (F5)** di langkah terakhir
Perjalanan Font). FontEasy membangun font, menulis halaman uji kecil, lalu membukanya di browser.
Halaman itu menampilkan:

- teks dari Pratinjau Anda, berukuran besar dan bisa disunting: klik lalu ketik kata lain;
- *waterfall* teks itu dari 12 sampai 96 piksel;
- satu paragraf contoh kalimat (dengan celah untuk huruf yang belum digambar);
- kotak centang untuk fitur OpenType font, bila ada.

Font itu hanya dimuat di dalam halaman tersebut; tidak ada yang dipasang di komputer Anda.

### Di Word dan aplikasi lain

Untuk mencoba font Anda di aplikasi Windows apa pun, pasang salinan uji:

1. Pilih **Berkas › Pasang Font untuk Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>).
2. Muncul pesan "Font uji terpasang".
3. Buka (atau mulai ulang) Word, WordPad, atau aplikasi lain dan cari **Kotak Sans Test** di daftar
   fontnya.

FontEasy menambahkan " Test" pada nama keluarga, sehingga salinan uji tidak akan tertukar dengan
pemasangan sungguhan font Anda. Salinan ini hanya dipasang untuk akun pengguna Anda. Aplikasi yang
sudah terbuka mungkin perlu dimulai ulang agar bisa melihatnya. Setelah mengubah font, pasang lagi
salinan ujinya untuk memperbaruinya.

Setelah selesai menguji, pilih **Berkas › Hapus Font Uji**. Perintah ini menghapus semua salinan uji
yang pernah dipasang FontEasy.

:::caution
Jangan mengeklik dua kali file `.ttf` hasil ekspor lalu mengeklik **Install** di jendela pratinjau
Windows untuk menguji pekerjaan yang belum selesai. Cara itu memasang salinan permanen dengan nama asli,
dan versi berikutnya dengan nama yang sama bisa bentrok dengannya. Selama masih bekerja, pakai
**Pasang Font untuk Uji**.
:::

## Mengekspor TTF

Sekarang buat barang sungguhannya: file font TrueType yang bisa Anda berikan kepada orang lain.

1. Pilih **Berkas › Ekspor › Ekspor Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>), atau **Ekspor…** di
   langkah terakhir Perjalanan Font. Dialog **Ekspor Font** terbuka.
2. Di bawah **Format**, **TrueType (.ttf) — desktop** sudah dicentang. Biarkan yang lain tidak
   dicentang untuk sekarang.
3. Biarkan **Hapus overlap (source Anda tetap utuh)** tetap dicentang: pilihan ini menggabungkan bentuk
   yang menumpuk pada H dan n Anda di file hasil ekspor, sementara UFO Anda tetap menyimpannya
   terpisah dan bisa disunting.
4. Biarkan **Beri hinting pada outline TrueType (ttfautohint)** tetap dicentang. FontEasy sudah membawa
   ttfautohint; *hinting* membuat teks kecil lebih tajam di Windows.
5. **Folder** menyarankan folder bernama `fonts` di sebelah `Kotak Sans.ufo` Anda. Klik **Telusuri…**
   bila ingin memilih folder lain.
6. **Nama file** adalah `KotakSans-Regular`. Biarkan saja.
7. Klik **Ekspor**.

![Dialog Ekspor Font dengan TrueType dicentang, Hapus overlap dicentang, pilihan hinting, serta isian Folder dan Nama file.](screen:export)

Sesaat kemudian muncul pesan "Font diekspor" beserta nama file dan foldernya, dan bilah status
menampilkan "Diekspor ke …". Buka folder itu di File Explorer: di sana ada `KotakSans-Regular.ttf`,
file font yang lengkap. Klik dua kali, dan Windows menampilkan pratinjau huruf-huruf Anda.

:::note
Gambar dialog ini diambil tanpa ttfautohint, sehingga pilihan *hinting* di sana tampak redup dengan
tulisan "ttfautohint tidak ditemukan". Di FontEasy yang terpasang, pilihan itu tersedia. Format lain
(OTF, WOFF dan WOFF2 untuk situs web, ditambah file CSS) dijelaskan di bab [Ekspor](/production/export/).
:::

## Simpan dan tutup

1. Tekan <kbd>Ctrl</kbd>+<kbd>S</kbd> untuk terakhir kalinya.
2. Pilih **Berkas › Tutup** (<kbd>Ctrl</kbd>+<kbd>W</kbd>). Bila ada perubahan yang belum disimpan,
   FontEasy menanyakan apakah perubahan itu mau disimpan.

Layar Beranda muncul, dan **Kotak Sans.ufo** kini berada paling atas di daftar **Terbaru**. Lain kali,
klik saja untuk melanjutkan dari titik terakhir.

Sekarang Anda punya dua hal: `Kotak Sans.ufo`, source yang terus Anda sunting, dan
`KotakSans-Regular.ttf`, font yang Anda ekspor ulang setiap kali source-nya berubah.

## Bila ada masalah

**Alat bentuk bisa menggambar, tetapi isian X, Y, W, dan H tidak tampak.** Isian itu milik alat
**Pilih**. Tekan <kbd>V</kbd> setelah menggambar. Bila masih tidak tampak, berarti tidak ada yang
terpilih: klik bentuknya sekali.

**Saya mengetik angka, tetapi bentuknya meloncat ke tempat lain.** **X** dan **Y** adalah tepi kiri dan
tepi bawah seluruh pilihan. Bila ada dua bentuk yang terpilih, keduanya ikut bergeser. Batalkan dengan
<kbd>Ctrl</kbd>+<kbd>Z</kbd>, klik satu bentuk saja, lalu coba lagi.

**Kurangi membuang bentuk yang salah.** Perintah ini mengurangkan bentuk yang terpilih dari bentuk
lainnya. Batalkan, pilih bentuk yang ingin dibuang, lalu pilih **Kurangi** lagi.

**Huruf saya tidak muncul di Pratinjau.** Tunggu sampai "Mengompilasi…" selesai. Pastikan teks
Pratinjau memang mengandung huruf itu (Pratinjau membedakan huruf besar dan kecil: `o` bukan `O`).

**Font uji tidak muncul di Word.** Tutup Word sepenuhnya lalu buka lagi. Cari nama yang berakhiran
" Test".

## Langkah selanjutnya

Anda sudah membuat sebuah font. Dari sini, panduan ini membahas lebih dalam setiap langkah yang tadi
Anda lalui:

- menggambar kurva dengan Pena dan Pensil di [Outline dan Kurva Bézier](/drawing/outlines/),
  [Editor Glyph](/drawing/glyph-editor/), dan [Alat Gambar](/drawing/drawing-tools/);
- menyusun huruf beraksen secara otomatis di [Komponen dan Aksen](/drawing/components/);
- mengubah tulisan tangan Anda menjadi font di [Font Tulisan Tangan](/drawing/handwriting/);
- menyempurnakan spasi dan kerning di [Metrics dan Spasi](/spacing/metrics/) dan
  [Kerning](/spacing/kerning/);
- melengkapi nama-nama font di [Info Font](/production/font-info/), lalu menerbitkannya lewat
  [Ekspor](/production/export/) dan [Menguji dan Menerbitkan](/production/testing-publishing/).

## Ringkasan

- **Font Baru…** dengan sebuah template membuat font berisi glyph kosong; **Wizard Font Baru** juga
  menanyakan kegunaan dan proporsinya.
- Di Mode Sederhana, **Perjalanan Font** mendaftar langkah-langkahnya dan menyediakan tombol untuk
  setiap langkah.
- Simpan sejak awal sebagai UFO: folder yang menjadi source Anda yang bisa disunting. Ekspor
  menghasilkan `.ttf` jadinya.
- Alat **Persegi Panjang** (<kbd>M</kbd>) dan **Elips** (<kbd>L</kbd>) menggambar bentuk; isian **X**,
  **Y**, **W**, dan **H** milik alat **Pilih** mengatur posisi dan ukuran yang tepat.
- **Glyph › Kontur › Kurangi** memotong bentuk yang dipilih dari bentuk lain: untuk *counter*,
  lengkungan, dan lain-lain.
- Tanpa ada yang dipilih, **Lebar**, **LSB**, dan **RSB** mengatur kotak dan *sidebearing* glyph; sisi
  bulat mendapat ruang lebih sedikit daripada sisi lurus. **Spasi Otomatis…** mengatur jarak glyph
  berdasarkan `n` dan `H`.
- Pratinjau, **Periksa Font Saya** (<kbd>F7</kbd>), **Uji Font di Browser** (<kbd>F5</kbd>), dan
  **Pasang Font untuk Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) memungkinkan Anda melihat dan menguji hasil
  kerja; **Berkas › Hapus Font Uji** membersihkannya.
- **Berkas › Ekspor › Ekspor Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>) menulis file `.ttf`.

## Coba sendiri

1. Gambar **L**, **T**, dan **E** hanya dengan persegi panjang, dengan tebal *stem* 80 dan tinggi
   kapital 700. Beri lebar yang masuk akal, lalu ketik `HELLO TOLE` di Pratinjau. *Sidebearing* mana
   yang terasa terlalu lebar? (Petunjuk: sisi terbuka pada L, T, dan E butuh ruang lebih sedikit
   daripada *stem* pada H.)
2. Buat huruf **c** dari **o** Anda: buka `c`, gambar lagi dua elips o, kurangkan, lalu gambar
   persegi panjang di bagian kanan cincin dan kurangkan juga. Sesuaikan persegi panjangnya sampai
   [*aperture*](/reference/glossary/#aperture) (bukaan) tampak pas.
3. Ekspor lagi, pasang salinan uji yang baru, dan tulis catatan pendek di Word dengan huruf-huruf baru
   Anda.
