---
title: Set Glyph
description: Cara menemukan, menambah, menamai, mengatur, dan memeriksa glyph dalam font Anda di Ikhtisar.
---

Font bukan sekadar 26 huruf alfabet. Font Latin yang kecil pun punya huruf kapital dan huruf kecil,
angka, tanda baca, beberapa simbol, dan spasi, sekitar seratus glyph. Tambahkan huruf beraksen untuk
bahasa-bahasa Eropa lain, dan jumlahnya cepat mencapai tiga atau empat ratus. **Ikhtisar** adalah
tempat Anda menjaga semuanya tetap teratur: setiap glyph terlihat sekilas, glyph yang dicari mudah
ditemukan, yang belum ada bisa ditambahkan, dan kemajuan Anda bisa ditandai.

Bab ini membahas kumpulan glyph itu. Di sini dijelaskan beda karakter dan glyph, mengapa glyph punya
nama seperti `a.sc` atau `uni0410`, cara menambah dan menghapus glyph, dan bagaimana set glyph
FontEasy memberi tahu karakter apa saja yang dibutuhkan sebuah bahasa dan mana yang belum dimiliki
font Anda.

Dalam bab ini Anda akan mempelajari:

- beda karakter, glyph, dan *character set* (set karakter);
- cara membaca kisi Ikhtisar dan bilah sampingnya yang berisi kategori, aksara, set glyph, dan warna;
- cara mencari menurut nama, karakter, atau kode Unicode;
- cara memilih beberapa glyph sekaligus;
- cara menambah glyph, satu per satu atau satu set sekaligus;
- cara membuat, menduplikat, mengganti nama, dan menghapus glyph;
- cara kerja nama glyph dan *code point* Unicode;
- cara memakai warna tanda dan arti lencana pada sel glyph.

## Karakter dan glyph

Dua kata ini mudah tertukar, jadi mari kita tegaskan dulu.

