---
title: Kerning
description: Cara memperbaiki jarak pasangan huruf yang canggung seperti AV dan To, secara manual, dengan grup kerning, dengan Kerning Otomatis, dan dengan Audit Kerning.
---

Sekalipun spasi setiap huruf di font Anda sudah baik, beberapa kombinasi tetap tampak janggal.
Ketik `AVATAR` dan Anda akan melihatnya: `A` dan `V` saling condong menjauh dan meninggalkan baji
putih yang besar di antara keduanya, sementara huruf lain duduk pada jarak yang nyaman. Ketik `To`
dan huruf `o` yang kecil melayang jauh di bawah lengan `T`. Pengaturan spasi berapa pun tidak bisa
memperbaikinya, karena masalahnya bukan pada satu huruf. Masalahnya ada pada **pasangannya**.

Solusinya adalah *[kerning](/reference/glossary/#kerning)* (pengaturan jarak antar pasangan huruf).
Kerning adalah daftar pengecualian terhadap spasi normal: "bila `A` diikuti `V`, geser `V` 119 unit
lebih dekat". Bayangkan huruf-huruf yang digunting dari kertas lalu dijajarkan: kerning adalah
mendorong dua guntingan huruf sedikit lebih dekat (atau lebih jauh) karena bentuknya menyisakan
ruang terlalu banyak (atau terlalu sedikit) di antara keduanya.

Kerning dikerjakan **setelah** spasi. Spasi menentukan ritme seluruh font; kerning memperbaiki
pasangan yang merusaknya. Font yang spasinya baik cukup butuh beberapa ratus pasangan kerning,
bukan puluhan ribu.

Dalam bab ini Anda akan mempelajari:

- perbedaan kerning dengan spasi dan dengan *tracking*;
- apa itu pasangan kerning dan apa pengaruh nilai negatif dan positif;
- pasangan mana yang butuh kerning, dan kata yang bagus untuk mengujinya;
- bagaimana grup kerning dan pengecualian menghemat ribuan pasangan;
- cara mengatur kerning dengan Jendela Kerning, tool Kerning, dan panel Kerning;
- bagaimana Kerning Otomatis mengukur outline Anda dan mengatur pasangan untuk Anda;
- apa yang ditemukan Audit Kerning, dan seberapa banyak kerning yang cukup.

## Spasi, kerning, dan tracking

Ada tiga hal yang menentukan jarak antara dua huruf, dan sebaiknya ketiganya dibedakan:

- **Spasi** milik setiap glyph. [Sidebearing](/reference/glossary/#sidebearing) `A` sama saja apa
  pun huruf sesudahnya. Anda mengaturnya di [bab sebelumnya](/spacing/metrics/).
- **Kerning** milik sebuah pasangan. Kerning menambah atau mengurangi ruang hanya di antara dua
  glyph tertentu, misalnya `A` yang diikuti `V`.
- *[Tracking](/reference/glossary/#tracking)* (spasi huruf merata, *letter-spacing*) milik pemakai
  font, bukan milik font. Tracking menambahkan ruang yang sama di antara *semua* huruf sebuah teks,
  misalnya untuk melonggarkan judul berhuruf kapital. Anda tidak mengatur tracking di dalam font;
  aplikasi seperti pengolah kata dan program desainlah yang melakukannya.

![Kata AVATAR tiga kali: tanpa kerning, dengan tracking +80 yang memperlebar semua celah sama banyak, dan dengan kerning font yang hanya menggeser beberapa pasangan, sebesar −119, −120, −61, −70, dan −10 unit.](diagram:kerning-tracking)

Perhatikan ketiga baris itu. Tracking (jingga) memperbesar semua celah, sehingga celah bermasalah di
sekitar `V` tetap terlalu besar dibanding yang lain. Kerning (angka di baris terakhir) hanya
menggeser pasangan yang membutuhkannya, sehingga katanya menjadi rata.

## Pasangan kerning

*[Kerning pair](/reference/glossary/#kerning-pair)* (pasangan kerning) adalah dua glyph dalam urutan
tetap, ditambah satu angka:

- glyph **pertama** (kiri), misalnya `A`;
- glyph **kedua** (kanan), misalnya `V`;
- **nilainya**, dalam unit font.

Nilai itu mengubah advance width glyph pertama, tetapi hanya bila glyph kedua mengikutinya.

- Nilai **negatif** merapatkan pasangan. Kebanyakan kerning bernilai negatif: `AV −119`, `To −80`.
- Nilai **positif** merenggangkan pasangan. Ini lebih jarang dibutuhkan, yaitu untuk pasangan yang
  bentuknya akan bertabrakan, misalnya `f` yang diikuti kurung tutup atau tanda tanya, atau
  descender yang menabrak huruf berikutnya.

![A dan V dari Source Serif: tanpa kerning ada celah besar di bagian atas huruf; dengan kerning −119, V bergeser ke bawah A dan celahnya setara dengan bagian kata yang lain.](diagram:kerning-av-pair)

Urutan itu penting: `AV` dan `VA` adalah dua pasangan berbeda, dan masing-masing butuh nilainya
sendiri (meskipun untuk huruf simetris seperti ini nilainya sering mirip).

### Pasangan yang butuh kerning

Pasangan butuh kerning bila sisi yang berhadapan bentuknya sangat berbeda dari batang lurus yang
menjadi dasar pengaturan spasi. Tersangka yang biasa:

| Jenis bentuk | Pasangan khas |
|---|---|
| Diagonal bertemu diagonal | `AV`, `VA`, `AW`, `AY`, `AT` |
| Atap yang menjorok | `To`, `Ta`, `Te`, `Ty`, `Fa`, `Pa`, `Yo`, `Vo`, `Wo` |
| Bagian bawah terbuka | `LT`, `LV`, `LY`, `L’` |
| Tanda baca | `T.`, `V,`, `Y.`, `P.`, `r.`, `“A`, `A”` |
| Bulat bertemu diagonal | `OA`, `AO`, `OV`, `ov`, `vo`, `yo` |

Kata yang bagus untuk menguji kerning:

- `AVATAR`, `WAVE`, `VALVE` untuk diagonal huruf kapital;
- `To`, `Ty`, `Tw`, `Yo`, `Wo`, `Fa` untuk huruf kapital yang diikuti huruf kecil;
- `LT`, `LTA`, `ATLAS` untuk bentuk terbuka;
- `"Tom."`, `"Yes,"` untuk tanda kutip dan tanda baca.

:::tip
Susun kata uji dalam huruf kapital, huruf kecil, dan campuran. Banyak masalah hanya muncul di salah
satunya. Pasangan huruf kecil yang diikuti huruf kapital (`aV`) jarang muncul di teks sungguhan,
dan kebanyakan font tidak mengaturnya.
:::

## Grup kerning

Font Latin beraksen dengan mudah berisi 200 huruf. Bila Anda harus mengatur `A` terhadap `V`, lalu
`Á` terhadap `V`, `Â` terhadap `V`, `Ä` terhadap `V`, lalu semuanya terhadap `W` dan `Y` juga, Anda
tidak akan pernah selesai. *[Kerning group](/reference/glossary/#kerning-group)* (grup kerning,
juga disebut kelas kerning) menyelesaikan masalah ini.

Grup kerning adalah sekumpulan glyph yang bentuk salah satu sisinya sama. `A`, `Á`, `À`, `Â`, `Ä`,
`Ã`, dan `Å` punya sisi kanan yang sama (aksennya duduk di atas dan tidak mengubah sisi itu).
Masukkan semuanya ke satu grup, atur kerning **grup** itu terhadap `V` sekali, dan semuanya ikut.

![Grup kerning @A berisi A, Á, Â, dan Ä; satu nilai kerning terhadap V (−119) berlaku untuk keempat pasangan.](diagram:kerning-groups)

### Sisi kiri dan sisi kanan

Setiap glyph bisa masuk ke dua grup, satu untuk tiap sisi, karena sisi kiri dan kanannya bisa
berbeda (sisi kiri `D` lurus seperti `H`, sisi kanannya bulat seperti `O`):

- **Grup glyph pertama** dipakai bila glyph itu menjadi glyph *pertama* sebuah pasangan. Yang
  penting saat itu adalah tepi **kanan** glyph. Dalam format font UFO, grup ini disebut `kern1`.
- **Grup glyph kedua** dipakai bila glyph itu menjadi glyph *kedua* sebuah pasangan. Yang penting
  saat itu adalah tepi **kiri**-nya. Grup ini disebut `kern2`.

Sebuah glyph hanya boleh masuk satu grup per sisi. FontEasy menampilkan grup dengan tanda `@` di
depan namanya: `@A`, `@O`, `@V`. Jadi pasangan `A @V` berarti "glyph `A` yang diikuti glyph apa
pun dari grup glyph kedua `V`".

### Pengecualian

Kadang satu anggota grup butuh perlakuan berbeda. `T` terhadap grup `@o` (o, ó, ö, …) mungkin
−80, tetapi `T` yang diikuti `ö` bisa menabrak titik umlaut-nya. Saat itu Anda menambah
**pengecualian**: pasangan dua glyph tunggal, `T ö`, dengan nilai sendiri, yang mengalahkan nilai
grupnya.

FontEasy selalu memakai nilai paling spesifik yang ditemukannya untuk sebuah pasangan, aturan yang
sama dengan yang dipakai aplikasi pada font jadi:

1. glyph diikuti glyph (pengecualian, atau pasangan glyph tanpa grup);
2. glyph diikuti grup, atau grup diikuti glyph;
3. grup diikuti grup.

## Kerning di FontEasy

Anda mengatur kerning di baris teks yang sama dengan yang dipakai untuk spasi, di
[editor glyph](/drawing/glyph-editor/), dengan tool **Kerning** dan panel **Kerning**.

![Menu Kerning di FontEasy dengan Jendela Kerning, Grup Kerning…, Grup Otomatis dari Komposit, Kerning Otomatis…, dan Audit Kerning.](screen:g-menu-kerning)

### Jendela Kerning

1. Di Ikhtisar, klik dua kali sebuah glyph untuk membukanya, misalnya `V`.
2. Pilih **Kerning › Jendela Kerning** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>).
3. FontEasy menampilkan panel **Kerning** di dock dan beralih ke tool **Kerning**.
4. Ketik kata uji di bilah **Teks** di atas kanvas, misalnya `AVATAR`.

![Mengatur kerning AVATAR di Source Serif: V sedang diedit, −119 di bawah kanvas adalah kerning A–V, angka 0 menandai pasangan yang dimulai dari V, dan panel Kerning di kanan mendaftar pasangan-pasangan font.](screen:g-kerning)

Nilai setiap pasangan yang dikerning tertulis di bawah kanvas, di antara kedua glyph-nya. Pasangan
yang dimulai dari glyph yang sedang diedit ditandai garis tipis dan selalu ditampilkan, meskipun
nilainya 0.

### Tool Kerning

Tool **Kerning** (<kbd>J</kbd>) tersedia di Mode Sederhana maupun Mode Pro. Petunjuknya merangkum
semuanya: seret glyph untuk mengatur kerning terhadap glyph sebelumnya; tombol panah mengatur
pasangan berikutnya.

**Dengan mouse:**

1. Pilih tool **Kerning** atau tekan <kbd>J</kbd>.
2. Tekan sebuah glyph di baris teks lalu seret ke kiri atau kanan. Ini mengatur kerning glyph itu
   terhadap glyph **sebelumnya**. Glyph sebelumnya menjadi glyph yang sedang diedit, dan glyph yang
   Anda seret mengikuti kursor.
3. Lepaskan saat celahnya sudah pas. Nilai barunya muncul di bawah pasangan itu.

**Dengan keyboard**, untuk langkah yang presisi:

1. Klik glyph **kedua** dari pasangan yang ingin diatur. Dengan tool Kerning, mengeklik sebuah glyph
   memilih pasangan yang dibentuknya dengan glyph sebelumnya: glyph sebelumnya menjadi glyph yang
   sedang diedit.
2. Tekan <kbd>←</kbd> untuk menggeser glyph kedua 1 unit lebih dekat, <kbd>→</kbd> untuk
   menjauhkannya 1 unit. Tombol panah selalu mengatur pasangan yang dimulai dari glyph yang sedang
   diedit.
3. Tahan <kbd>Shift</kbd> untuk menggeser 10 unit sekaligus.

Setiap seretan dan setiap tekanan tombol menjadi satu langkah riwayat. Mengembalikan kerning
sebuah pasangan ke 0 menghapusnya dari daftar.

Warna sebuah nilai menunjukkan asalnya:

- **warna aksen**: nilainya berasal dari grup (pasangan dikerning sebagai grup);
- **jingga**: pengecualian, yaitu pasangan dua glyph tunggal padahal setidaknya salah satunya
  masuk grup;
- **warna teks biasa**: pasangan glyph yang tidak masuk grup.

### Grup atau pengecualian saat mengatur kerning

Saat Anda mengubah sebuah pasangan, FontEasy mengubah entri yang memberi nilai pasangan itu saat
ini. Bila `A` dan `V` masuk grup dan nilainya berasal dari `@A @V`, seretan Anda mengubah pasangan
grup itu, sehingga `ÀV`, `ÄW`, dan setiap anggota lain langsung ikut. Bila pasangan itu belum punya
kerning, nilainya ditulis di tingkat grup bila glyph-nya punya grup.

Untuk membuat **pengecualian** khusus bagi dua glyph ini saja, tahan <kbd>Alt</kbd> sambil menyeret
atau sambil menekan tombol panah. Nilainya berubah jingga.

:::caution
Pengecualian itu ampuh tetapi mudah dipakai berlebihan. Sebelum menambahkannya, tanyakan dulu
apakah grupnya sudah benar. Lima puluh pengecualian untuk satu huruf biasanya berarti huruf itu
masuk grup yang salah.
:::

### Panel Kerning

Panel **Kerning** mendaftar semua pasangan kerning di font. Panel ini ada di dock di samping
**Validasi** dan **Riwayat**; buka dengan **Jendela › Panel › Kerning** bila Anda sempat
menutupnya.

![Panel Kerning dari Mutator Sans: tiga pasangan, T @MMK_R_A −150, V @MMK_R_A −55, dan @MMK_L_A V −60, dengan tombol Grup… dan Grup Otomatis di atasnya.](screen:kerning)

- Baris pertama menyebutkan jumlah pasangan di font (atau yang tersisa setelah difilter).
- Ketik di kotak **Filter: A, @O** untuk mencari pasangan: nama glyph (`A`), grup (`@O`), atau nama
  salah satu anggota grup (mengetik `Aacute` juga menemukan pasangan grupnya).
- Setiap baris menampilkan glyph atau grup pertama, glyph atau grup kedua, dan nilainya. Nama grup
  ditulis dengan warna aksen.
- Seret nilainya ke samping, atau klik lalu ketik, untuk mengubahnya.
- Klik **×** di ujung baris untuk menghapus pasangan.
- Klik nama-nama pasangan untuk menampilkannya di editor dengan tool Kerning.

Bila font belum punya kerning, panel ini menyarankan Anda memakai tool Kerning di editor.

### Membuat grup kerning

1. Pilih **Kerning › Grup Kerning…** (atau klik **Grup…** di panel Kerning).
2. Di bagian atas, pilih sisinya: **Glyph pertama pasangan (kern1)** atau
   **Glyph kedua pasangan (kern2)**.
3. Klik **Tambah Grup**.
4. Ketik nama grup setelah tanda `@`, misalnya `A`, lalu nama-nama glyph anggotanya, dipisahkan
   spasi: `A Aacute Agrave Acircumflex Adieresis Atilde Aring`.
5. Ulangi untuk grup lain dan sisi lainnya.
6. Klik **Terapkan**.

![Dialog Grup Kerning dari Mutator Sans dengan sisi glyph pertama terpilih: grup @MMK_L_A, @comma, @dot, dan @period beserta anggotanya, tombol Tambah Grup, dan Terapkan.](screen:kerngroups)

Untuk menghapus grup, klik **×** di ujung barisnya. Karena sebuah glyph hanya boleh masuk satu grup
per sisi, memasukkan glyph ke grup baru akan mengeluarkannya dari grup lamanya di sisi itu.

### Grup Otomatis dari Komposit

Kebanyakan grup kerning mengikuti aturan sederhana: huruf beraksen dikerning seperti huruf
dasarnya. FontEasy bisa membuat grup-grup itu dari
[glyph komposit](/reference/glossary/#composite-glyph) Anda:

1. Pastikan huruf beraksen Anda berupa komposit (dibuat dengan **Glyph › Buat Komposit…**, lihat
   [Komponen dan aksen](/drawing/components/)).
2. Pilih **Kerning › Grup Otomatis dari Komposit**, atau klik **Grup Otomatis** di panel Kerning.

Setiap huruf beraksen bergabung ke grup huruf dasarnya di kedua sisi (`Aacute` dikerning seperti
`A`), dan FontEasy membuat grup huruf dasar itu bila belum ada. Glyph yang sudah punya grup di
suatu sisi tetap di grupnya. Huruf yang aksennya menonjol ke kanan, seperti `ď`, `ľ`, `ť`, `ơ`,
dan `ư`, tidak dimasukkan ke grup glyph pertama, karena tepi kanannya tidak sama dengan huruf
dasarnya. Status bar menyebutkan berapa glyph yang dimasukkan ke grup.

:::tip
Jalankan **Grup Otomatis dari Komposit** sebelum mulai mengatur kerning secara manual, dan jalankan
lagi setelah menambah huruf beraksen baru. Setiap pasangan yang Anda atur sesudahnya akan mencakup
seluruh keluarga aksennya.
:::

## Kerning Otomatis

Mengatur kerning sebuah font secara manual berarti memeriksa ratusan pasangan.
**Kerning › Kerning Otomatis…** menemukan dan mengatur pasangan yang jelas bermasalah untuk Anda
dengan mengukur outline. Fitur ini juga ada di Mode Sederhana, dan langkah
**Kerning pasangan sulit** di **Perjalanan Font** punya tombol **Kerning Otomatis…**.

### Cara kerja Kerning Otomatis

Dengan bahasa sederhana, Kerning Otomatis melakukan apa yang dilakukan mata Anda, tetapi dengan
penggaris:

1. **Setiap glyph diukur sekali.** Glyph dipotong menjadi 64 irisan mendatar yang tipis, dari
   descender sampai ascender, dan dicatat di mana outline mulai dan berakhir di tiap irisan.
   Hasilnya adalah **profil bentuk** tepi kiri dan tepi kanan glyph.
2. **Dua profil diletakkan berdampingan.** Untuk pasangan seperti `A` dan `V`, diukur celah antara
   tepi kanan `A` dan tepi kiri `V` di setiap irisan tempat kedua huruf sama-sama bertinta.
3. **Bukaan yang dalam tidak dihitung penuh.** Ruang di bawah lengan `T` atau di dalam `V` memang
   putih, tetapi mata tidak melihat semuanya sebagai celah. Setiap celah hanya dihitung sampai
   kedalaman tertentu.
4. **Hasilnya dibandingkan dengan ruang putih normal font.** Sasarannya adalah ruang putih yang
   lazim di antara huruf-huruf font Anda (untuk kapital, huruf kecil, dan campuran keduanya),
   dengan pasangan acuan seperti `HH`, `Hn`, dan `nn` bila hurufnya belum cukup banyak untuk
   menilai.
5. **Pasangan digeser menuju sasaran itu**, tetapi hanya sebagian jalan (sesuai **Kekuatan**),
   tidak pernah sampai bentuknya lebih dekat dari jarak minimum, dan dibulatkan ke kelipatan 5 unit.
   Nilai yang sangat kecil dibuang.

Hanya satu glyph per [grup kerning](#grup-kerning) yang diukur, sehingga grup dikerning sebagai
grup.

Kerning Otomatis FontEasy sudah diuji terhadap kerning buatan tangan di font Windows profesional
(Calibri, Segoe UI, Arial, Times New Roman, Verdana). Arah kerning-nya sama untuk sekitar 85%
pasangan yang penting, dan hasilnya sedikit lebih lembut daripada buatan desainer, misalnya untuk
`T`, `Y`, dan `V` yang diikuti huruf kecil.

### Memakai Kerning Otomatis

1. Atur spasi font lebih dulu. Kerning Otomatis memperbaiki pasangan; ia bergantung pada spasi yang
   baik.
2. Jalankan **Kerning › Grup Otomatis dari Komposit** agar huruf beraksen masuk grup.
3. Pilih **Kerning › Kerning Otomatis…**.
4. Pilih glyph mana yang dikerning satu sama lain: **Huruf**, **+ Angka** (huruf dan angka), atau
   **+ Tanda Baca** (huruf, angka, dan tanda baca seperti `. , : ; - ‘ ’ “ ” ( ) ! ?`). Hanya glyph
   yang sudah Anda gambar yang dipakai.
5. Atur **Kekuatan**, dari 0,1 sampai 1,0. Bawaannya 0,4. Kekuatan lebih tinggi menghasilkan
   kerning yang lebih rapat, yang lebih rendah lebih lembut.
6. Lihat kisinya: pasangan-pasangan terkuat ditampilkan sebagaimana nanti tampaknya, lengkap dengan
   nilainya. Nilai berwarna aksen merapatkan; nilai jingga merenggangkan (seperti `qj` atau `fb`).
   Baris di atasnya menyebutkan berapa pasangan yang ditemukan dan berapa yang sudah dikerning.
7. Biarkan **Ganti kerning yang sudah ada (kalau tidak, hanya pasangan baru yang ditambahkan)**
   tidak dicentang agar semua pasangan buatan Anda tetap utuh. Centang hanya bila Anda ingin nilai
   baru dipakai di mana-mana.
8. Klik **Kerning Pasangan Ini**.

![Dialog Kerning Otomatis pada Source Serif: Huruf terpilih, Kekuatan 0.400, 958 pasangan ditemukan, dan kisi pasangan seperti AV −80, VA −75, LT −50, dan qj +55.](screen:autokern)

Status bar melaporkan berapa pasangan yang diatur. Semuanya menjadi satu langkah riwayat, jadi satu
kali <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkan semuanya.

:::caution[Periksa hasilnya]
Kerning Otomatis mengukur bentuk; ia tidak membaca. Setelahnya, telusuri kata-kata uji Anda dengan
tool Kerning dan perbaiki yang tampak salah. Beri perhatian khusus pada `T`, `V`, `W`, dan `Y` yang
diikuti huruf kecil, yang sering butuh sedikit lebih rapat, dan pada tanda baca.
:::

Beberapa pengaturan Kerning Otomatis (kedalaman bukaan, jarak minimum, nilai terkecil yang
disimpan, dan glyph acuan) tidak ada di dialog. Anda bisa mengubahnya lewat skrip; lihat
[Scripting](/power/scripting/).

## Audit Kerning

Daftar kerning bertambah panjang seiring waktu dan ikut mengumpulkan kesalahan. **Audit Kerning**
memeriksa semuanya sekaligus. Audit ini bagian dari **Font › Periksa Font…** (<kbd>F7</kbd>), dan
**Kerning › Audit Kerning** (Mode Pro) hanya menjalankan bagian kerning-nya.

| Pemeriksaan | Artinya |
|---|---|
| Kerning glyph yang tidak ada | Pasangan menyebut glyph atau grup yang tidak ada, jadi tidak berpengaruh apa pun. |
| Anggota grup tidak ada | Sebuah grup mencantumkan glyph yang tidak ada. |
| Glyph di dua grup | Sebuah glyph masuk dua grup di sisi yang sama; seharusnya hanya satu. |
| Pengecualian yang tidak mengubah apa pun | Pengecualian bernilai sama dengan grupnya. |
| Kerning nol | Pasangan dikerning 0 dan tidak mengalahkan apa pun. |
| Kerning sangat besar | Nilai lebih dari 30% em, biasanya salah ketik. |
| Kerning membuat glyph bertabrakan | Dengan kerning ini, kedua bentuk saling bertumpuk. |

Pemeriksaan tabrakan memakai profil bentuk yang sama dengan Kerning Otomatis. Sebuah pasangan
dilaporkan bila kerning membuat kedua outline bertumpuk lebih dari 1% em. Bentuk yang memang
sengaja bersentuhan tanpa kerning tidak dilaporkan, dan untuk pasangan grup, yang disebut adalah
anggota dengan tumpukan terbesar.

![Audit Kerning pada Source Serif: panel Periksa Font menampilkan bagian Kerning dengan tiga peringatan, misalnya kerning T o (−900) membuat keduanya bertumpuk 623 unit.](screen:kerningaudit)

1. Pilih **Kerning › Audit Kerning**.
2. Panel **Periksa Font** terbuka di bagian bawah, hanya dengan bagian **Kerning**.
3. Klik sebuah temuan untuk melompat ke sana: pasangan dibuka di editor dengan tool Kerning, grup
   membuka dialog Grup Kerning.
4. Banyak temuan punya tombol **Perbaiki** (misalnya untuk menghapus pasangan nol atau pengecualian
   yang tidak berguna), dan **Perbaiki Semua** memperbaiki setiap temuan yang bisa diperbaiki.
   Masing-masing menjadi satu langkah riwayat.

Bab [Pemeriksaan kualitas](/production/quality/) menjelaskan panel Periksa Font selengkapnya.

## Seberapa banyak kerning yang cukup

Tidak ada angka pasti, tetapi pedoman ini membantu:

- **Beberapa ratus pasangan** dengan grup adalah jumlah yang lazim untuk font teks Latin yang
  spasinya baik. Ribuan pasangan sering berarti spasinya perlu dibenahi.
- **Atur pasangan yang akan dijumpai pembaca.** `To`, `Ty`, `Yo`, dan `AV` muncul di kata
  sungguhan; `qQ` tidak.
- **Nilai kecil tidak berarti.** Pasangan yang dikerning 5 unit dari 1.000 tidak terlihat di ukuran
  teks. Karena itulah Kerning Otomatis membuangnya.
- **Jangan mengatur kerning sampai huruf bersentuhan.** Dua huruf yang dikerning harus tetap tampak
  punya ruang putih yang sama dengan bagian kata lainnya, bukan lebih sedikit.
- **Font display butuh lebih banyak.** Judul besar memperlihatkan setiap celah, jadi font untuk
  ukuran besar biasanya dikerning lebih teliti daripada font untuk teks kecil.

## Kerning di font jadi

Anda tidak menulis kode apa pun untuk kerning. Saat font dikompilasi (untuk Pratinjau, untuk
**Uji Font di Browser**, atau untuk ekspor), compiler membangun fitur OpenType `kern` dari pasangan
dan grup Anda. Di daftar Fitur, fitur ini ditandai **dibuat**; lihat
[Fitur OpenType](/opentype/features/). Saat Anda membuka font TTF atau OTF, FontEasy membaca
kembali kerning-nya menjadi pasangan dan grup, sehingga Anda bisa menyuntingnya seperti kerning
buatan sendiri.

## Tips dan kesalahan umum

- **Spasi dulu, kerning kemudian.** Bila Anda mendapati diri mengatur kerning `nn` atau `oo`,
  spasinya yang salah.
- **Buat grup sebelum mengatur kerning.** Mengatur kerning glyph demi glyph lalu baru membuat grup
  akan meninggalkan tumpukan pengecualian yang berantakan.
- **Periksa kedua urutan.** `AV` dan `VA` adalah pasangan yang berbeda.
- **Lihat Pratinjau di ukuran baca.** Kerning yang tampak pas di 300 poin bisa tampak terlalu rapat
  di 12 poin.
- **Simpan teks uji Anda.** Ketik sebaris panjang kata uji di panel **Pratinjau** dan biarkan di
  sana selama Anda bekerja.

:::caution[Kerning tidak bisa memperbaiki spasi yang buruk]
Bila sebuah huruf tampak terlalu jauh dari *semua* tetangganya, ubah sidebearing-nya, bukan
kerning-nya. Kerning yang berulang untuk satu huruf terhadap semua huruf lain sebenarnya adalah
masalah spasi yang menyamar.
:::

## Bila ada yang tidak beres

- **Menyeret dengan tool Kerning malah menggeser tampilan.** Anda menekan glyph pertama di baris,
  yang tidak punya glyph sebelumnya, atau menekan ruang kosong. Tekan glyph kedua dari pasangan itu.
- **Mengubah satu pasangan ikut mengubah pasangan lain.** Pasangan itu dikerning sebagai grup.
  Tahan <kbd>Alt</kbd> untuk membuat pengecualian khusus dua glyph ini.
- **Sebuah pasangan menampilkan nilai jingga yang tidak Anda duga.** Itu pengecualian yang
  mengalahkan nilai grup. Hapus di panel Kerning (tombol **×**) untuk kembali ke nilai grup.
- **Kerning Otomatis tidak menemukan apa pun atau menampilkan error.** Glyph acuan `H` dan `n` harus
  sudah digambar, dan glyph yang dikerning harus punya outline.
- **Audit Kerning melaporkan tabrakan yang memang Anda sengaja.** Sebagian desain memang
  bersentuhan dengan sengaja. Temuan hanyalah saran: Anda boleh membiarkannya.

## Ringkasan

- **Spasi** milik setiap glyph, **kerning** milik pasangan glyph, **tracking** milik pemakai font.
- **Pasangan kerning** terdiri atas glyph pertama, glyph kedua, dan nilai: negatif merapatkan,
  positif merenggangkan.
- **Grup kerning** membuat satu nilai berlaku untuk satu keluarga huruf; grup glyph pertama
  (`kern1`) melihat tepi kanan, grup glyph kedua (`kern2`) melihat tepi kiri. **Pengecualian**
  mengalahkan grup untuk glyph tunggal.
- **Kerning › Jendela Kerning** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>) membuka panel Kerning
  dan tool **Kerning** (<kbd>J</kbd>): seret sebuah glyph, atau pakai tombol panah (dengan
  <kbd>Shift</kbd> untuk 10 unit); tahan <kbd>Alt</kbd> untuk pengecualian.
- **Kerning › Grup Otomatis dari Komposit** mengelompokkan huruf beraksen bersama huruf dasarnya.
- **Kerning › Kerning Otomatis…** mengukur profil bentuk dan mengatur pasangan yang menonjol;
  periksa hasilnya dengan mata.
- **Audit Kerning** menemukan glyph yang hilang, konflik grup, pasangan tak berguna, nilai yang
  sangat besar, dan tabrakan.

## Coba sendiri

1. Buka font yang sudah punya `A`, `V`, `T`, dan `o`. Ketik `AVATAR To` di baris teks, pilih tool
   Kerning, lalu atur `AV`, `VA`, `AT`, `TA`, dan `To` dengan mata. Setelah itu buka panel Kerning
   dan temukan pasangan-pasangan Anda dengan filter.
2. Pastikan huruf kapital beraksen Anda berupa komposit, jalankan **Kerning › Grup Otomatis dari
   Komposit**, lalu ketik `ÁVÄTAR` di baris teks. Huruf beraksen kini seharusnya dikerning persis
   seperti `A`. Lalu jalankan **Kerning › Kerning Otomatis…** dengan Kekuatan 0,4 dan bandingkan
   nilainya dengan nilai Anda.
