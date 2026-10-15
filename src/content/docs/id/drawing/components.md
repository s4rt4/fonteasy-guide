---
title: Komponen dan Komposit
description: Pakai ulang bentuk yang sudah Anda gambar, dan buat huruf beraksen seperti é, ñ, dan ü dari huruf dasar dan aksen dalam satu langkah.
---

Perhatikan huruf **á à â ä ã å**. Semuanya memakai **a** yang sama. Di dalam font, Anda tidak
perlu menggambar **a** itu enam kali. Cukup gambar **a** sekali, gambar tiap aksen sekali, lalu
biarkan FontEasy menyusunnya. Huruf hasil susunan ini disebut *composite glyph* (glyph komposit),
dan potongan-potongan penyusunnya disebut *component* (komponen).

Bayangkan satu set stempel karet. Ada satu stempel untuk **a** dan satu untuk aksen akut. Untuk
mencetak **á**, Anda menekan kedua stempel di kertas, yang satu di atas yang lain. Glyph komposit
bekerja dengan cara yang sama: ia tidak menyimpan salinan bentuknya, hanya catatan "cap **a** di
sini, dan aksennya di sana". Kalau nanti Anda mengukir stempel **a** yang lebih bagus, semua huruf
yang dicetak dengannya ikut berubah.

Cara ini menghemat banyak pekerjaan. Font Latin untuk bahasa-bahasa Eropa Barat dan Tengah butuh
lebih dari seratus huruf beraksen. Dengan komponen, Anda cukup menggambar huruf dasar dan sekitar
selusin aksen, dan FontEasy membuat sisanya dalam hitungan detik. Font Anda juga tetap konsisten:
setiap **é**, **è**, **ê**, dan **ë** memakai **e** yang persis sama, jadi bentuknya tidak mungkin
melenceng satu sama lain.

Dalam bab ini Anda akan mempelajari:

- apa itu komponen dan glyph komposit, dan mengapa keduanya penting;
- cara menambah komponen secara manual, dan cara mengubahnya kembali menjadi outline biasa;
- apa itu *anchor*, dan bagaimana anchor memberi tahu aksen di mana ia duduk;
- cara membuat semua huruf beraksen sekaligus dengan **Buat Komposit…**;
- cara memperbarui komposit setelah Anda mengubah aksen atau huruf;
- aksen apa saja yang dibutuhkan bahasa Indonesia, bahasa daerah, dan bahasa lain.

## Komponen: bentuk yang tetap tertaut

