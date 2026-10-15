---
title: Font Warna
description: Beri huruf Anda beberapa warna, gradien, dan transparansi dengan layer warna dan palet, lalu ekspor sebagai font warna COLR/CPAL dan OpenType-SVG.
---

Font biasa tidak punya warna sendiri. Setiap [glyph](/reference/glossary/#glyph) adalah satu bentuk,
dan aplikasi yang memakai font itu mengisinya dengan warna teks yang sedang dipakai.
[*Color font*](/reference/glossary/#color-font) (font warna) berbeda: glyph-nya membawa warnanya
sendiri. Sebuah huruf bisa punya bayangan gelap, badan yang cerah, dan sorotan cahaya, atau gradien
halus dari oranye ke merah, dan tampil seperti itu di mana pun font dipakai.

Font warna populer untuk judul, poster, logo, gim, dan emoji. FontEasy membangunnya dari **layer
warna**: glyph biasa yang ditumpuk satu di atas yang lain, masing-masing diisi warna dari sebuah
**palet**. Anda menggambar layer-layer itu dengan alat yang sama seperti untuk glyph lainnya.

Dalam bab ini Anda akan mempelajari:

- cara font warna disimpan (COLR dan CPAL, serta OpenType-SVG) dan di mana font warna bisa tampil;
- apa itu palet dan layer warna;
- cara menjadikan glyph sebagai glyph warna lewat panel **Warna**;
- cara memakai isian solid, linear, dan radial, opasitas, serta handle gradien;
- cara mengatur palet lewat **Font › Palet Warna…**;
- cara mengimpor gambar SVG berwarna dan font warna yang sudah ada;
- cara memeriksa dan mengekspor font warna.

## Cara kerja font warna

### Layer yang ditumpuk seperti stensil

Glyph warna adalah tumpukan bentuk yang dicat dari bawah ke atas, seperti lapisan sablon atau
stensil yang disemprot satu demi satu. Di FontEasy setiap layer adalah glyph tersendiri dengan nama
yang diturunkan dari glyph dasarnya: layer-layer `A` bernama `A.color0`, `A.color1`, `A.color2`,
dan seterusnya, dengan `A.color0` paling bawah.

![Huruf A berwarna terdiri dari tiga layer: A.color0 paling bawah adalah bayangan gelap dengan warna palet 1, A.color1 adalah hurufnya dengan warna palet 2, A.color2 paling atas adalah pita merah dengan warna palet 3; ditumpuk bersama, jadilah A berwarna.](diagram:color-layers)

Karena layer adalah glyph biasa, Anda menggambar, menyunting, dan memeriksanya seperti glyph lain. Di
[*variable font*](/advanced/variable/), layer ada di setiap master dan ikut diinterpolasi.

Glyph dasar `A` tetap punya outline sendiri. Aplikasi yang tidak bisa menampilkan font warna
menggambar outline polos itu dengan warna teks, jadi font Anda tetap berfungsi di mana saja.

### Palet: warna berdasarkan nomor

Layer tidak menyimpan warna secara langsung. Layer menyimpan **nomor** yang menunjuk ke sebuah
[palet](/reference/glossary/#palette) (*palette*), yaitu daftar warna bernomor. Layer `A.color1`
mungkin berkata "pakai warna 2", dan warna 2 di palet adalah oranye.

Ini ada manfaatnya: sebuah font bisa punya **beberapa palet** dengan jumlah warna yang sama. Ganti ke
palet lain, dan setiap layer mengambil warna bernomor sama dari palet itu. Anda bisa menawarkan versi
terang dan gelap dari font warna yang sama, atau skema warna musiman, tanpa menggambar ulang apa pun.

![Tiga layer yang sama ditampilkan dengan Palet 1 (biru tua, oranye, merah) dan Palet 2 (hijau, kuning, biru tua): hanya warnanya yang berganti.](diagram:color-palettes)

Ada juga satu pilihan khusus, **Warna teks**. Layer dengan warna teks mengambil warna apa pun yang
dimiliki teks di tempat font itu dipakai, sama seperti glyph biasa. Ini berguna untuk garis tepi atau
detail yang sebaiknya mengikuti teks di sekitarnya.

### Formatnya: COLR, CPAL, dan OpenType-SVG

Font warna tetap file font biasa (TTF, OTF, WOFF, atau WOFF2) dengan beberapa tabel tambahan di
dalamnya. FontEasy menulis tabel-tabel ini:

- **CPAL** menyimpan palet.
- **COLR** menyimpan glyph warna: layer apa saja yang dimiliki setiap glyph dan bagaimana layer itu
  diisi. Ada dua versi, dan FontEasy menulis keduanya di tabel yang sama:
  - **COLR versi 0**: layer solid yang sepenuhnya opak. Glyph yang hanya memakai layer seperti ini
    ditulis dalam bentuk lama, jadi juga tampil di aplikasi yang hanya mengenal versi 0.
  - **COLR versi 1**: semua yang lain, seperti gradien dan transparansi.
- **SVG** (tabel [OpenType-SVG](/reference/glossary/#opentype-svg), opsional): gambar SVG kecil
  untuk setiap glyph warna, bagi aplikasi yang memahami font warna SVG tetapi tidak memahami COLR.

Entri glosarium [COLR dan CPAL](/reference/glossary/#colr-and-cpal) merangkum hal ini dalam beberapa
baris.

### Di mana font warna bisa tampil

Dukungan font warna berbeda-beda antar aplikasi, dan terus membaik. Secara umum:

- **Peramban web dan Windows** menampilkan font warna COLR; versi 1 (gradien) lebih baru, jadi
  perangkat lunak lama mungkin hanya menampilkan glyph versi 0 atau outline cadangan yang polos.
- **Sebagian aplikasi yang tidak membaca COLR** bisa menampilkan tabel OpenType-SVG sebagai gantinya.
  Itulah sebabnya FontEasy juga menulis tabel SVG, kecuali Anda mematikannya.
- **Aplikasi tanpa dukungan font warna** menampilkan outline glyph dasar dengan warna teks.

Sebelum menerbitkan, uji font hasil ekspor di aplikasi yang akan dipakai pembaca Anda, misalnya
lewat **Berkas › Uji Font di Browser** (<kbd>F5</kbd>).

## Panel Warna

Semua urusan glyph warna ada di panel **Warna** (**Jendela › Panel › Warna**). Panel ini tersedia di
Mode Sederhana maupun Mode Pro; Mode Pro menambahkan jenis isian dan opasitas.

![Font warna di Ikhtisar: A, B, H, dan O digambar berwarna, A terpilih, dan panel Warna menampilkan palet serta layer A.color2 dan A.color1 dengan warna dan opasitasnya.](screen:colorfont)

Dari atas ke bawah, panel ini menampilkan:

- **Deretan palet**: warna-warna palet saat ini sebagai kotak kecil (arahkan kursor ke salah satunya
  untuk melihat nomor dan kode hex-nya). Kalau font punya lebih dari satu palet, sebuah daftar
  tarik-turun memilih palet mana yang ditampilkan di Ikhtisar dan editor. **Palet…** membuka penyunting
  palet.
- **Keadaan glyph**: "A belum punya warna." dengan tombol **Jadikan Glyph Warna**, atau "Glyph warna
  A" beserta jumlah layernya.
- **Daftar layer**, layer teratas lebih dulu. Setiap layer punya kotak warna, namanya, tombol untuk
  memindahkannya ke atas atau ke bawah, dan **×** untuk menghapus layer (beserta glyph-nya). Di Mode
  Pro, setiap layer juga punya jenis isian (**Solid**, **Linear**, atau **Radial**) dan, untuk isian
  solid, slider **Opasitas**.
- **Tombol untuk menambah layer**: **Layer Kosong**, **Salinan Glyph**, dan **Kontur Terpilih**.

Panel ini bekerja pada glyph yang sedang Anda sunting, atau glyph yang dipilih di Ikhtisar.

## Membuat glyph warna pertama Anda

1. Gambar glyph seperti biasa, misalnya `A`.
2. Buka panel **Warna** dan pilih atau buka glyph-nya.
3. Klik **Jadikan Glyph Warna**. Outline glyph menjadi layer warna pertama (`A.color0`). Kalau font
   belum punya palet, FontEasy menambahkan palet siap pakai.
4. Klik **Salinan Glyph** untuk menambah layer kedua berisi outline yang sama di atasnya, atau
   **Layer Kosong** untuk layer kosong yang siap digambari.
5. Klik kotak warna sebuah layer, lalu pilih warna dari palet yang terbuka. Tombol terakhir,
   **Warna teks**, memakai warna teks.
6. Klik nama sebuah layer untuk membuka glyph layer itu di editor dan menggambarnya. Misalnya, geser
   layer bayangan sedikit ke kanan bawah, atau gambar garis di layer teratas.

![Menyunting glyph warna A: segitiga biru tua, segitiga kuning, dan titik merah digambar sebagai tiga layer; panel Warna mencantumkan A.color2 berwarna merah dan A.color1 berwarna kuning, keduanya solid dengan opasitas 1.00.](screen:coloredit)

Di editor, layer-layer lain ditampilkan di belakang outline yang sedang Anda sunting, dan layer yang
sedang Anda gambar dibuat sedikit pudar supaya Anda bisa melihat apa yang ada di bawahnya.

### Menambah layer dari kontur terpilih

Kalau Anda sudah menggambar beberapa bentuk dalam satu glyph dan ingin setiap bentuk punya warnanya
sendiri:

1. Buka glyph-nya dan pilih kontur yang akan menjadi layer tersendiri.
2. Di panel Warna, klik **Kontur Terpilih**.

Kontur yang dipilih disalin ke layer baru di bagian atas. Tombolnya berwarna abu-abu sampai Anda
memilih kontur di jendela glyph.

### Mengubah urutan

Layer dicat dari bawah daftar ke atas; bagian atas daftar adalah bagian atas tumpukan. Pakai panah
atas dan bawah di samping layer untuk memindahkannya. Bayangan tempatnya di bawah, sorotan cahaya di
atas.

## Isian: solid, linear, dan radial

Di Mode Pro Anda bisa memilih cara setiap layer diisi.

![Tiga isian pada huruf O: isian solid dengan salinan kedua beropasitas 60% di atasnya; gradien linear dari oranye ke merah dengan handle Mulai dan Ujung; gradien radial dari kuning ke biru tua dengan handle Pusat dan Radius.](diagram:color-fills)

- **Solid** mengisi layer dengan satu warna palet. Slider **Opasitas** (0 sampai 1) membuatnya
  transparan: di 0,5, separuh dari yang ada di bawahnya terlihat menembus.
- **Linear** memadukan satu warna ke warna lain sepanjang garis lurus, dari titik **Mulai** ke titik
  **Ujung**.
- **Radial** memadukan warna ke luar dalam lingkaran, dari **Pusat** sampai **Radius**. Handle
  ketiga, **Fokus (tempat warna pertama dimulai)**, bisa menggeser titik awal paduan menjauhi pusat.

Saat Anda mengganti layer menjadi Linear atau Radial, FontEasy memaskan gradien ke outline layer.
Baris layer itu lalu menampilkan:

- **Warna**: warna setiap titik henti (*stop*) gradien. Klik kotaknya untuk memilih warna palet.
- **Sunting di Kanvas**: menampilkan handle gradien di jendela glyph.
- **Paskan**: memaskan gradien ke outline layer lagi.

### Handle gradien di kanvas

1. Buka glyph-nya (atau klik nama layernya).
2. Klik **Sunting di Kanvas** di baris layer itu.
3. Seret handle di jendela glyph: **Mulai** dan **Ujung** untuk gradien linear; **Pusat**,
   **Radius**, dan **Fokus** untuk gradien radial.

Warna mengikuti secara langsung selagi Anda menyeret. Saat dilepas, perubahan disimpan sebagai satu
langkah *undo*.

![Menyunting gradien pada B: layer B.color0 punya isian linear dari biru tua ke merah, dan handle-nya tampil sebagai garis dengan handle bulat melintasi glyph; panel Warna menampilkan Linear, dua titik warna, dan Sunting di Kanvas yang aktif.](screen:colorgradient)

:::tip
Gradien dan transparansi ditulis sebagai COLR versi 1, yang tidak bisa ditampilkan sebagian aplikasi
lama. Kalau Anda butuh dukungan seluas mungkin, pakai layer solid yang sepenuhnya opak: layer seperti
itu ditulis sebagai versi 0.
:::

## Palet

Pilih **Font › Palet Warna…** (atau klik **Palet…** di panel Warna) untuk menyunting palet font.
Jendela yang terbuka berjudul **Color Palettes**.

![Dialog palet warna: Palet 1 dengan tujuh warna bernomor, masing-masing dengan kotak warna dan kode hex; tombol Tambah Warna; serta palet siap pakai Sunset, Ocean, Candy, Forest, dan Mono.](screen:palettes)

- Tombol-tombol di atas (**Palet 1**, **Palet 2** …) memilih palet yang Anda sunting. **Tambah
  Palet** menambah palet baru; **Hapus Palet** menghapus palet saat ini (kalau ada lebih dari satu).
- Setiap warna adalah baris bernomor: klik kotaknya untuk pemilih warna, atau ketik kode hex seperti
  `#e63946`.
- **Tambah Warna** menambah warna, dan **×** menghapusnya. Keduanya berlaku di **semua** palet,
  sehingga semua palet selalu punya jumlah warna yang sama.
- Di bawah **Palet siap pakai**, klik **Sunset**, **Ocean**, **Candy**, **Forest**, atau **Mono**
  untuk memakai warna-warna itu di palet saat ini.
- Klik **OK** untuk menyimpan perubahan, atau **Batal** untuk membiarkan semuanya seperti semula.

Ingat bahwa layer merujuk warna berdasarkan nomor. Kalau Anda mengubah warna 2 dari merah ke biru,
setiap layer yang memakai warna 2 berubah menjadi biru.

## Menampilkan dan menyembunyikan warna

Glyph warna ditampilkan berwarna di mana-mana: di gambar mini Ikhtisar, di belakang outline di editor,
di baris teks, dan di panel Pratinjau. Pratinjau menggambar tabel warna dari font yang dibangun
FontEasy di latar belakang, jadi yang ditampilkannya sama persis dengan yang akan ditampilkan aplikasi.

Untuk mengerjakan outline polos tanpa warna, matikan **Tampilan › Tampilkan Warna**. Pilih lagi untuk
memunculkan warna kembali.

## Mengimpor warna

### Gambar SVG berwarna

Kalau Anda mendesain huruf di Illustrator, Inkscape, atau Figma, Anda bisa memasukkan gambar berwarna
lewat **Berkas › Impor › Glyph dari SVG…** ([bab tentang impor](/drawing/import-trace/) menjelaskan
artboard dan nama file).

- Gambar dengan **dua warna atau lebih** (tidak termasuk putih) masuk sebagai layer warna: setiap
  rangkaian bentuk dengan warna yang sama menjadi satu glyph layer yang diisi warna itu.
- Setiap warna dicari di palet font, atau ditambahkan kalau belum ada.
- Glyph-nya sendiri menyimpan outline satu warna, sebagai cadangan untuk aplikasi tanpa warna.
- Mengimpor SVG yang sama lagi, termasuk lewat sinkronisasi folder SVG otomatis, mengganti layer
  yang lama.
- Gambar **satu warna** diimpor seperti biasa: bentuk hitam mengisi dan bentuk putih melubangi.

### Font warna yang sudah ada

Saat Anda membuka font warna TTF atau OTF lewat **Berkas › Buka…**, FontEasy membaca tabel COLR dan
CPAL-nya dan mengubahnya menjadi layer dan palet yang bisa disunting: layer versi 0, dan layer versi 1
dengan isian solid, linear, atau radial. Jenis *paint* versi 1 lainnya (gradien *sweep*, transformasi,
mode komposit, variasi) dilewati, dan FontEasy menghitung berapa yang dilewati. Ini juga berhasil untuk
font besar: Segoe UI Emoji masuk dengan ribuan glyph warna.

## Memeriksa font warna

**Font › Periksa Font…** (<kbd>F7</kbd>) punya bagian **Warna** dengan lima pemeriksaan (lihat
[bab tentang pemeriksaan kualitas](/production/quality/) untuk cara kerja hasilnya):

| Pemeriksaan | Yang ditemukan | Perbaikan otomatis |
|---|---|---|
| Warna di luar palet | layer memakai nomor warna yang tidak ada di palet, sehingga tampil hitam atau tidak tampil sama sekali | tidak |
| Glyph layer tidak ada | layer warna menyebut glyph yang tidak ada | ya: layer yang hilang dibuang |
| Layer warna kosong | layer belum punya outline, jadi tidak menambahkan apa-apa | tidak |
| Palet berbeda ukuran | palet-palet punya jumlah warna yang berbeda | ya: palet disamakan panjangnya |
| Tidak ada outline cadangan | glyph dasar tidak punya outline sendiri untuk aplikasi tanpa warna | ya: outline dibuat dari gabungan semua layer |

Glyph layer tidak dilaporkan sebagai glyph yang "tak terpakai".

## Mengekspor font warna

Ekspor seperti biasa lewat **Berkas › Ekspor › Ekspor Font…**. Tabel warna ditambahkan ke file TTF,
OTF, WOFF, dan WOFF2.

1. Pilih **Berkas › Ekspor › Ekspor Font…**.
2. Biarkan **Font warna: tulis juga tabel SVG (untuk aplikasi tanpa dukungan COLR)** tercentang kalau
   Anda juga ingin tabel OpenType-SVG; hapus centangnya untuk hanya menyimpan COLR dan CPAL.
3. Pilih format dan ekspor.

Opsi SVG yang sama juga ada di **Berkas › Ekspor › Profil Ekspor…** (Mode Pro).

:::note[Yang tidak dibuat FontEasy]
Format emoji bitmap (`sbix`, `CBDT`), gradien *sweep* (kerucut), *paint* yang ditransformasi dan
komposit, serta warna yang berubah sepanjang sumbu *variable font* belum didukung. Font yang
memuatnya tetap bisa dibuka; bagian-bagian itu ditinggalkan.
:::

:::caution[Kesalahan yang sering terjadi]
- **Lupa outline cadangan.** Kalau Anda menghapus outline glyph dasar, aplikasi tanpa dukungan warna
  tidak menampilkan apa-apa. Perbaikan "Tidak ada outline cadangan" di Periksa Font membangunnya
  kembali dari layer.
- **Menghapus warna yang masih dipakai layer.** Layer yang menunjuk ke warna itu lalu menunjuk ke luar
  palet. Periksa Font menemukannya.
- **Terlalu banyak gradien untuk aplikasi lama.** Kalau font warna harus berjalan di perangkat lunak
  lama, utamakan layer solid.
:::

## Ringkasan

- Glyph warna adalah tumpukan **layer** (`A.color0`, `A.color1` …), masing-masing glyph biasa, yang
  dicat dari bawah ke atas.
- Layer memilih warna **berdasarkan nomor** dari sebuah **palet**; beberapa palet memberi layer yang
  sama warna lain. **Warna teks** mengikuti teks.
- FontEasy menulis **COLR** (v0 untuk layer solid, v1 untuk gradien dan transparansi), **CPAL** untuk
  palet, dan opsional tabel **OpenType-SVG**.
- Panel **Warna** membuat glyph warna, menambah dan mengurutkan layer, serta mengatur isian
  (**Solid**, **Linear**, **Radial**), opasitas, dan handle gradien.
- **Font › Palet Warna…** menyunting palet, dengan palet siap pakai sebagai titik awal.
- SVG berwarna dan font COLR diimpor sebagai layer yang bisa disunting.
- **Periksa Font** punya lima pemeriksaan warna; ekspor menambahkan tabel warna ke setiap format.

## Coba sendiri

1. Gambar `O` sederhana. Klik **Jadikan Glyph Warna**, lalu **Salinan Glyph**. Beri layer bawah warna
   gelap dan layer atas warna cerah. Buka layer bawah dan geser 30 unit ke kanan dan 30 unit ke bawah:
   sekarang huruf Anda punya bayangan.
2. Di Mode Pro, ganti layer atas menjadi **Radial**, klik **Sunting di Kanvas**, lalu seret pusatnya ke
   kiri atas. Kemudian buka **Font › Palet Warna…**, klik **Tambah Palet**, dan isi dengan **Ocean**.
   Berpindahlah antar palet di panel Warna dan lihat hurufnya berubah.
