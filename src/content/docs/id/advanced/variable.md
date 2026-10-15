---
title: Variable Font
description: Ubah satu font menjadi satu keluarga utuh berisi banyak ketebalan, lebar, atau gaya miring dengan menggambar beberapa master dan membiarkan FontEasy menghitung semua gaya di antaranya.
---

Kebanyakan *typeface* hadir sebagai sebuah [*family*](/reference/glossary/#family) (keluarga
font): Light, Regular, Bold, Black, sering kali lengkap dengan versi miring dan versi sempit. Dulu,
setiap [gaya](/reference/glossary/#style) itu adalah file font terpisah yang digambar satu per satu,
glyph demi glyph. Pekerjaannya sangat banyak.

[*Variable font*](/reference/glossary/#variable-font) (font variabel) bekerja dengan cara lain.
Anda cukup menggambar ujung-ujungnya, misalnya versi yang sangat tipis dan versi yang sangat tebal
dari setiap huruf, lalu font itu sendiri menghitung semua ketebalan di antaranya. Satu file memuat
seluruh rentang gaya. Di aplikasi yang mendukung *variable font*, pembaca bisa menggeser slider dan
melihat huruf menebal dengan mulus, seperti memutar peredup lampu alih-alih menyalakan tiga bohlam
yang berbeda.

FontEasy bisa mengubah font biasa menjadi *variable font* dalam satu langkah, menampilkan gaya apa
pun di antara gambar Anda selagi Anda bekerja, dan mengekspor *variable font* sekaligus satu set
font biasa (statis) untuk aplikasi yang belum mendukung *variable font*.

Dalam bab ini Anda akan mempelajari:

- apa itu master, sumbu, *instance*, dan interpolasi, dengan bahasa sederhana;
- mengapa setiap master harus punya titik yang sama dengan urutan yang sama;
- cara menjadikan font variabel dengan **Font › Jadikan Variabel…**;
- cara mengatur master, sumbu, dan *instance* di dialog **Master & Sumbu**;
- cara melihat gaya di antara master dengan panel **Variasi** dan slider di **Pratinjau**;
- kegunaan layer antara (*brace*) dan layer alternatif (*bracket*);
- cara mengekspor *variable font* dan *instance* statis.

## Cara kerja variable font

### Master: gambar yang Anda buat

[*Master*](/reference/glossary/#master) adalah satu gambar lengkap font Anda pada satu titik di
rentang gaya. *Variable font* yang sederhana punya dua master, misalnya master Light dan master
Bold. Setiap master punya outline sendiri untuk setiap [glyph](/reference/glossary/#glyph), spasi
sendiri, dan *kerning* sendiri, tetapi semua strukturnya sama: nama glyph yang sama, karakter yang
sama, fitur OpenType yang sama.

Bayangkan master seperti dua foto di awal dan di akhir sebuah video *time-lapse*: kedua foto itu
Anda ambil sendiri, lalu komputer mengisi bingkai-bingkai di antaranya.

### Interpolasi: gaya di antara master

[Interpolasi](/reference/glossary/#interpolation) adalah perhitungan yang menghasilkan gaya-gaya di
antara master. Untuk setiap titik pada sebuah glyph, FontEasy melihat posisi titik itu di master
Light dan di master Bold, lalu menempatkannya di antara keduanya. Di tengah rentang, setiap titik
berada tepat di tengah kedua posisinya. Di seperempat rentang, ya seperempat jalan.

![Master Light dan Black untuk "Ho" dari Source Serif 4, serta gaya di tengah-tengahnya yang dihitung lewat interpolasi; slider menunjukkan letak masing-masing pada sumbu ketebalan.](diagram:variable-interpolation)

Karena gaya di antaranya dihitung, Anda tidak perlu menggambarnya. Dua master bisa memberi Anda
Light, Regular, Medium, SemiBold, dan Bold, ditambah semua ketebalan di antara gaya-gaya itu.

### Sumbu: arah perubahan sebuah font

[Sumbu](/reference/glossary/#axis) (*axis*) adalah satu arah perubahan desain, seperti slider untuk
ketebalan. Setiap sumbu punya **tag** pendek empat huruf dan tiga angka: **minimum**, **bawaan**
(*default*), dan **maksimum**. FontEasy mengenal lima sumbu standar (sumbu "terdaftar") dan
menyarankan rentang yang lazim:

| Sumbu | Tag | Rentang lazim (min, bawaan, maks) | Yang berubah |
|---|---|---|---|
| Ketebalan (*weight*) | `wght` | 100, 400, 900 | Berat goresan, dari Thin sampai Black |
| Lebar (*width*) | `wdth` | 50, 100, 200 | Sempit atau lebarnya huruf, dalam persen |
| Ukuran optik | `opsz` | 6, 12, 72 | Detail yang disesuaikan untuk teks kecil atau judul besar, dalam poin |
| Kemiringan (*slant*) | `slnt` | −15, 0, 0 | Seberapa miring huruf, dalam derajat |
| Miring (*italic*) | `ital` | 0, 0, 1 | Tegak (0) atau italic (1) |

Anda juga bisa menambahkan **sumbu kustom** dengan tag sendiri berupa empat huruf kapital, misalnya
`GRAD` (*grade*). Satu font boleh punya beberapa sumbu sekaligus, misalnya ketebalan dan lebar.

### Ruang desain

Kalau sebuah font punya dua sumbu, semua gaya yang mungkin bisa dibayangkan sebagai peta datar.
Ketebalan ke atas, lebar ke samping, dan setiap tempat di peta itu adalah satu gaya. Peta ini disebut
**ruang desain** (*design space*), dan file yang menggambarkannya adalah file
[*designspace*](/reference/glossary/#designspace) (`.designspace`).

![Ruang desain dengan sumbu ketebalan dan sumbu lebar: master berada di keempat sudut, sedangkan instance seperti Regular, SemiBold, dan Condensed berada di tempat-tempat bernama di dalamnya.](diagram:variable-designspace)

Master berada di tempat tertentu di ruang desain (sering kali di sudut-sudutnya). Semua yang lain
dihitung dari master-master itu.

### Instance: gaya yang diberi nama

[*Instance*](/reference/glossary/#instance) adalah tempat bernama di ruang desain, seperti "Regular"
di ketebalan 400 atau "SemiBold" di ketebalan 600. *Instance* inilah yang dilihat orang di menu
font. *Instance* tidak digambar: FontEasy menghitungnya dari master. Saat Anda mengekspor font
statis, setiap *instance* menjadi file font biasa tersendiri.

### Peta sumbu dan label gaya

Dua gagasan lagi berguna setelah Anda paham dasarnya:

- **Peta sumbu** (disimpan di tabel `avar` font) mengubah cara nilai slider sampai ke gambar. Tanpa
  peta, menggeser slider ketebalan ke tengah menghasilkan gaya tepat di tengah kedua master. Dengan
  peta, Anda bisa membuat sebagian rentang bergerak lebih cepat atau lebih lambat, misalnya supaya
  ketebalan tipis berubah perlahan dan ketebalan tebal berubah cepat.
- **Label gaya** (disimpan di tabel `STAT`) adalah nama yang ditampilkan aplikasi untuk tempat-tempat
  di setiap sumbu: "Light" di 300, "Bold" di 700, dan seterusnya. Satu label bisa ditandai **bisa
  dihilangkan** (*elidable*), artinya label itu tidak ikut dalam nama gabungan: aplikasi menampilkan
  "Bold", bukan "Bold Normal".

## Kompatibilitas: titik sama, urutan sama

Interpolasi hanya berhasil kalau setiap master punya **struktur yang sama** untuk sebuah glyph:
jumlah [kontur](/reference/glossary/#contour) yang sama, jumlah [titik](/reference/glossary/#point)
yang sama di setiap kontur dengan urutan yang sama, garis dan kurva di tempat yang sama, serta
[komponen](/reference/glossary/#component) dan [*anchor*](/reference/glossary/#anchor) yang sama.
Glyph yang memenuhi aturan ini disebut **kompatibel**.

Alasannya sederhana: FontEasy menggerakkan titik 1 pada "o" Light ke arah titik 1 pada "o" Bold,
titik 2 ke arah titik 2, dan seterusnya. Kalau "o" Bold punya satu titik tambahan, titik itu tidak
punya pasangan, dan perhitungannya tidak bisa jalan.

![Atas: "o" Light dan Black punya titik yang sama dengan urutan yang sama, jadi bisa diinterpolasi. Bawah: bentuk dengan empat titik tidak bisa dipasangkan dengan bentuk lima titik.](diagram:variable-compatibility)

Meskipun jumlah titiknya sama, hasilnya bisa terpuntir kalau urutannya berbeda: kontur disusun dalam
urutan lain, berjalan ke arah sebaliknya, atau dimulai dari titik yang berbeda. FontEasy menyebutnya
masalah **urutan**, dan bisa memperbaikinya secara otomatis (lihat
[Memperbaiki glyph yang tidak kompatibel](#memperbaiki-glyph-yang-tidak-kompatibel)).

:::tip[Aturan emas]
Saat menggambar master kedua, **pindahkan titik, jangan menambah atau menghapusnya**. Seret titik
yang sudah ada ke luar untuk menebalkan batang huruf. Selama Anda hanya memindahkan titik, setiap
glyph tetap kompatibel.
:::

## Menjadikan font variabel dalam satu langkah

Cara tercepat untuk memulai adalah **Font › Jadikan Variabel…**. Perintah ini tersedia di Mode
Sederhana maupun Mode Pro. Ia menambahkan satu sumbu, membuat master kedua sebagai salinan font
Anda, menambahkan *instance* dan label gaya yang lazim, bahkan menggambar master baru itu sebagai
titik awal.

![Dialog Jadikan Variabel: Ketebalan dipilih, ketebalan master kedua 700 dengan nama Bold, dan "Gambarkan master baru untuk saya" dicentang.](screen:makevariable)

1. Buka font Anda. Font itu harus font biasa (statis); kalau sudah variabel, tambahkan master lewat
   dialog **Master & Sumbu**.
2. Pilih **Font › Jadikan Variabel…**.
3. Pilih jenis variasinya di bagian atas: **Ketebalan**, **Lebar**, atau **Miring**.
4. Atur master kedua:
   - untuk **Ketebalan**, geser **Ketebalan master kedua** (100 sampai 900, per 100). Namanya
     mengikuti nama ketebalan yang lazim: 700 adalah "Bold", 300 adalah "Light", dan seterusnya;
   - untuk **Lebar**, geser **Lebar master kedua (%)** (50 sampai 200; 75 adalah lebar *condensed*
     yang umum);
   - untuk **Miring**, tidak ada yang perlu diatur: master kedua adalah versi italic-nya.
5. Ubah **Nama** kalau perlu.
6. Biarkan **Gambarkan master baru untuk saya (lebih tebal, sempit, atau miring)** tercentang agar
   Anda langsung punya titik awal. FontEasy lalu menebalkan batang huruf di master baru (atau
   menyempitkan huruf, atau memiringkannya 10° untuk italic) dengan titik yang persis sama. Hapus
   centangnya kalau Anda ingin master baru dimulai sebagai salinan polos yang Anda gambar ulang
   sendiri.
7. Klik **Jadikan Variabel**.

FontEasy menampilkan pesan "Font Anda sekarang variabel" dan memindahkan Anda ke master baru supaya
Anda bisa langsung mengerjakannya. Panel **Pratinjau** terbuka dengan slider untuk sumbu baru itu.

![Source Serif 4 yang sudah dijadikan variabel: huruf H sedang disunting di master Regular, panel Variasi menunjukkan slider ketebalan di 560 beserta H hasil perhitungan, dan kedua master tercantum.](screen:variablebold)

:::note
Gambar yang dibuat FontEasy adalah titik awal, bukan desain jadi. Huruf bold sungguhan lebih dari
sekadar huruf regular yang ditebalkan: *counter* (ruang dalam huruf) mengecil, kurva berubah bentuk,
dan beberapa huruf perlu lebih lebar. Pakai master otomatis untuk melihat seluruh rentang berjalan
sekaligus, lalu perhalus huruf-hurufnya dengan tangan. Bab [Otomasi Desain](/advanced/automation/)
menjelaskan apa yang bisa dan tidak bisa dilakukan perubahan otomatis.
:::

Saat Anda menyimpan, FontEasy menulis file `.designspace` di sebelah UFO Anda. UFO asli tetap di
tempatnya dan menjadi **master bawaan**; master baru disimpan sebagai UFO sendiri di sebelahnya.
([UFO](/reference/glossary/#ufo) adalah format folder yang dipakai FontEasy untuk font yang sedang
Anda gambar.)

## Bekerja dengan master

### Berpindah antar master

Di *variable font* Anda selalu menyunting **satu master pada satu waktu**: glyph, spasi, dan
*kerning* yang Anda ubah masuk ke master yang aktif. Ada beberapa cara memilihnya:

- **pemilih master** di ujung kanan deretan tab font, berupa daftar tarik-turun dengan ikon layer;
- <kbd>Ctrl</kbd>+<kbd>1</kbd> sampai <kbd>Ctrl</kbd>+<kbd>9</kbd> untuk sembilan master pertama;
- **Font › Master Berikutnya** (<kbd>Ctrl</kbd>+<kbd>]</kbd>) dan **Font › Master Sebelumnya**
  (<kbd>Ctrl</kbd>+<kbd>[</kbd>).

Berpindah master bukan langkah *undo*, dan tidak membuat font tampak berubah.

Saat Anda menyunting glyph, master-master lain digambar samar di belakangnya, sehingga Anda bisa
melihat sejauh apa setiap titik berpindah. Nyalakan atau matikan tampilan ini dengan
**Tampilan › Tampilkan Master Lain**.

### Milik satu master dan milik semua master

Beberapa perubahan berlaku di semua master sekaligus, karena strukturnya harus sama di mana-mana:
menambah, menghapus, atau mengganti nama glyph, nilai Unicode, warna tanda, urutan glyph, komponen,
*anchor*, grup *kerning*, kode fitur, dan info keluarga (nama keluarga, versi, lisensi). Hal lain
milik masing-masing master: outline, spasi, nilai *kerning*, nama gaya, dan *metrics* vertikal.

Saat Anda menambahkan glyph baru di satu master (misalnya dengan mengimpor SVG atau menjiplak
gambar), glyph itu otomatis disalin ke master lain. Salinannya langsung kompatibel; Anda tinggal
menggambar ulang sesuai ketebalan tiap master.

## Dialog Master & Sumbu

Di Mode Pro, **Font › Master & Sumbu…** membuka dialog dengan tiga tab: **Sumbu**, **Master**, dan
**Instance**. **Font › Instance…** membuka dialog yang sama langsung di tab Instance. Setiap
perubahan di dialog ini langsung berlaku, dan **Edit › Batalkan** mengembalikannya, seperti yang
diingatkan catatan di bagian bawah dialog.

### Tab Sumbu

![Tab Sumbu di dialog Master & Sumbu untuk Mutator Sans: dua sumbu, width dan weight, dengan tag dan rentangnya; di bawahnya, peta sumbu weight berupa garis dengan satu titik yang diturunkan di tengah, lalu bagian nama gaya dimulai.](screen:axes)

Setiap sumbu adalah satu baris berisi **Nama**, **Tag**, **Minimum**, **Bawaan**, dan **Maksimum**.
Klik sebuah kolom, ketik nilai baru, lalu tekan <kbd>Enter</kbd> untuk mengubahnya. Tanda **×** di
ujung baris menghapus sumbu itu.

Untuk menambah sumbu, pakai tombol-tombol setelah **Tambah sumbu:**. FontEasy menawarkan sumbu
terdaftar yang belum dimiliki font (Ketebalan, Lebar, Ukuran optik, Kemiringan, Miring), masing-masing
dengan rentang lazimnya. Untuk sumbu kustom, ketik empat huruf kapital di kotak kecil (misalnya
`GRAD`), lalu klik **Kustom**; sumbu kustom dimulai dengan rentang 0 sampai 100.

Kalau font Anda statis, tab ini bertuliskan "Font statis: tambahkan sumbu untuk menjadikannya
variabel." Menambahkan sumbu pertama mengubah font menjadi *designspace*, dan font Anda menjadi
master bawaannya.

#### Peta sumbu

Klik **Peta & label** di baris sebuah sumbu untuk menyunting peta dan labelnya di bawah tabel.
Petanya berupa grafik kecil: nilai slider berjalan ke samping, nilai yang sampai ke gambar berjalan
ke atas. Garis diagonal lurus berarti tidak ada peta.

- Seret sebuah titik ke atas atau ke bawah untuk mempercepat atau memperlambat bagian rentang itu.
- **Tambah Titik** menambahkan titik di tengah bentangan terpanjang.
- **Garis Lurus** menghapus peta lagi.

Saat peta diubah, master dan *instance* tetap di tempatnya pada slider.

#### Nama gaya (STAT)

Di bawah peta ada nama-nama gaya untuk sumbu itu. Setiap label punya nama dan nilai; centang **Bisa
dihilangkan** pada label yang tidak perlu ikut dalam nama gabungan (biasanya "Regular" atau
"Normal"). **Tambah Label** menambah baris, **Nama Umum** mengisi nama-nama yang lazim (Thin … Black
untuk ketebalan, Condensed … Expanded untuk lebar), dan **Terapkan Label** menyimpan perubahan Anda.

### Tab Master

![Tab Master untuk Mutator Sans: gambar ruang desain dengan keempat master sebagai titik penuh dan instance sebagai lingkaran; di bawahnya, tabel master dengan nilai width dan weight, tombol Edit, baris Master baru, dan "Semua glyph bisa diinterpolasi."](screen:masters)

Di bagian atas, gambar ruang desain menampilkan master sebagai titik penuh dan *instance* sebagai
lingkaran. Di bawahnya ada tabel master:

- **Nama** dan satu kolom per sumbu berisi lokasi master. Ketik nilai baru dan tekan
  <kbd>Enter</kbd> untuk memindahkan master. Lokasi master bawaan tidak bisa diketik: master bawaan
  selalu berada di nilai bawaan setiap sumbu.
- **bawaan** menandai master bawaan; **disunting** menandai master yang sedang Anda kerjakan.
- **Edit** menjadikan master itu aktif.
- **×** menghapus master (kecuali master bawaan).

Di bawah **Master baru**, ketik nama (misalnya "Bold"), nilai untuk setiap sumbu, pilih master mana
yang menjadi **salinan dari**-nya, lalu klik **Tambah Master**. Master baru dimulai sebagai salinan:
ubah outline-nya agar berbeda, dengan kontur dan titik yang tetap sama. FontEasy langsung memindahkan
Anda ke master baru itu. Dua master tidak boleh menempati tempat yang sama di ruang desain.

Di bagian bawah, ringkasan kompatibilitas menyatakan "Semua glyph bisa diinterpolasi." atau berapa
glyph yang tidak bisa diinterpolasi dan berapa yang bisa diperbaiki otomatis, lengkap dengan tombol
**Samakan Struktur** dan daftar glyph yang bermasalah.

### Tab Instance

![Tab Instance: daftar gaya bernama beserta nilai width dan weight-nya, masing-masing dengan tombol hapus.](screen:instances)

Setiap baris adalah satu gaya bernama: **Nama gaya** dan nilai untuk setiap sumbu. Anda bisa
menyunting nama dan nilainya langsung di tabel.

- **Tambah Instance** menambah baris di lokasi bawaan.
- **Instance Umum** mengisi daftar dengan nama-nama lazim yang muat dalam rentang sumbu Anda: Thin …
  Black untuk ketebalan, ditambah Italic, Condensed, dan seterusnya untuk sumbu lain.
- **Terapkan Instance** menyimpan suntingan Anda. Tombol ini muncul begitu ada yang berubah.
- **Ekspor Instance Statis…** membuka dialog ekspor yang dijelaskan di
  [Mengekspor](#mengekspor-variable-font-dan-font-statis). Tombol ini muncul kalau tidak ada
  suntingan yang belum diterapkan di daftar.

## Melihat setiap gaya sambil menggambar

### Panel Variasi

Panel **Variasi** (Mode Pro, **Jendela › Panel › Variasi**) adalah jendela Anda ke ruang desain
selagi menyunting.

![Menyunting R dari Mutator Sans di master BoldWide: panel Variasi menunjukkan slider width (600) dan weight (350), huruf R yang dihitung di tempat itu, dan "Strukturnya sama di semua master."](screen:variations)

- Satu slider per sumbu memilih tempat di ruang desain.
- Di bawah slider, glyph yang sedang Anda sunting (atau yang dipilih di Ikhtisar) digambar seperti
  rupanya di tempat itu, lengkap dengan lebarnya.
- Baris status memberi tahu apakah glyph itu kompatibel: "Strukturnya sama di semua master." atau
  daftar masalah di setiap master.
- **Master:** mendaftar semua master. Klik salah satu untuk melompatkan slider ke tempat master itu.

Kalau font masih statis, panel ini menyebutkannya dan menawarkan tombol **Jadikan Variabel…**.

### Slider di Pratinjau

Panel **Pratinjau** menampilkan slider untuk setiap sumbu di atas teks contoh, baik di Mode
Sederhana maupun Mode Pro. FontEasy membangun *variable font* sungguhan di latar belakang dan
membentuk teks di tempat yang Anda pilih, jadi yang Anda lihat persis sama dengan font hasil ekspor.

### Masalah di Ikhtisar dan panel Validasi

FontEasy memeriksa kompatibilitas diam-diam di latar belakang selagi Anda menggambar. Glyph yang tidak
bisa diinterpolasi mendapat tanda belah ketupat kecil di Ikhtisar, dan tercantum di bagian
**Interpolasi** pada panel **Validasi**. Kalau semuanya beres, bagian itu bertuliskan "Strukturnya
sama di semua master."

## Memperbaiki glyph yang tidak kompatibel

Panel Variasi dan tab Master menjelaskan setiap masalah dengan kata-kata sederhana, misalnya:

| Pesan | Artinya | Bisa diperbaiki FontEasy? |
|---|---|---|
| kurang | glyph tidak ada di master itu | tidak: tambahkan atau gambar |
| 3 kontur, master bawaan punya 2 | kontur kelebihan atau kekurangan | tidak: gambar ulang |
| kontur 1: 14 titik, master bawaan punya 12 | ada titik yang ditambah atau dihapus | tidak: gambar ulang |
| kontur 1: garis dan kurva di tempat yang berbeda | garis berubah jadi kurva atau sebaliknya | tidak: gambar ulang |
| komponen berbeda / anchor berbeda | bagian atau *anchor*-nya tidak cocok | tidak: samakan |
| urutan, arah, atau titik awal kontur berbeda (bisa diperbaiki) | struktur sama, susunannya beda | **ya** |

Untuk jenis yang terakhir, klik **Samakan Struktur** (di panel Variasi untuk glyph yang sedang dibuka,
atau di tab Master untuk seluruh font; di Mode Pro juga lewat **Font › Samakan Struktur**). FontEasy
menyamakan urutan, arah, dan titik awal kontur dengan master bawaan, dan bilah status
memberitahukannya.

Untuk jenis lainnya, gambar ulang glyph di master itu dengan kontur dan titik yang sama seperti
master bawaan. Outline samar master lain di editor membantu Anda melihat titik mana harus ke mana.

:::caution[Kesalahan yang sering terjadi]
- **Menghapus overlap hanya di satu master.** Menghapus *overlap* (tumpang tindih) mengubah titik
  sebuah glyph. Lakukan di semua master atau tidak sama sekali; di *variable font*, kontur yang
  saling tumpang tindih itu normal dan tidak masalah.
- **Menambah titik ekstrem di satu master.** Tambahkan di semua master, di tempat yang bersesuaian.
- **Menggambar ulang huruf dari nol di master kedua.** Lebih cepat menyeret titik yang sudah ada
  daripada membereskan urutan titik-titik baru.
:::

## Layer antara dan layer alternatif

Kadang dua master tidak cukup untuk satu glyph tertentu. FontEasy punya dua alat untuk ini, keduanya
di panel **Layer** dalam Mode Pro (**Jendela › Panel › Layer**), di bawah layer latar depan dan
latar yang biasa.

![Sumbu ketebalan dari Light ke Bold: layer antara untuk satu glyph di 550, dan dollar alternatif yang menggantikan dollar biasa mulai 700 sampai ujung sumbu.](diagram:variable-layers)

### Layer antara (brace)

**Layer antara**, juga disebut [*brace layer*](/reference/glossary/#brace-layer), adalah master
tambahan untuk **satu glyph saja**, di satu tempat di ruang desain. Pakai ini kalau sebuah glyph
tampak salah di tengah-tengah antara master, misalnya bagian tengah "e" terlalu gelap di ketebalan
550 padahal Light dan Bold terlihat baik.

1. Buka glyph-nya.
2. Di panel **Variasi**, geser slider ke tempat glyph itu perlu dibantu.
3. Di panel **Layer**, di bawah **Layer Antara**, klik **Tambah Layer di …** (tombolnya menunjukkan
   tempatnya, misalnya "Tambah Layer di Weight 550").
4. FontEasy membuat layer itu dan membukanya. Layer dimulai dari hasil interpolasi master di tempat
   itu, jadi sudah kompatibel: atur titik-titiknya untuk memperbaiki bentuk.

![Panel Layer dengan layer antara {550} dari "A" yang terbuka untuk disunting; bagian Layer Antara mencantumkan "{550} Weight 550".](screen:bracelayers)

Layer itu dinamai menurut tempatnya di dalam kurung kurawal (di sini `{550}`). Klik di daftar untuk
menyuntingnya lagi, atau klik **×** untuk menghapusnya. Tombolnya berwarna abu-abu kalau di tempat
itu sudah ada master atau layer lain; geser slider dulu. Glyph lain yang mendapat layer di tempat
yang sama memakai layer yang sama.

### Layer alternatif (bracket)

**Layer alternatif**, juga disebut [*bracket layer*](/reference/glossary/#bracket-layer), menukar
glyph dengan **gambar lain** di sebagian ruang desain. Contoh klasiknya adalah tanda dollar yang
kehilangan garis tegaknya di ketebalan paling berat, karena garis itu akan menyumbat hurufnya.

1. Buka glyph-nya, misalnya `dollar`.
2. Di panel **Layer**, di bawah **Layer Alternatif**, pilih sumbu di daftar tarik-turun dan ketik
   nilai mulai dari mana alternatif itu mengambil alih (setelah **≥**).
3. Klik **Tambah Alternatif**.
4. FontEasy membuat glyph baru seperti `dollar.BRACKET.700` di semua master dan memberi tahu
   "Alternatif dollar.BRACKET.700 ditambahkan: gambar di setiap master." Buka glyph itu dan gambar
   bentuk alternatifnya di setiap master.

Saat Anda membuka glyph aslinya, panel mendaftar alternatifnya beserta kondisinya (misalnya
"Weight ≥ 700"); klik namanya untuk menyunting alternatif itu, atau **×** untuk berhenti
memakainya dan menghapusnya. Saat Anda membuka glyph alternatifnya, panel memberi tahu glyph mana
yang digantikannya.

:::note
Alternatif hanya menggantikan glyph yang diketik. Glyph komposit yang memakainya sebagai komponen
tidak ikut berganti ke alternatif.
:::

Kedua jenis layer disimpan dalam format *designspace* standar, jadi alat lain yang membaca file
*designspace* juga memahaminya. Keduanya juga ikut terbawa saat Anda mengimpor file Glyphs.

## Membuka sumber variabel yang sudah ada

FontEasy membuka file *designspace* lewat **Berkas › Buka…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>),
bersama UFO master-masternya. Di Mode Pro Anda juga bisa memasukkan file aplikasi Glyphs lewat
**Berkas › Impor › Berkas Glyphs App (.glyphs)…**, atau cukup membuka file `.glyphs`-nya. Master,
sumbu, peta sumbu, *instance*, *kerning*, fitur, serta layer *brace* dan *bracket* ikut terbawa.
Simpan pertama kali menulis file *designspace* dan satu UFO per master.

## Mengekspor variable font dan font statis

### Variable font

Ekspor berjalan seperti dijelaskan di [bab tentang ekspor](/production/export/): pilih
**Berkas › Ekspor › Ekspor Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>). Untuk *designspace*, dialognya
bertuliskan "Designspace ini diekspor sebagai satu variable font." Perhatikan hal-hal ini:

- *Variable font* diekspor sebagai [TrueType](/reference/glossary/#truetype) (`.ttf`, serta format
  web [WOFF](/reference/glossary/#woff) dan WOFF2). `.otf` variabel (CFF2) belum didukung.
- Kontur yang tumpang tindih dipertahankan, karena *variable font* membutuhkannya, dan diberi tanda
  agar aplikasi menggambarnya dengan benar.
- *Instance* dan label gaya yang Anda atur menjadi gaya bernama di menu font.

### Instance statis

Banyak aplikasi, printer, dan sistem lama belum bisa memakai *variable font*. Untuk mereka, ekspor
setiap *instance* sebagai font biasa tersendiri lewat **Berkas › Ekspor › Instance Statis…** (Mode
Pro). Dialog yang sama juga terbuka dari tautan di dialog Ekspor dan dari tab Instance.

![Dialog Ekspor Instance Statis: semua instance Mutator Sans dicentang, TrueType dipilih sebagai format, Hapus overlap aktif, dan sebuah folder sudah diatur.](screen:exportinstances)

1. Centang **Instance** yang Anda inginkan.
2. Di bawah **Format**, centang satu format atau lebih: TrueType, OpenType CFF, WOFF, WOFF2.
3. Biarkan **Hapus overlap (source Anda tetap utuh)** aktif agar font statisnya bersih.
4. Centang **Beri hinting pada outline TrueType (ttfautohint)** kalau Anda ingin
   [*hinting*](/reference/glossary/#hinting) (petunjuk tampilan di layar) untuk file TrueType. Kalau
   FontEasy tidak menemukan program ttfautohint, dialog menawarkan **Cari…** di sebelahnya.
5. Pilih **Folder** (secara bawaan folder bernama `instances` di sebelah font Anda) atau klik
   **Telusuri…**.
6. Klik **Ekspor**.

Setiap *instance* diinterpolasi dari master dan dibangun sebagai font statis tersendiri. Kalau ada
glyph yang tidak bisa diinterpolasi, FontEasy memakai outline master bawaan untuk glyph itu di font
statis dan melaporkannya, alih-alih menghentikan ekspor.

## Tips

- **Mulailah dari ketebalan.** Sumbu ketebalan dengan dua master adalah *variable font* yang paling
  mudah dibuat dengan benar. Tambahkan lebar atau italic belakangan.
- **Gambar ujung-ujungnya.** Letakkan master di ujung setiap sumbu. Interpolasi pandai mengisi bagian
  tengah, tetapi buruk dalam menebak di luar gambar.
- **Sering periksa bagian tengah.** Geser slider Pratinjau sepanjang rentang selagi bekerja. Glyph
  yang tampak baik di kedua ujung masih bisa menggembung atau terpuntir di tengah.
- **Pilih master bawaan yang masuk akal.** Master bawaan adalah yang ditampilkan aplikasi kalau
  sumbunya tidak diubah, jadi biasanya itu Regular Anda.

:::caution[Kalau pratinjau tampak terpuntir]
Kalau sebuah glyph terbalik atau memotong dirinya sendiri di tengah antara master, konturnya punya
urutan, arah, atau titik awal yang berbeda. Lihat panel Variasi: kalau dikatakan urutannya berbeda,
klik **Samakan Struktur**. Kalau dilaporkan jumlah titiknya berbeda, buka setiap master dan samakan
titik-titiknya.
:::

## Ringkasan

- *Variable font* memuat seluruh rentang gaya dalam satu file. Anda menggambar **master**; FontEasy
  menghitung semua yang ada di antaranya lewat **interpolasi**.
- **Sumbu** adalah satu arah perubahan (ketebalan, lebar, ukuran optik, kemiringan, miring, atau
  kustom), dengan nilai minimum, bawaan, dan maksimum. Beberapa sumbu membentuk **ruang desain**.
- ***Instance*** adalah tempat bernama di ruang desain, seperti Regular atau Bold.
- Setiap master harus punya **kontur, titik, urutan, komponen, dan *anchor* yang sama** untuk setiap
  glyph. Pindahkan titik, jangan menambahnya.
- **Font › Jadikan Variabel…** menjadikan font variabel dalam satu langkah dan bisa menggambar master
  barunya untuk Anda.
- **Font › Master & Sumbu…** mengatur sumbu (dengan peta dan label gaya), master, dan *instance*.
- Panel **Variasi** dan slider **Pratinjau** menampilkan tempat mana pun di ruang desain.
- **Layer antara** menambah master khusus untuk satu glyph; **layer alternatif** menukar gambar di
  sebagian rentang.
- Ekspor TTF variabel lewat **Ekspor Font…** dan font statis lewat **Instance Statis…**.

## Coba sendiri

1. Buka font yang sudah punya beberapa huruf (misalnya huruf-huruf "Hamburgefonstiv"). Pilih
   **Font › Jadikan Variabel…**, pilih **Ketebalan**, atur 700, biarkan **Gambarkan master baru
   untuk saya** tercentang, lalu klik **Jadikan Variabel**. Geser slider di Pratinjau dari ujung ke
   ujung. Lalu kembali ke master pertama dengan <kbd>Ctrl</kbd>+<kbd>1</kbd> dan bandingkan.
2. Di master Bold, buka "o" dan kecilkan sedikit *counter*-nya dengan menyeret titik-titik bagian
   dalam, tanpa menambah titik. Perhatikan panel Variasi: seharusnya tetap bertuliskan "Strukturnya
   sama di semua master." Sekarang tambahkan satu titik dengan alat Tambah Titik dan lihat apa yang
   dilaporkan panel; lalu batalkan.