- *[Character](/reference/glossary/#character)* (karakter) adalah huruf, angka, atau tanda sebagai
  gagasan: "A kapital", "tanda euro", "angka 7". Itulah yang Anda ketik dan yang disimpan file teks.
- *[Glyph](/reference/glossary/#glyph)* adalah gambar di dalam font. Itulah yang Anda lihat.

Sebagian besar waktu, satu karakter punya satu glyph. Tetapi tidak selalu. Sebuah font bisa punya
beberapa glyph untuk karakter yang sama: "A" biasa, "A" kapital kecil, dan "A" kecil yang terangkat
untuk superskrip. Sebaliknya, satu glyph bisa mewakili beberapa karakter: *[ligature](/reference/glossary/#ligature)*
(ligatur) "fi" menggantikan "f" yang diikuti "i".

![Satu karakter, U+0041, dengan tiga glyph di Source Serif: A, A.sc, dan A.sups; serta dua karakter, U+0066 dan U+0069, yang ditampilkan oleh satu glyph, yaitu ligatur f_i.](diagram:glyph-set-one-character)

Bagaimana komputer tahu glyph mana milik karakter mana? Melalui
*[Unicode](/reference/glossary/#unicode)*, daftar sedunia yang memberi setiap karakter sebuah nomor,
yaitu *[code point](/reference/glossary/#code-point)*-nya. Code point ditulis `U+` diikuti bilangan
heksadesimal: `U+0041` adalah "A", `U+00E9` adalah "é", `U+20AC` adalah "€". Glyph yang punya code
point bisa diketik langsung. Glyph tanpa code point (seperti `A.sc` atau `f_i`) hanya bisa dicapai
melalui *[OpenType feature](/reference/glossary/#opentype-feature)* (fitur OpenType), seperti small
caps atau ligatur, yang menukarnya masuk saat teks memintanya.

*[Character set](/reference/glossary/#character-set)* (set karakter) adalah daftar karakter yang
saling berkaitan, misalnya "semua yang diperlukan bahasa-bahasa Eropa Barat". FontEasy menyebut
daftar yang dikenalnya *[glyph set](/reference/glossary/#glyph-set)* (set glyph); Anda akan
menemuinya di bawah.

## Ikhtisar

Buka sebuah font, dan Ikhtisar adalah hal pertama yang Anda lihat. Anda selalu bisa kembali ke sana
lewat tab **Ikhtisar** di bawah tab font.

![Ikhtisar Source Serif 4: bilah samping di kiri mendaftar kategori, aksara, dan set glyph beserta jumlahnya, kotak pencarian berada di atas kisi, dan huruf "a" terpilih di kisi.](screen:g-overview)

### Kisi

Setiap sel menampilkan satu glyph, digambar dari outline aslinya, dengan baseline yang samar. Di
bawah sel tertulis nama glyph, dipendekkan dengan "…" bila terlalu panjang. Arahkan penunjuk ke sel
untuk melihat tooltip berisi nama lengkap, code point, dan nama Unicode karakternya (misalnya
`a  U+0061  LATIN SMALL LETTER A`). Glyph yang punya code point tetapi belum digambar menampilkan
karakternya secara samar, sehingga Anda tetap tahu glyph itu untuk apa.

Untuk mengubah ukuran sel, pilih **Tampilan › Sel Glyph Lebih Besar**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>=</kbd>) atau **Tampilan › Sel Glyph Lebih Kecil**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>-</kbd>), atau tahan <kbd>Ctrl</kbd> sambil memutar roda tetikus
di atas kisi.

Di atas kisi terlihat berapa glyph yang ditampilkan ("1464 glyph") dan berapa yang dipilih ("1
dipilih"). Bilah status mengulang nama dan code point glyph yang dipilih, dan panel **Info Glyph**
menerangkannya dengan rinci.

Glyph tampil sesuai urutan penyimpanannya di font. Untuk menyusun ulang, pilih
**Font › Urutkan Glyph › Menurut Unicode**, **Menurut Nama**, atau **Menurut Kategori**.

### Bilah samping

Bilah samping di kiri menyaring isi kisi. Klik sebuah baris untuk hanya menampilkan glyph tersebut;
klik **Semua Glyph** untuk melihat semuanya lagi. Setiap baris punya angka jumlah di kanan.

| Bagian | Isinya |
|---|---|
| **Semua Glyph** | Semua glyph dalam font. |
| **KATEGORI** | Jenis karakter menurut Unicode: Huruf, Angka, Tanda baca, Simbol, Tanda diakritik (aksen yang menempel pada huruf), Pemisah (spasi), Lainnya. **Tanpa Unicode** mendaftar glyph tanpa code point, seperti `.notdef`, `A.sc`, atau `f_i`. |
| **AKSARA** | Sistem tulisan: Latin, Greek (Yunani), Cyrillic (Sirilik), dan seterusnya. **Common** berisi karakter yang dipakai bersama banyak aksara (angka, tanda baca), **Inherited** berisi aksen gabung. |
| **SET GLYPH** | Set karakter FontEasy, dengan berapa banyak karakternya yang sudah ada di font ("96/96"). |
| **WARNA** | Warna tanda yang dipakai, jika Anda sudah menandai glyph. |

## Mencari

Kotak pencarian di atas kisi menemukan glyph sambil Anda mengetik. Tekan <kbd>/</kbd> (atau pilih
**Edit › Cari Glyph…**, <kbd>Ctrl</kbd>+<kbd>F</kbd>) untuk langsung masuk ke kotak itu, dan
<kbd>Esc</kbd> untuk mengosongkannya. Anda bisa mencari:

- **nama glyph**, atau sebagiannya: `acute` menemukan `aacute`, `eacute`, `acutecomb`, dan lainnya;
- **karakter**: ketik `&` untuk menemukan ampersand, `é` untuk menemukan `eacute`;
- **code point**: `U+20AC`, atau cukup `20AC` (minimal dua digit heksadesimal);
- **nama Unicode** (dalam bahasa Inggris): `capital letter` menemukan semua huruf kapital, `dash`
  menemukan *en dash* dan *em dash*.

Pencarian bekerja bersama bilah samping: dengan **Angka** terpilih, mengetik `one` hanya menemukan
angka yang namanya mengandung "one".

## Memilih glyph

Banyak perintah bekerja pada semua glyph yang dipilih sekaligus, jadi ada gunanya tahu cara memilih:

| Untuk memilih | Lakukan ini |
|---|---|
| Satu glyph | Klik glyph itu. |
| Satu rentang | Klik yang pertama, lalu <kbd>Shift</kbd>+klik yang terakhir. |
| Glyph yang berpencar | <kbd>Ctrl</kbd>+klik masing-masing. <kbd>Ctrl</kbd>+klik lagi untuk membatalkan. |
| Semua glyph | **Edit › Pilih Semua** (<kbd>Ctrl</kbd>+<kbd>A</kbd>). |
| Tidak ada | **Edit › Batal Pilih** (<kbd>Ctrl</kbd>+<kbd>D</kbd>). |

Tombol panah memindahkan pilihan di dalam kisi; dengan <kbd>Shift</kbd>, glyph yang dilewati ikut
dipilih. Glyph yang terakhir Anda klik bergaris tepi lebih tebal: glyph inilah yang ditampilkan Info
Glyph dan yang dibuka oleh <kbd>Enter</kbd>. Bila beberapa glyph dipilih, <kbd>Enter</kbd> membuka
semuanya sebagai sebaris teks di editor.

Yang bisa Anda lakukan pada sebuah pilihan:

- perintah di **Glyph › Kontur** yang merapikan outline (Hapus Tumpang Tindih, Perbaiki Arah,
  Sederhanakan, dan lainnya) bekerja pada setiap glyph yang dipilih; lihat
  [Alat gambar](/drawing/drawing-tools/);
- mengganti nama, menduplikat, menandai, atau menghapusnya (lihat di bawah);
- **Edit › Salin** (<kbd>Ctrl</kbd>+<kbd>C</kbd>) menyalin namanya sebagai `/A/B/C`, siap ditempel ke
  bilah Teks di editor atau ke Pratinjau.

![Empat glyph, A sampai D, dipilih di Ikhtisar dan ditandai hijau, dengan dialog ganti nama yang menambahkan akhiran .sc pada keempatnya.](screen:multi)

Klik kanan sebuah glyph untuk menu singkat: **Ganti Nama Glyph…**, **Duplikat Glyph**, **Salin Nama**,
**Warna Tanda**, dan **Hapus**.

## Set glyph: karakter apa yang Anda perlukan?

Set glyph adalah daftar FontEasy berisi karakter-karakter dari satu bagian Unicode. Memilih salah
satunya di bilah samping menjawab pertanyaan "apa yang masih kurang di font saya?".

| Set glyph | Cakupannya |
|---|---|
| **Latin Dasar (ASCII)** | 95 karakter keyboard bahasa Inggris klasik: A–Z, a–z, 0–9, tanda baca, spasi. |
| **Latin-1 Suplemen** | Huruf beraksen dan tanda untuk bahasa-bahasa Eropa Barat: é, ñ, ü, ç, ß, ©, £, ¿, dan lainnya. |
| **Latin Lanjutan-A** | Huruf untuk bahasa-bahasa Eropa Tengah dan Timur, dan lainnya: č, ł, ő, ş, ž… |
| **Latin Lanjutan-B** | Huruf Latin yang lebih jarang, untuk bahasa-bahasa Afrika, Rumania, Pinyin, dan lainnya. |
| **Latin Lanjutan Tambahan** | Huruf dengan aksen lebih banyak, seperti ạ, ế, ữ dalam bahasa Vietnam. |
| **Tanda Baca Umum** | Tanda baca tipografis: tanda pisah, tanda kutip lengkung, elipsis, per mil… |
| **Simbol Mata Uang** | €, ₹, ₺, ₫, dan tanda mata uang lainnya. |
| **Diakritik Gabungan** | Aksen yang berdiri sendiri, dipakai untuk menyusun huruf beraksen. |
| **Yunani** | Alfabet Yunani. |
| **Sirilik** | Alfabet Sirilik (Rusia, Ukraina, Bulgaria, Serbia…). |

Angka di samping setiap set menunjukkan sejauh mana kemajuan Anda: "96/96" berarti lengkap, "0/208"
berarti belum dimulai. Saat Anda memilih sebuah set, kisi menampilkan glyph yang sudah ada dan,
sesudahnya, setiap karakter yang belum ada sebagai **sel "hantu" bergaris putus-putus**, dengan
karakter dan namanya berwarna abu-abu.

![Ikhtisar yang disaring dengan Latin-1 Suplemen: 96 dari 96 karakter sudah ada di font, jadi setiap sel adalah glyph sungguhan; bilah samping menampilkan kemajuan setiap set glyph.](screen:sets)

Untuk mengisi kekurangannya:

- **klik dua kali sel hantu** untuk menambahkan glyph itu saja, atau
- klik **Tambah {n} yang belum ada** di atas kisi (misalnya **Tambah 208 yang belum ada**) untuk
  menambahkan semua glyph set itu yang belum ada sekaligus.

Glyph baru masih kosong, dengan lebar setengah em (seperempat untuk spasi), dan otomatis mendapat
nama serta code point standarnya. Lalu Anda menggambarnya, atau menyusun huruf beraksen dari
komponen; lihat [Komponen dan aksen](/drawing/components/).

:::tip[Set mana yang dibutuhkan bahasa saya?]
Untuk bahasa Inggris, **Latin Dasar (ASCII)** sudah cukup. Begitu pula untuk bahasa Indonesia atau
Melayu. Bahasa Prancis, Jerman, Spanyol, Italia, Portugis, dan bahasa-bahasa Nordik juga memerlukan
**Latin-1 Suplemen**. Bahasa Polandia, Ceko, Turki, Hungaria, dan bahasa-bahasa Baltik memerlukan
**Latin Lanjutan-A** pula. Bahasa Vietnam memerlukan **Latin Lanjutan Tambahan**. Dan tanda kutip
lengkung serta tanda pisah dari **Tanda Baca Umum** berguna dalam bahasa apa pun.
:::

Saat Anda memulai font baru, dialog Font Baru menawarkan templat (Kosong, Latin Dasar, Latin Lengkap,
Tulisan Tangan) yang membuatkan sekumpulan glyph awal untuk Anda; lihat
[Font pertama Anda](/start/first-font/).

## Menambah glyph

### Tambah Glyph: banyak sekaligus

**Font › Tambah Glyph…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>G</kbd>) adalah cara tercepat untuk
menambah glyph:

1. Pilih **Font › Tambah Glyph…**.
2. Ketik yang Anda inginkan, dipisahkan spasi: karakter (`é ñ ç`), nama glyph (`a.sc f_i`), atau
   code point (`U+20AC`). Boleh dicampur.
3. Klik **Tambah**.

Atau klik salah satu tombol set glyph di bawah **Atau tambahkan satu set glyph sekaligus:** untuk
menambahkan semua karakter set itu dalam sekali jalan.

![Dialog Tambah Glyph: kolom teks untuk karakter, nama glyph, atau code point, tombol untuk sepuluh set glyph, serta Batal dan Tambah.](screen:addglyphs)

Karakter yang sudah ada di font dilewati, jadi Anda tidak mungkin menambahkan duplikat tanpa
sengaja. Jika semua yang Anda ketik sudah ada, dialog akan memberi tahu.

### Glyph Baru: satu glyph dengan nama pilihan Anda

**Glyph › Glyph Baru…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>N</kbd>) membuat satu glyph dengan
**Nama** dan code point **Unicode**:

- Ketik nama standar seperti `Aacute`, dan kolom Unicode terisi sendiri (`U+00C1`).
- Ketik satu simbol seperti `€` di kolom Nama, dan simbol itu berubah menjadi nama standarnya
  (`Euro`) beserta code point-nya.
- Ketik code point di kolom Unicode dengan kolom nama kosong, dan nama standarnya muncul.
- Untuk glyph tanpa code point, seperti alternatif, ketik namanya (`g.alt`) dan biarkan Unicode
  kosong.

Klik **Buat**.

### Duplikat Glyph

**Glyph › Duplikat Glyph** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>D</kbd>) menyalin glyph yang
dipilih. Salinannya mendapat nomor tambahan pada namanya (`a.001`, lalu `a.002`) dan tidak punya code
point, sehingga tidak bersaing dengan aslinya. Inilah awal yang lazim untuk sebuah alternatif:
duplikat "a", ganti nama salinannya menjadi `a.ss01`, lalu gambar ulang.

## Mengganti nama dan menghapus

### Ganti Nama Glyph

**Glyph › Ganti Nama Glyph…** (<kbd>F2</kbd>) mengubah nama dan code point glyph yang dipilih.

![Dialog Ganti Nama Glyph untuk "A": Nama A, Unicode U+0041, dan kotak Perbarui juga komponen, kerning, dan groups tercentang.](screen:rename)

Biarkan **Perbarui juga komponen, kerning, dan groups** tetap tercentang: dengan begitu setiap glyph
komposit yang memakai glyph ini, setiap pasangan kerning, dan setiap grup ikut memakai nama baru.
Untuk memberi glyph lebih dari satu code point, ketik semuanya dipisahkan spasi.

Bila beberapa glyph dipilih, dialognya menjadi **Ganti Nama Glyph** untuk banyak glyph sekaligus:

- **Cari** dan **Ganti dengan** mengubah sebagian dari setiap nama (`.alt` menjadi `.ss01`);
- **Tambah akhiran** menambahkan akhiran ke setiap nama (`.sc`);
- pratinjau di bawahnya menampilkan beberapa hasil pertama, seperti `A → A.sc`.

Di Mode Pro, **Font › Perbarui Nama Glyph** mengganti nama setiap glyph yang punya code point menjadi
nama standarnya (`uni00E9` menjadi `eacute`), sekaligus memperbarui komponen, kerning, dan grup. Ini
berguna setelah mengimpor font yang memakai nama-nama tidak lazim.

### Menghapus glyph

Pilih glyph-nya lalu tekan <kbd>Delete</kbd> (atau pilih **Edit › Hapus**, atau **Hapus** di menu klik
kanan). Tidak ada pertanyaan konfirmasi, tetapi <kbd>Ctrl</kbd>+<kbd>Z</kbd> mengembalikannya. Jika
glyph lain masih memakai glyph yang dihapus sebagai komponen, FontEasy memberi tahu berapa banyak,
karena komposit itu kini kehilangan salah satu bagiannya.

## Nama glyph

Setiap glyph punya *[glyph name](/reference/glossary/#glyph-name)* (nama glyph). Nama ditujukan untuk
Anda dan untuk perangkat lunak, tidak pernah dilihat pembaca, tetapi nama yang baik itu penting:
FontEasy memakainya untuk menemukan komponen, membangun fitur OpenType, dan menulis font akhir.

Nama-nama ini mengikuti konvensi dari Adobe, yaitu Adobe Glyph List, yang dipahami setiap perangkat
lunak font:

| Nama | Artinya |
|---|---|
| `A`, `a`, `zero`, `ampersand`, `eacute`, `Euro` | Nama standar untuk karakter yang umum. |
| `uni0410` | `uni` dan empat digit heksadesimal: karakter dengan code point itu (di sini А Sirilik). |
| `u1F600` | `u` dan lima atau enam digit, untuk code point di atas `FFFF` (di sini 😀). |
| `a.sc`, `g.alt`, `a.ss01`, `one.osf` | Nama dasar, titik, dan **akhiran**: bentuk lain dari karakter yang sama (kapital kecil, alternatif, *stylistic set* 1, angka gaya lama). |
| `f_i`, `f_f_l` | Nama yang disambung garis bawah: ligatur dari glyph-glyph itu. |
| `acutecomb`, `dieresiscomb` | Aksen gabung, dipakai sebagai komponen. |
| `.notdef` | Kotak "karakter tidak ada", ditampilkan bila font tidak punya suatu karakter. Setiap font memerlukannya. |

Akhiran lebih dari sekadar label. FontEasy membacanya untuk membangun fitur secara otomatis: glyph
bernama `.sc` menjadi *small caps*, `.ss01` menjadi *stylistic set*, `f_i` menjadi ligatur, dan
seterusnya. Bab [Fitur OpenType](/opentype/features/) mendaftar semuanya. Jadi sebaiknya Anda
memakai nama-nama ini sejak awal.

:::caution[Nama yang perlu dihindari]
Batasi nama pada huruf biasa, angka, titik, dan garis bawah, dan jangan memulai nama dengan angka
atau titik (kecuali `.notdef`). Spasi dan huruf beraksen dalam nama menimbulkan masalah di perangkat
lunak lain. Nama membedakan huruf besar dan kecil: `a.sc` dan `A.sc` adalah dua glyph yang berbeda.
:::

## Warna tanda

Warna tanda adalah label berwarna untuk penataan Anda sendiri: hijau untuk yang sudah selesai, kuning
untuk "perlu diperbaiki", merah untuk "gambar ulang", atau sistem apa pun yang Anda suka. Warna ini
disimpan di font, tetapi tidak berpengaruh pada font yang diekspor.

1. Pilih satu atau beberapa glyph.
2. Pilih **Glyph › Warna Tanda** lalu sebuah warna: **Merah**, **Oranye**, **Kuning**, **Hijau**,
   **Biru**, **Ungu**, atau **Abu-abu**. (Atau klik kanan › **Warna Tanda**.)

Pita berwarna muncul di bagian atas setiap sel yang ditandai, dan bagian **WARNA** muncul di bilah
samping, sehingga Anda bisa, misalnya, menampilkan semua glyph hijau. **Tanpa Warna** menghapus
tandanya.

## Lencana: masalah dalam sekilas

FontEasy memeriksa outline Anda sambil Anda bekerja. Saat **Tampilan › Tampilkan Masalah** aktif, sel
yang bermasalah mendapat titik kecil di sudut kanan atas:

- **titik merah** untuk *error*, seperti kontur terbuka;
- **titik oranye** untuk peringatan, seperti arah kontur yang salah atau titik ekstrem yang hilang.

Temuan tingkat informasi, seperti kontur bertumpuk, tidak diberi titik. Pada font variabel, belah
ketupat oranye kecil di sudut kiri atas menandai glyph yang tidak bisa diinterpolasi di antara
master-masternya.

![Ikhtisar dengan lencana masalah: "B" punya titik merah karena kontur terbuka, "D" titik oranye karena arah yang salah, dan panel Validasi mendaftar masalahnya dengan tombol Perbaiki.](screen:badges)

Panel **Validasi** mendaftar masalah yang sama menurut jenisnya, dengan tombol **Perbaiki** untuk
setiap jenis dan **Perbaiki Semua**. Klik nama glyph di sana untuk memilihnya, klik dua kali untuk
membukanya. Bab tentang [masalah outline](/drawing/problems/) menjelaskan setiap pemeriksaan.

## Kesalahan umum

:::caution[Saya mengetik "é" tetapi tidak muncul apa-apa dari font]
Font belum punya glyph dengan code point `U+00E9`. Tambahkan dengan **Font › Tambah Glyph…**, atau
periksa dengan kotak pencarian: ketik `é`.
:::

:::caution[Glyph alternatif saya yang terketik, bukan glyph biasa]
Salinan itu masih punya code point. Hasil duplikat tidak punya, tetapi glyph yang dibuat dengan Glyph
Baru atau yang diganti namanya mungkin punya. Buka **Glyph › Ganti Nama Glyph…** (<kbd>F2</kbd>) dan
kosongkan kolom **Unicode** pada glyph alternatif itu.
:::

:::caution[Saya tidak menemukan sebuah glyph di kisi]
Mungkin ada saringan di bilah samping yang menyembunyikannya. Klik **Semua Glyph** dan kosongkan
kotak pencarian dengan <kbd>Esc</kbd>.
:::

## Ringkasan

- Karakter adalah gagasan dengan code point Unicode; glyph adalah gambar. Satu karakter bisa punya
  beberapa glyph, dan satu glyph bisa menampilkan beberapa karakter.
- Ikhtisar menampilkan semua glyph; bilah samping menyaring menurut kategori, aksara, set glyph, dan
  warna tanda.
- Cari menurut nama, karakter, code point (`U+20AC`), atau nama Unicode; tekan <kbd>/</kbd> untuk
  mulai.
- Pilih dengan klik, <kbd>Shift</kbd>+klik, dan <kbd>Ctrl</kbd>+klik; banyak perintah bekerja pada
  seluruh pilihan.
- Set glyph menunjukkan kemajuan Anda ("96/96"); sel hantu dan **Tambah {n} yang belum ada** mengisi
  kekurangannya.
- **Font › Tambah Glyph…** menambah banyak glyph sekaligus; **Glyph › Glyph Baru…** satu glyph dengan
  nama pilihan; **Duplikat Glyph** salinan tanpa code point.
- **Ganti Nama Glyph…** (<kbd>F2</kbd>) mengganti nama sekaligus memperbarui komponen, kerning, dan
  grup.
- Nama glyph mengikuti Adobe Glyph List: `uni0410`, akhiran seperti `.sc` dan `.ss01`, ligatur
  seperti `f_i`.
- Warna tanda menata pekerjaan Anda; lencana menandai masalah.

## Coba sendiri

1. Di font Anda, pilih **Latin-1 Suplemen** di bilah samping. Berapa karakter yang belum ada? Klik
   dua kali sel hantu "é" untuk menambahkannya, lalu cari `eacute` untuk menemukannya lagi.
2. Pilih glyph "a", duplikat dengan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>D</kbd>, ganti nama
   salinannya menjadi `a.ss01` dengan <kbd>F2</kbd>, lalu tandai dengan warna kuning. Kemudian klik
   **Tanpa Unicode** di bilah samping dan temukan glyph itu di sana.