[Glyph](/reference/glossary/#glyph) adalah satu bentuk gambar di font Anda, misalnya **a** atau
**é**. Biasanya glyph terdiri atas [kontur](/reference/glossary/#contour): outline tertutup dari
titik dan kurva yang Anda gambar dengan Pena atau tool bentuk. Glyph juga bisa berisi
[komponen](/reference/glossary/#component). Komponen adalah *rujukan* ke glyph lain yang diletakkan
di posisi tertentu. Ia bukan salinan, melainkan tautan yang hidup.

Glyph yang (seluruhnya atau sebagian) tersusun dari komponen disebut
[glyph komposit](/reference/glossary/#composite-glyph). Glyph **aacute** (á), misalnya, biasanya
terdiri atas dua komponen: glyph **a** dan glyph aksen **acutecomb**.

![Huruf dasar a dengan anchor top, aksen acutecomb dengan anchor _top, dan komposit aacute tempat kedua anchor bertemu.](diagram:components-composite)

Karena komponen adalah tautan, perubahan pada glyph aslinya muncul di setiap glyph yang memakainya.
Kalau Anda membuat lengkung **a** sedikit lebih bulat, **á à â ä ã å ā ă ą** ikut berubah seketika.

![Mengubah huruf dasar a sekali saja mengubah semua komposit yang memakainya: agrave, aacute, acircumflex, dan adieresis.](diagram:components-linked)

:::note
Di editor glyph, komponen digambar dengan warna yang berbeda dari kontur Anda sendiri, jadi Anda
selalu bisa melihat bagian mana yang tautan dan mana yang outline sungguhan. Panel **Info Glyph**
mendaftar komponen glyph yang sedang dibuka di bagian **Komponen**.
:::

### Mengapa komponen layak dipakai

- **Lebih sedikit menggambar.** Gambar huruf dan aksen sekali, lalu pakai ulang sesering Anda mau.
- **Konsisten.** Semua komposit memakai bentuk dasar yang sama persis, jadi tidak ada perbedaan
  kecil antara **é** dan **è**.
- **Mudah diubah.** Perbaiki aksen sekali, dan semua huruf yang memakainya ikut membaik.
- **File lebih kecil.** Komposit hanya menyimpan beberapa angka, bukan seluruh outline.

Komponen tidak hanya untuk aksen. Anda bisa memakai ulang bentuk apa pun, misalnya lengkung **b**
di dalam **p**, atau angka di dalam pecahan. Namun untuk huruf beraksen, sebagian besar pekerjaan
dikerjakan FontEasy, seperti yang akan Anda lihat di bawah.

## Aksen, mark, dan Unicode

Tanda kecil di atas atau di bawah huruf disebut [diakritik](/reference/glossary/#diacritic), atau
singkatnya aksen. Di dalam font, aksen digambar sebagai glyph tersendiri yang disebut
*[mark](/reference/glossary/#mark)* (tanda diakritik).

[Unicode](/reference/glossary/#unicode) (daftar sedunia yang memberi nomor pada setiap karakter)
punya dua jenis karakter aksen:

- **Aksen gabung** (*combining accent*), misalnya `U+0301` COMBINING ACUTE ACCENT. Nama glyph-nya
  biasanya berakhiran `comb`: `acutecomb`, `gravecomb`, `dieresiscomb`, `cedillacomb`. Aksen ini
  tidak punya lebar sendiri dan memang dimaksudkan untuk duduk di atas huruf lain. Bila seseorang
  mengetik **e** lalu `U+0301`, font yang baik menampilkan **é**.
- **Aksen spasi** (*spacing accent*), misalnya `acute` atau `dieresis`: aksen yang berdiri sendiri
  dan punya lebar, seperti tuts mesin tik zaman dulu.

Untuk membuat komposit, FontEasy lebih memilih aksen gabung (`acutecomb`, …). Kalau font Anda hanya
punya aksen spasi, aksen itulah yang dipakai.

Unicode juga tahu bahwa **é** (`U+00E9`) bisa diurai menjadi **e** + `U+0301`. FontEasy memakai
pengetahuan ini untuk menulis *resep* bagi setiap huruf beraksen, sehingga ia tahu bahwa **é**
butuh **e** dan **acutecomb**.

## Anchor: tempat aksen menempel

Bagaimana FontEasy tahu di mana aksen harus diletakkan? Dengan
*[anchor](/reference/glossary/#anchor)* (titik jangkar). Anchor adalah titik bernama di dalam glyph.
Ia bukan bagian dari outline dan tidak pernah tercetak; ia hanya menandai satu tempat.

Anchor selalu berpasangan:

| Di huruf dasar | Di aksen | Dipakai untuk |
|---|---|---|
| `top` | `_top` | aksen di atas, seperti ´ ` ^ ¨ ~ |
| `bottom` | `_bottom` | aksen di bawah, seperti sedila ¸ dan titik bawah |
| `ogonek` | `_ogonek` | kait ogonek pada ą ę į ų |

Aturannya sederhana: aksen digeser sampai anchor `_top`-nya tepat berada di anchor `top` milik
huruf (atau `_bottom` di `bottom`, dan seterusnya). Garis bawah di depan nama berarti "inilah titik
tempat saya ditempelkan".

![Huruf c dengan anchor bottom dan sedila dengan anchor _bottom disatukan sehingga kedua anchor bertemu di ccedilla.](diagram:components-bottom-anchor)

Aksen bisa bertumpuk. Sebuah aksen boleh punya anchor `top` sendiri selain `_top`; aksen kedua lalu
duduk di atas aksen pertama, seperti pada huruf Vietnam **ệ** atau **ǟ**.

### Anchor tidak harus dipasang lebih dulu

Bila sebuah glyph belum punya anchor, FontEasy menghitungnya dari outline dan
*[vertical metrics](/reference/glossary/#vertical-metrics)* (ukuran tinggi) font:

- `top` pada huruf diletakkan di tengah huruf, setinggi
  [x-height](/reference/glossary/#x-height) untuk huruf kecil atau
  [cap height](/reference/glossary/#cap-height) untuk huruf kapital (atau di puncak huruf bila
  hurufnya lebih tinggi, seperti **b**, **d**, **h**, **l**);
- `bottom` di tengah, tepat di [baseline](/reference/glossary/#baseline) (garis dasar);
- `ogonek` di tepi kanan, di baseline;
- pada aksen, `_top` di tengahnya setinggi x-height (atau cap height untuk aksen kapital);
  `_bottom` di tengahnya, di baseline.

Artinya, font yang sudah punya huruf polos dan aksen tetapi sama sekali belum punya anchor tetap
bisa langsung dibuatkan huruf beraksennya. Posisi otomatis ini titik awal yang baik; untuk hasil
terbaik, beberapa anchor akan Anda geser sendiri.

### Menambah dan memindahkan anchor

Ada tiga cara menambah anchor.

1. Buka glyph di editor glyph (klik ganda glyph itu di **Ikhtisar**).
2. Pilih salah satu:
   - **Glyph › Tambah Anchor** menambahkan anchor umum yang belum ada (`top`, `bottom`, dan
     `ogonek` pada huruf vokal, atau `_top` / `_bottom` pada aksen), diletakkan berdasarkan outline.
   - Di panel **Info Glyph**, bagian **Anchor**, klik **Tambah Anchor Umum**.
   - Pilih tool **Anchor** (<kbd>Shift</kbd>+<kbd>A</kbd>) lalu klik di kanvas. Setiap klik
     menambahkan nama umum berikutnya yang belum ada (`top`, lalu `bottom`, …).
3. Untuk memindahkan anchor, seret dengan tool **Anchor**, atau ketik nilai **x** dan **y** baru di
   sebelahnya pada panel **Info Glyph**.
4. Untuk mengganti nama anchor, klik namanya di panel **Info Glyph** dan ketik nama baru. Tombol
   **×** di sebelahnya menghapusnya.

![Tool Anchor dipilih saat mengedit O: petunjuk di atas mengatakan klik untuk menambah anchor dan geser anchor untuk menempatkan aksen.](screen:g-tool-anchor)

**Glyph › Tambah Anchor** juga bekerja di **Ikhtisar**: pilih beberapa glyph lebih dulu, dan anchor
yang belum ada ditambahkan ke semuanya dalam satu langkah undo.

:::tip[Di mana meletakkan anchor top]
Letakkan `top` di tempat aksen tampak berada di tengah *secara optis*, tidak selalu di tengah
matematis. Pada **a** atau **t** yang condong, pusat visualnya sering sedikit ke kanan. Pada huruf
kapital, geser `top` sedikit lebih tinggi bila aksen kapital Anda butuh ruang lebih.
:::

### Anchor juga menempatkan aksen saat mengetik

Anchor punya tugas kedua saat ekspor. FontEasy mengubahnya menjadi fitur OpenType `mark` dan `mkmk`
(aturan penempatan di tabel [GPOS](/reference/glossary/#gpos)). Berkat fitur ini, huruf yang diikuti
aksen gabung tanpa komposit siap pakai, misalnya **q** + `U+0301`, tetap menampilkan aksennya di
tempat yang benar di aplikasi yang mendukung OpenType. Baca lebih lanjut di
[Fitur OpenType](/opentype/features/).

## Menambah komponen secara manual

Kadang Anda ingin menyusun glyph sendiri, misalnya *ligature* (gabungan dua huruf) atau huruf yang
tidak diurai Unicode menjadi beberapa bagian.

1. Buka glyph yang akan diberi komponen.
2. Pilih **Glyph › Tambah Komponen…**. Dialog **Tambah Komponen** terbuka.
3. Ketik nama glyph, misalnya `acutecomb`. Tombol-tombol di bawah kotak menampilkan nama glyph yang
   cocok; klik salah satunya untuk memilih.
4. Klik **Tambah**.

Komponen muncul di titik asal (ujung kiri baseline) dalam keadaan terpilih. Pindahkan dengan tool
**Pilih** atau tombol panah, atau ketik nilai **x** dan **y** di panel **Info Glyph**.

![Mengedit adieresis: huruf dan dua titiknya adalah komponen, digambar dengan warna berbeda, dan panel Validasi mengatakan glyph ini tidak bermasalah.](screen:parts)

Beberapa hal yang berguna:

- Glyph tidak bisa berisi dirinya sendiri. FontEasy menolak dengan pesan "Glyph tidak bisa berisi
  dirinya sendiri."
- Bila Anda mengetik nama yang tidak ada, muncul "Tidak ada glyph bernama …". Buat dulu glyph itu
  (lihat [Set glyph](/drawing/glyph-set/)).
- **Klik ganda sebuah komponen** dengan tool **Pilih** atau **Node** untuk membuka glyph yang
  ditautnya. Di panel **Info Glyph**, klik nama komponen juga melakukan hal yang sama.
- Satu glyph boleh mencampur kontur dan komponen. **R** bisa dibuat dari **P** sebagai komponen
  ditambah kaki yang digambar.

:::caution[Menghapus glyph yang dipakai glyph lain]
Bila Anda menghapus glyph yang dipakai sebagai komponen, komposit yang memakainya kehilangan bagian
itu. Setelah menghapus, FontEasy memberi peringatan ("… glyph masih memakai glyph yang dihapus
sebagai komponen.") dan panel Validasi mendaftarnya sebagai **Komponen dari glyph yang tidak ada**.
Batalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd> bila bukan itu yang Anda mau.
:::

## Mengurai: mengubah tautan menjadi outline

Kadang Anda ingin komposit berhenti mengikuti bagian-bagiannya. Misalnya **ij** dalam bahasa
Belanda harus digambar sebagai satu bentuk yang menyambung, atau Anda ingin mengubah aksen hanya di
**Å**. Untuk itu Anda *mengurai* (*decompose*) komposit: setiap komponen diganti salinan outline-nya.

1. Buka glyph komposit.
2. Untuk mengurai sebagian komponen saja, pilih komponen itu dengan tool **Pilih**. Untuk mengurai
   semuanya, jangan pilih apa pun.
3. Pilih **Glyph › Urai**.

Status bar melaporkan, misalnya, "2 komponen diurai". Glyph itu sekarang berisi kontur biasa yang
bebas Anda edit, dan tidak lagi berubah ketika glyph aslinya berubah.

![Di kiri, aacute sebagai komposit dari dua komponen yang tertaut; setelah Glyph › Urai, huruf yang sama menjadi tiga kontur biasa tanpa tautan.](diagram:components-decompose)

Anda juga bisa mengurai banyak glyph sekaligus: pilih glyph-glyph itu di **Ikhtisar** lalu pilih
**Glyph › Urai**. Komponen di dalam komponen ikut diurai, dan komponen yang dicerminkan tetap punya
arah kontur yang benar.

:::caution
Urai hanya bila memang perlu. Glyph yang sudah diurai tidak ikut perbaikan huruf atau aksen
berikutnya, dan **Perbarui Komposit** tidak bisa lagi menyusunnya ulang.
:::

## Membuat huruf beraksen dengan Buat Komposit

Di sinilah komponen benar-benar bermanfaat. Begitu huruf dasar dan aksen Anda sudah digambar, satu
dialog membuat semua huruf beraksen yang dibutuhkan [set glyph](/reference/glossary/#glyph-set)
Anda.

1. Pastikan huruf dasar (**a**, **e**, **c**, **A**, …) dan aksen (`acutecomb`, `gravecomb`,
   `circumflexcomb`, `dieresiscomb`, `tildecomb`, `cedillacomb`, …) sudah digambar.
2. Pilih **Glyph › Buat Komposit…** (atau **Alat › Wizard › Wizard Komposit Otomatis…**, yang
   membuka dialog yang sama).
3. Di **Karakter**, pilih karakter yang ingin dipertimbangkan: **Semua set glyph**, atau satu set
   seperti **Latin-1 Suplemen** atau **Latin Lanjutan-A**.
4. Baca daftarnya. Setiap baris adalah resep yang bisa dibuat FontEasy saat ini.
5. Klik **Buat**.

![Dialog Buat Komposit: Karakter diatur ke Semua set glyph, 14 resep seperti aacute = a + acutecomb@top | 00E1 siap dibuat, dan 559 lainnya butuh glyph lain digambar dulu.](screen:composites)

Status bar menyebutkan berapa glyph komposit yang dibuat, misalnya "14 glyph komposit dibuat".
Glyph baru muncul di **Ikhtisar** lengkap dengan nilai Unicode-nya, siap diketik.

### Membaca resep

Setiap baris berbentuk seperti ini:

```text
aacute = a + acutecomb@top | 00E1
```

- `aacute` adalah [nama glyph](/reference/glossary/#glyph-name) yang baru;
- `a` adalah glyph dasar, diletakkan di titik asal;
- `acutecomb@top` berarti: tambahkan `acutecomb` sehingga anchor `_top`-nya duduk di anchor `top`;
- `00E1` adalah [code point](/reference/glossary/#code-point) Unicode (á) yang diberikan pada glyph.

Aksen tambahan disambung dengan `+` lagi, misalnya `uni0344 = dieresiscomb + acutecomb@top`.
Aksen tanpa `@anchor` ditempelkan ke `top`.

Anda boleh mengubah resepnya sebelum mengklik **Buat**: hapus baris yang tidak diinginkan, atau
ganti nama glyph. Baris yang diawali `#` diabaikan.

### Huruf yang belum bisa dibuat

Di bawah daftar resep, ada baris seperti "559 lainnya butuh glyph lain digambar dulu" yang bisa
dibuka. Isinya daftar huruf yang tertahan beserta apa yang **kurang**, misalnya
`ecaron — kurang: caroncomb`. Gambar glyph yang kurang itu, lalu buka **Buat Komposit…** lagi: huruf
tersebut pindah ke daftar yang siap.

Bila semua huruf beraksen sudah ada, dialog mengatakan "Tidak ada yang bisa dibuat: semua huruf
beraksen yang dibutuhkan set ini sudah ada, atau belum bisa dibuat dari glyph yang ada."

### Pilihan cerdas yang dibuat FontEasy

Resepnya mengikuti kebiasaan para desainer huruf, bukan sekadar aturan Unicode:

- **i** dan **j** kehilangan titiknya di bawah aksen atas: **í** dibuat dari `dotlessi` (ı) +
  `acutecomb`, bila font Anda punya i tanpa titik.
- Huruf kapital memakai aksen `.case` bila ada (`acutecomb.case`): aksen yang lebih pipih, khusus
  untuk kapital.
- Huruf Latvia **ģ ķ ļ ņ ŗ** mendapat koma di bawah, bukan sedila.
- **ď ľ ť Ľ** mendapat caron kecil tegak di sisi kanan.
- Aksen bertumpuk (bahasa Vietnam, **ǟ**) duduk di atas aksen sebelumnya.
- Glyph placeholder kosong dari template (misalnya **adieresis** yang masih kosong) ikut diisi.

Glyph yang sudah ada hanya disusun ulang bila masih kosong atau memang sudah komposit. Glyph yang
Anda gambar sendiri tidak pernah ditimpa.

:::note[Variable font]
Bila font Anda punya beberapa *[master](/reference/glossary/#master)* (gambar induk untuk tiap
ketebalan atau lebar), **Buat** membuat komposit di semua master, masing-masing dari huruf, aksen,
dan anchor milik master itu sendiri. Lihat [Variable font](/advanced/variable/).
:::

## Memperbarui komposit

Komposit otomatis mengikuti komponennya: saat Anda menggambar ulang **a**, setiap **á** langsung
berubah. Namun *posisi* aksen dihitung pada saat komposit dibuat. Bila kemudian Anda menggeser
anchor atau mengubah tinggi aksen, posisi lama tetap dipakai sampai Anda memperbaruinya.

1. Buka sebuah komposit, atau pilih beberapa glyph di **Ikhtisar** (glyph yang bukan komposit
   dilewati saja).
2. Pilih **Glyph › Perbarui Komposit**.

FontEasy membaca kembali resep dari komponen-komponennya dan meletakkan aksen lagi di anchor yang
sekarang. Di editor, status bar mengatakan "Komposit diperbarui." atau "Sudah terbaru.".

:::tip[Urutan kerja yang baik]
1. Gambar huruf dasar dan aksen.
2. Pilih **Glyph › Buat Komposit…** lalu **Buat**.
3. Lihat huruf-huruf beraksen di panel **Pratinjau**.
4. Geser anchor yang perlu (di huruf atau di aksen).
5. Pilih semua glyph di **Ikhtisar** (<kbd>Ctrl</kbd>+<kbd>A</kbd>) lalu pilih
   **Glyph › Perbarui Komposit**.
:::

## Aksen untuk bahasa Indonesia dan bahasa lain

Abjad baku bahasa Indonesia (EYD) hanya memakai 26 huruf dasar tanpa aksen. Jadi font untuk teks
bahasa Indonesia sehari-hari tidak *wajib* punya huruf beraksen. Meski begitu, Anda akan cukup
sering bertemu dengannya:

- **é** dan **è** muncul dalam bahasa Jawa, Sunda, Bali, dan bahasa daerah lain yang ditulis dengan
  huruf Latin, dalam kamus yang menunjukkan lafal (*apél* dan *apel*), dan dalam nama orang.
- Kata serapan dan nama dari bahasa lain: **café**, **Gödel**, **São Paulo**, **Dvořák**.
- Bila Anda berharap font Anda dipakai di luar negeri, set [Latin-1 Suplemen](/drawing/glyph-set/)
  mencakup bahasa Prancis, Jerman, Spanyol, Portugis, Belanda, dan bahasa-bahasa Nordik;
  **Latin Lanjutan-A** menambah bahasa Eropa Tengah seperti Polandia, Ceko, dan Turki;
  **Latin Lanjutan Tambahan** mencakup bahasa Vietnam.

Kabar baiknya: dengan komponen, menambah bahasa-bahasa ini hanya butuh beberapa gambar aksen.
Tabel berikut menunjukkan aksen yang paling banyak gunanya.

| Gambar aksen ini | Nama glyph | Hasilnya, misalnya |
|---|---|---|
| akut ´ | `acutecomb` | á é í ó ú ý ć ń ś ź |
| grave ` | `gravecomb` | à è ì ò ù |
| sirkumfleks ^ | `circumflexcomb` | â ê î ô û |
| diaeresis ¨ | `dieresiscomb` | ä ë ï ö ü ÿ |
| tilde ~ | `tildecomb` | ã ñ õ |
| cincin ˚ | `ringcomb` | å ů |
| sedila ¸ | `cedillacomb` | ç ş |
| caron ˇ | `caroncomb` | č š ž ř ě |
| makron ¯ | `macroncomb` | ā ē ī ō ū |

Untuk huruf kapital, Anda bisa menggambar versi yang lebih pipih (`acutecomb.case`, …); FontEasy
otomatis memakainya untuk huruf kapital.

:::tip[Mode Sederhana]
Di Mode Sederhana, panel **Perjalanan Font** punya langkah **Tambah huruf beraksen** dengan tombol
**Buat…**. Tombol ini membuka dialog **Buat Komposit** yang sama.
:::

## Komposit di font yang Anda buka

Cara komposit masuk bergantung pada file yang Anda buka:

- File **UFO**, **designspace**, dan **.glyphs** mempertahankan komponen dan anchor-nya dengan
  utuh.
- File **TTF** dan **OTF** adalah font jadi. FontEasy mengimpor glyph-glyph-nya sebagai outline
  biasa, jadi huruf beraksen masuk sebagai kontur biasa, bukan komponen yang tertaut.

![Mengedit aacute dari Source Serif 4 yang dibuka dari file OTF: huruf dan aksennya masuk sebagai tiga kontur biasa dengan 75 titik.](screen:g-components)

Bila Anda ingin terus mengerjakan font biner yang diimpor, huruf beraksennya bisa disusun ulang
sebagai komposit sungguhan: hapus glyph beraksen hasil impor (atau kosongkan), pastikan font punya
aksen gabung, lalu pakai **Buat Komposit…**. Baca lebih lanjut di
[Memasukkan karya gambar](/drawing/import-trace/).

## Komponen dan kerning

Komposit juga berguna saat mengatur spasi dan *kerning* (pengaturan jarak antar pasangan huruf).
**Kerning › Grup Otomatis dari Komposit** memasukkan setiap huruf beraksen ke
[grup kerning](/reference/glossary/#kerning-group) huruf dasarnya: **á à â ä** masuk grup **a**,
sehingga pasangan **T a** juga berlaku untuk **T á**. Huruf yang aksennya menonjol ke samping
(**ď ľ ť ơ ư**) tidak dimasukkan untuk sisi itu. Lihat [Kerning](/spacing/kerning/).

## Smart component

FontEasy juga punya *smart component* (komponen pintar): komponen yang bisa memanjang atau berubah
bentuk, misalnya satu batang yang dipakai sebagai tiang beberapa huruf dengan panjang berbeda. Ini
topik lanjutan yang dijelaskan di [Efek gambar](/advanced/drawing-effects/) dan di
[glosarium](/reference/glossary/#smart-component).

## Bila ada yang tidak beres

- **Aksen terlalu tinggi, terlalu rendah, atau tidak di tengah.** Geser anchor di huruf dasar (atau
  `_top` di aksen), lalu pilih **Glyph › Perbarui Komposit**.
- **Semua aksen kapital menabrak hurufnya.** Gambar aksen `.case` yang lebih pipih, atau geser
  `_top` di aksen, lalu jalankan **Buat Komposit…** lagi untuk huruf kapital.
- **Sebuah huruf tidak ada di daftar siap.** Buka daftar "… lainnya butuh glyph lain digambar dulu"
  untuk melihat apa yang kurang. Glyph yang sudah ada tetapi masih kosong dihitung sebagai kurang.
- **Panel Validasi menampilkan "Komponen dari glyph yang tidak ada".** Sebuah komponen merujuk glyph
  yang sudah dihapus atau diganti namanya. Tambahkan lagi glyph itu, atau hapus komponennya di panel
  **Info Glyph**.
- **Mengubah aksen ikut mengubah huruf yang ingin Anda pertahankan.** Begitulah cara tautan
  bekerja. Urai huruf-huruf yang harus berbeda sebelum Anda mengubah aksennya.

## Ringkasan

- Komponen adalah tautan hidup ke glyph lain; glyph komposit tersusun dari komponen.
- Mengubah glyph aslinya mengubah semua komposit yang memakainya.
- Anchor (`top`, `bottom`, `ogonek` di huruf; `_top`, `_bottom`, `_ogonek` di aksen) menentukan
  tempat aksen menempel. FontEasy membuat anchor yang belum ada dari outline.
- **Glyph › Tambah Komponen…** menambah komponen secara manual; **Glyph › Urai** mengubah komponen
  menjadi kontur biasa.
- **Glyph › Buat Komposit…** membuat semua huruf beraksen dari resep seperti
  `aacute = a + acutecomb@top | 00E1`.
- **Glyph › Perbarui Komposit** meletakkan aksen lagi setelah anchor digeser.
- File TTF dan OTF masuk sebagai outline biasa; UFO, designspace, dan .glyphs tetap membawa
  komponennya.

## Coba sendiri

1. Di font baru, gambar **a**, **e**, **o**, dan aksen akut di glyph `acutecomb`. Pilih
   **Glyph › Buat Komposit…**, atur **Karakter** ke **Latin-1 Suplemen**, lalu klik **Buat**. Ketik
   `áéó` di panel **Pratinjau**.
2. Buka **a**, pilih tool **Anchor**, lalu seret anchor `top` sedikit ke kanan. Pilih semua glyph di
   **Ikhtisar**, pilih **Glyph › Perbarui Komposit**, dan lihat **á** berubah di pratinjau. Setelah
   itu, perbesar lengkung **a** dan perhatikan bahwa **á** ikut berubah tanpa perlu diperbarui.
