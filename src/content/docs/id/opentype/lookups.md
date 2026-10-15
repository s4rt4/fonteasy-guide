---
title: Lookup dan Inspektor Shaping
description: Cara menyusun aturan substitusi dan posisi secara visual di tampilan Lookup, dan cara melihat teks dibentuk satu lookup demi satu di Inspektor.
---

Di [bab sebelumnya](/opentype/features/) Anda sudah berkenalan dengan fitur OpenType dan melihat
bagaimana FontEasy menulis fitur-fitur umum dari nama glyph. Di balik setiap fitur ada daftar
aturan: "ganti `a` dengan `a.sc`", "ganti `f i` dengan `f_i`", "geser `V` 50 unit lebih dekat
setelah `A`". Aturan-aturan ini dikelompokkan dalam
*[lookup](/reference/glossary/#lookup)* (kelompok aturan bernama).

Kebanyakan desainer mempelajari lookup dengan menulis kode fitur. FontEasy memberi dua jalan yang
lebih mudah. Tampilan **Lookup** membuat Anda bisa menyusun lookup dari aturan, dengan mengetik nama
glyph di kolom-kolom dan melihat gambar kecil tentang apa yang masuk dan apa yang keluar, tanpa
menulis kode. **Inspektor** menampilkan sebaris teks yang dibentuk satu lookup demi satu, sehingga
Anda bisa melihat persis lookup mana yang mengubah glyph mana. Inilah alat terbaik untuk menjawab
"mengapa ligatur saya tidak muncul?".

Keduanya ada di tab Fitur di Mode Pro.

Dalam bab ini Anda akan mempelajari:

- bagaimana sebuah teks dibentuk, dari karakter ke glyph, ke substitusi, ke posisi;
- apa itu lookup, tujuh jenis yang bisa Anda buat, dan fungsi flag lookup;
- cara menyusun lookup di tampilan Lookup, langkah demi langkah;
- bagaimana FontEasy menulis lookup Anda ke `features.fea`, dan apa yang terjadi bila kodenya
  disunting manual;
- cara memakai Inspektor Shaping untuk melihat apa yang dilakukan setiap lookup.

## Bagaimana teks dibentuk

Saat sebuah aplikasi menampilkan teks dengan font Anda, sebuah program yang disebut *shaper*
mengubah karakter menjadi glyph yang sudah diberi posisi. Inilah
*[shaping](/reference/glossary/#shaping)* (pembentukan teks). Pratinjau FontEasy memakai HarfRust,
versi Rust dari HarfBuzz, shaper yang dipakai kebanyakan browser dan banyak aplikasi.

Shaping berlangsung bertahap:

1. **Karakter menjadi glyph.** Setiap karakter menjadi glyph bawaannya lewat peta karakter font:
   karakter `f` menjadi glyph `f`.
2. **Substitusi.** Lookup di tabel [GSUB](/reference/glossary/#gsub) dijalankan satu per satu,
   untuk fitur-fitur yang sedang aktif. Masing-masing bisa menukar glyph: `f i` menjadi `f_i`.
3. **Posisi.** Lookup di tabel [GPOS](/reference/glossary/#gpos) dijalankan, juga satu per satu.
   Masing-masing bisa menggeser glyph: `V` setelah `A` bergeser lebih dekat.

![Empat tahap shaping untuk teks "fi AV": karakter beserta kode Unicode-nya, glyph bawaan f, i, A, dan V, lookup liga yang menyatukan f dan i menjadi f_i, dan lookup kern yang menggeser V −119 unit lebih dekat ke A.](diagram:lookups-pipeline)

Ada dua hal yang bisa dipetik dari gambar ini. Pertama, **urutan itu penting**: sebuah lookup
melihat glyph dalam keadaan yang ditinggalkan lookup sebelumnya. Kedua, sebuah **fitur** tidak
melakukan apa-apa sendiri; fitur hanya menyatakan lookup mana yang berjalan bila fitur itu aktif.

## Lookup dan aturan

Lookup adalah daftar aturan bernama dari satu jenis. Di FontEasy setiap lookup punya:

- **nama**, terdiri atas huruf, angka, `_`, dan `.`, yang diawali huruf atau `_`;
- **jenis** (salah satu dari tujuh jenis di bawah);
- satu atau beberapa **fitur** yang menjalankannya, berupa tag, misalnya `liga` atau `ss01`;
- **flag** yang menyatakan glyph mana yang dilewati;
- daftar **aturan**.

### Jenis-jenis lookup

![Tujuh jenis lookup dengan contohnya masing-masing: tunggal (a → a.sc), ganda (f_i → f i), alternatif (a → a.alt1 atau a.alt2), ligatur (f i → f_i), kontekstual (T o' → o.alt), penyesuaian tunggal (a naik 20), dan penyesuaian pasangan (A V −50).](diagram:lookups-kinds)

| Jenis | Aturannya menyatakan | Contoh aturan | Ditulis sebagai |
|---|---|---|---|
| Substitusi Tunggal | satu glyph menjadi glyph lain | `a` → `a.sc` | `sub a by a.sc;` |
| Substitusi Ganda | satu glyph menjadi dua atau lebih | `f_i` → `f i` | `sub f_i by f i;` |
| Substitusi Alternatif | satu glyph, beberapa pilihan alternatif | `a` dari `a.alt1 a.alt2` | `sub a from [a.alt1 a.alt2];` |
| Substitusi Ligatur | dua glyph atau lebih menjadi satu | `f i` → `f_i` | `sub f i by f_i;` |
| Substitusi Kontekstual | glyph diganti hanya di dekat glyph lain | sebelum `T`, glyph `o` → `o.alt` | `sub T o' by o.alt;` |
| Penyesuaian Tunggal | satu glyph digeser (x, y, advance) | `a`: y 20 | `pos a <0 20 0 0>;` |
| Penyesuaian Pasangan | pasangan dirapatkan atau dijauhkan | `A` `V` −50 | `pos A V -50;` |

Lima jenis pertama termasuk GSUB, dua terakhir GPOS. Lookup Penyesuaian Pasangan adalah kerning yang
ditulis sebagai lookup: ia menambah pasangan kerning dari bab [Kerning](/spacing/kerning/), bukan
menggantikannya.

### Slot: satu glyph, kelas, atau daftar

Setiap kolom dalam aturan adalah sebuah **slot**. Anda bisa mengetik:

- satu nama glyph: `a`;
- kelas dari kode fitur Anda: `@lowercase`;
- beberapa glyph dalam kurung siku: `[a b c]`.

Substitusi Tunggal dengan `[a b c]` → `[a.sc b.sc c.sc]` mengganti setiap glyph di daftar pertama
dengan glyph di posisi yang sama di daftar kedua, jadi kedua daftar harus punya jumlah glyph yang
sama.

### Flag lookup

Flag menyuruh lookup melewati glyph tertentu, seolah-olah glyph itu tidak ada:

- **Lewati mark**: abaikan aksen gabung (*combining mark*). Ligatur `f i` tetap terbentuk meskipun
  ada aksen di antara kedua huruf.
- **Lewati ligatur**: abaikan glyph ligatur.
- **Lewati glyph dasar**: abaikan huruf biasa (berguna untuk aturan yang hanya bekerja pada aksen).
- **Kanan ke kiri**: untuk sambungan kursif pada aksara yang ditulis dari kanan ke kiri, seperti
  Arab.

Font Latin pertama jarang membutuhkan flag. Biarkan mati kecuali Anda tahu memerlukannya.

## Tampilan Lookup

1. Pilih **Fitur › Fitur** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>).
2. Pastikan Anda di Mode Pro (**Jendela › Mode Pro**).
3. Di bagian atas tab Fitur, klik **Lookup**.

![Tampilan Lookup pada Mutator Sans: daftar di kiri berisi closedS, narrowI, ijLigature, tightAV, dan draft yang belum selesai; di kanan lookup narrowI, sebuah Substitusi Kontekstual untuk calt, dengan dua aturan yang mengubah I dan J menjadi bentuk sempit bila berdampingan.](screen:lookups)

Tampilan ini punya dua bagian.

**Di kiri, daftar lookup**, sesuai urutan dijalankan. Setiap baris menampilkan nama, jenis, dan
fiturnya, serta lencana status:

- **aktif**: lookup sudah lengkap dan ditulis ke font;
- **belum selesai**: ada yang kurang atau salah, jadi lookup disimpan tetapi belum ditulis ke font;
- **di kode**: kodenya sudah disunting manual (lihat [Menyunting kode secara manual](#menyunting-kode-secara-manual));
- **mati**: lookup dimatikan dan tidak ditulis ke font.

**Di kanan, lookup yang dipilih**: **Nama**, **Jenis**, **Fitur**, flag, dan **Aturan**-nya.

### Menyusun sebuah lookup

Sebagai contoh, berikut sebuah stylistic set yang menukar `S` dengan gambar alternatif `S.closed`:

1. Gambar glyph alternatifnya dan beri nama, di sini `S.closed`.
2. Di tampilan Lookup, klik **+ Baru** lalu pilih **Substitusi Tunggal**.
3. Lookup baru muncul dengan nama seperti `single1`, satu aturan kosong, dan fitur `ss01`. Ketik
   nama yang lebih jelas di **Nama**, misalnya `closedS`.
4. Di aturannya, ketik `S` di kolom pertama dan `S.closed` di kolom kedua. Gambar kecil kedua glyph
   muncul setelah kolom-kolom itu, dengan panah di antaranya.
5. Periksa kolom **Fitur**. Untuk memakai fitur lain, ketik tag-nya, atau klik **Tambah Tag** lalu
   pilih dari daftar (setiap tag ditampilkan bersama namanya).
6. Lencana di daftar berubah menjadi **aktif**.

Sekarang ketik `S` di Pratinjau, lalu nyalakan `ss01` di deretan tag fiturnya: `S` pun berubah.

Setiap lookup baru dimulai dengan fitur yang cocok untuk jenisnya: `liga` untuk ligatur, `calt`
untuk substitusi kontekstual, `salt` untuk alternatif, `ccmp` untuk substitusi ganda, `kern` untuk
kedua jenis posisi, dan `ss01` untuk substitusi tunggal. Ubah kapan saja Anda mau.

### Aturan untuk setiap jenis

Kolom-kolom sebuah aturan berubah sesuai jenisnya:

- **Substitusi Tunggal**: glyph, panah, penggantinya.
- **Substitusi Ganda**: satu glyph, panah, glyph-glyph hasilnya (dipisah spasi).
- **Substitusi Alternatif**: glyph, kata **dari**, alternatif-alternatifnya (dipisah spasi).
- **Substitusi Ligatur**: glyph-glyph (dipisah spasi), panah, ligaturnya.
- **Substitusi Kontekstual**: tiga kolom, **sebelum**, **glyph**, dan **sesudah**, lalu panah dan
  penggantinya. Hanya **glyph** yang diganti; **sebelum** dan **sesudah** adalah konteks dan boleh
  dibiarkan kosong.
- **Penyesuaian Tunggal**: glyph, lalu **x**, **y**, dan **advance**, yaitu jumlah unit untuk
  menggesernya ke samping, ke atas, dan untuk menambah lebarnya.
- **Penyesuaian Pasangan**: glyph kiri, glyph kanan, dan nilainya (negatif berarti merapat).

Klik **+ Tambah Aturan** untuk aturan berikutnya, dan **×** di ujung aturan untuk menghapusnya. Di
bawah aturan-aturan, sebuah pengingat menjelaskan slot: ketik nama glyph; `@nama` untuk kelas dari
kode fitur; `[a b c]` untuk beberapa glyph sekaligus.

### Substitusi kontekstual

Aturan kontekstual adalah tempat tampilan Lookup paling membantu, karena aturan inilah yang paling
sulit ditulis manual. Tangkapan layar di atas menunjukkan salah satunya: di font Mutator Sans, dua
`I`, atau `I` dan `J` yang berdampingan tampak terlalu berat, jadi di situ dipakai bentuk sempit.

1. Klik **+ Baru** lalu pilih **Substitusi Kontekstual**. Beri nama `narrowI`. Fiturnya `calt`, yang
   dinyalakan aplikasi secara bawaan.
2. Di aturan pertama, ketik `[I J]` di **sebelum**, `I` di **glyph**, biarkan **sesudah** kosong,
   lalu ketik `I.narrow` sebagai penggantinya. Bacanya: "`I` setelah `I` atau `J` menjadi
   `I.narrow`".
3. Klik **+ Tambah Aturan**. Biarkan **sebelum** kosong, ketik `J` di **glyph**, `I` di **sesudah**,
   dan `J.narrow` sebagai pengganti: "`J` sebelum `I` menjadi `J.narrow`".
4. Ketik `VAVIIJ` di Pratinjau untuk melihat hasilnya.

### Urutan, memindah, dan menghapus

Lookup dijalankan dari atas daftar ke bawah. Tombol di kanan atas editor mengubahnya:

- panah **atas** (**Jalankan lebih awal**) memindahkan lookup ke atas;
- panah **bawah** (**Jalankan lebih akhir**) memindahkannya ke bawah;
- **×** (**Hapus lookup ini**) menghapusnya.

Setiap perubahan menjadi satu langkah riwayat; <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkannya.

### Lookup yang belum selesai

Lookup yang tidak akan bisa dikompilasi tidak ditulis ke font, sehingga ia tidak pernah merusak
font Anda selama masih dikerjakan. FontEasy menyimpannya di daftar dengan lencana **belum selesai**
dan menampilkan apa yang salah di bawah aturan-aturannya, misalnya:

- sebuah aturan kosong, atau penggantinya belum diisi;
- nama glyph tidak ada (`there is no glyph`);
- jumlahnya tidak cocok (daftar 2 glyph tidak bisa menjadi 3);
- nama atau tag fiturnya tidak sah (tag paling banyak empat huruf atau angka).

Di bawah daftar masalah itu, sebuah catatan menyatakan bahwa sampai semuanya diperbaiki, lookup
tidak ditulis ke font.

### Melihat kode dan lookup hasil kompilasi

Di bagian bawah editor ada dua bagian yang bisa dibuka:

- **Kode fitur** menampilkan kode FEA yang ditulis FontEasy untuk lookup ini.
- **Semua lookup di font hasil kompilasi** mendaftar setiap lookup di font sebagaimana terakhir
  dikompilasi: lookup visual, lookup yang ditulis manual, dan lookup buatan compiler, seperti
  kerning dan posisi tanda. Setiap baris menampilkan tabel dan indeksnya (`GSUB 0`, `GPOS 1`),
  jenisnya, fiturnya, dan jumlah subtabelnya.

## Bagaimana lookup ditulis ke font

FontEasy menyimpan lookup Anda sebagai data di dalam font (di lib UFO) dan menulis masing-masing ke
`features.fea` sebagai **blok otomatis**, sama seperti fitur otomatis di bab sebelumnya:

```fea
# automatic lookup:smallcaps 1a2b3c4d
lookup smallcaps {
    sub a by a.sc;
} smallcaps;

feature smcp {
    lookup smallcaps;
} smcp;
# end automatic lookup:smallcaps
```

Lookup didefinisikan sekali, lalu setiap fiturnya menjalankannya. Flag menjadi baris `lookupflag` di
awal lookup. Lookup visual ditempatkan setelah fitur otomatis lainnya, sesuai urutan di daftar.

Karena hasilnya berupa kode fitur biasa di `features.fea`, font dibangun dengan hasil yang sama di
alat lain seperti fontmake, meskipun alat itu tidak tahu apa-apa tentang tampilan Lookup FontEasy.

### Menyunting kode secara manual

Anda bisa membuka tampilan Kode dan mengubah kode sebuah lookup visual secara langsung. FontEasy
lalu memperlakukannya seperti blok otomatis lain yang Anda sunting: Anda telah **mengambil alih**
lookup itu. Sejak saat itu:

- kode yang Anda tulislah yang masuk ke font, bukan aturan di tampilan Lookup;
- lookup mendapat lencana **di kode**, dan FontEasy tidak menuliskannya untuk kedua kali;
- editor menampilkan catatan bahwa kodenya sudah disunting manual, dan tombol **Pakai Aturan Ini**.

Klik **Pakai Aturan Ini** untuk kembali: FontEasy menghapus kode buatan tangan untuk lookup itu dan
menuliskannya lagi dari aturan di tampilan Lookup.

:::caution
**Pakai Aturan Ini** membuang perubahan yang Anda buat pada kode lookup itu. Bila ingin
menyimpannya, salin dulu kodenya ke tempat lain, atau ulangi perubahan itu sebagai aturan.
:::

## Inspektor Shaping

**Inspektor** menampilkan teks yang dibentuk langkah demi langkah: mula-mula karakter yang diubah
menjadi glyph, lalu satu kartu untuk setiap lookup yang mengubah sesuatu. Inspektor bekerja pada
font yang dikompilasi untuk Pratinjau, sehingga ia melihat semua lookup: otomatis, visual, buatan
tangan, dan buatan compiler.

1. Pilih **Fitur › Fitur** lalu klik **Inspektor** di bagian atas.
2. Ketik teks di kolom **Teks**. Awalnya berisi teks dari Pratinjau.
3. Nyalakan atau matikan fitur di panel **Pratinjau**: Inspektor mengikuti sakelarnya (catatan di
   samping kolom mengingatkan Anda). Di [variable font](/advanced/variable/), Inspektor juga
   menampilkan posisi di ruang desain yang dipilih dengan slider di panel **Variasi**.

![Inspektor pada Mutator Sans dengan teks VAVIIJ: kartu pertama menunjukkan karakter yang menjadi glyph, kartu kedua lookup calt (GSUB 1, Substitusi Kontekstual Berantai) yang mengganti satu I dengan I.narrow, kartu ketiga lookup kern (GPOS 0, Penyesuaian Pasangan) yang mengubah advance V dan A, dan catatan bahwa 3 lookup lain tidak mengubah apa pun.](screen:inspector)

Baca kartu-kartunya dari atas ke bawah:

- Kartu pertama, **Karakter menjadi glyph**, menampilkan glyph bawaan setiap karakter.
- Setiap kartu berikutnya menyebut tabel dan indeks sebuah lookup, jenisnya, dan fitur yang
  menjalankannya, misalnya `GSUB 1 · Substitusi Kontekstual Berantai` dengan `calt`.
- Setiap glyph tampil sebagai kotak kecil berisi nama dan advance width-nya. Bila lookup
  menggesernya, offset-nya menyusul dalam kurung, misalnya `(+0, +20)`. Glyph yang diubah lookup itu
  disorot.
- Di bawah kotak-kotak itu, teksnya digambar sebagaimana tampak setelah langkah tersebut.
- Di akhir, sebuah baris menyebutkan berapa lookup lain yang tidak mengubah apa pun di teks ini.

Klik judul sebuah kartu untuk menyorotnya sambil membandingkannya dengan kartu lain. Arahkan kursor
ke kotak glyph untuk melihat nomor glyph dan *cluster*-nya (karakter teks asal glyph itu).

Selama tahap substitusi, posisi belum diterapkan, jadi glyph duduk pada advance width polosnya.
Pergeseran posisi baru tampak di kartu GPOS.

### Menemukan masalah dengan Inspektor

Inspektor menjawab pertanyaan yang sulit dijawab dengan cara lain:

- **"Ligatur saya tidak muncul."** Cari kartu lookup ligaturnya. Bila tidak ada, lookup itu tidak
  mengubah apa pun: mungkin fiturnya mati di Pratinjau, atau lookup sebelumnya sudah mengganti salah
  satu glyph-nya (misalnya `locl` yang mengubah `i` menjadi `i.loclTRK`).
- **"Alternatif yang salah yang muncul."** Cari kartu pertama tempat glyph itu berubah; lookup itulah
  penyebabnya.
- **"Kerning tidak berlaku untuk small caps saya."** Lihat kartu GPOS: bila lookup kern mengubah
  `A V` tetapi tidak `A.sc V.sc`, glyph-glyph itu butuh kerning sendiri.

:::note
Untuk kebanyakan aksara, langkah-langkahnya tampil persis sesuai urutan shaper menjalankannya. Untuk
aksara kompleks seperti Arab atau aksara India, shaper menjalankan sebagian lookup dalam tahap
khusus; lookup itu bisa tampil di tempat yang berbeda di Inspektor.
:::

## Tips dan kesalahan umum

- **Beri nama lookup dengan jelas.** `narrowI` masih menjelaskan fungsinya berbulan-bulan kemudian;
  `single3` tidak.
- **Satu gagasan per lookup.** Masalah lebih mudah ditemukan di lima lookup kecil daripada di satu
  lookup besar.
- **Perhatikan urutan.** Lookup yang mengganti `i` harus berjalan sebelum ligatur yang mengharapkan
  `i`, atau sesudahnya bila ligaturnya yang harus menang. Pakai **Jalankan lebih awal** dan
  **Jalankan lebih akhir**.
- **Periksa kelas di kode.** Kelas seperti `@lowercase` harus didefinisikan di kode fitur (di
  tampilan Kode) sebelum bisa dipakai sebuah aturan.
- **Kerning tempatnya di alat Kerning.** Pakai lookup Penyesuaian Pasangan hanya untuk kasus khusus;
  pasangan dan grup kerning biasa lebih mudah dikelola di panel Kerning.

:::caution[Lookup yang belum selesai tidak berbuat apa-apa]
Bila sebuah aturan seolah tidak berpengaruh, lihat lencananya di daftar. Lookup yang
**belum selesai** sama sekali tidak ada di font. Perbaiki masalah yang tercantum di bawah
aturan-aturannya.
:::

## Bila ada yang tidak beres

- **Tombol Lookup dan Inspektor tidak ada.** Keduanya hanya ada di Mode Pro. Beralihlah lewat
  **Jendela › Mode Pro**.
- **Inspektor mengatakan font tidak bisa dikompilasi.** Kode fiturnya mengandung error. Buka tampilan
  Kode, perbaiki masalah yang ditampilkan di panel bawah, lalu kembali.
- **Inspektor sejenak menampilkan "Mengompilasi…".** Inspektor menunggu Pratinjau membangun font
  setelah perubahan terakhir Anda. Untuk font besar, ini butuh waktu sebentar.
- **Sebuah lookup berlencana di kode, padahal saya tidak bermaksud menyuntingnya.** Batalkan
  suntingan di tampilan Kode, atau klik **Pakai Aturan Ini**.
- **Lookup-nya aktif, tetapi Pratinjau tidak berubah.** Periksa apakah fiturnya sudah dinyalakan di
  Pratinjau: fitur opsional seperti `ss01` awalnya mati.

## Ringkasan

- Shaping mengubah **karakter menjadi glyph**, lalu menjalankan lookup **GSUB** (substitusi) dan
  lookup **GPOS** (posisi) secara berurutan; fitur menentukan lookup mana yang berjalan.
- Sebuah **lookup** punya nama, jenis, fitur, flag, dan aturan. FontEasy menyusun tujuh jenis:
  substitusi tunggal, ganda, alternatif, ligatur, dan kontekstual, serta penyesuaian tunggal dan
  pasangan.
- Di tampilan **Lookup** (tab Fitur, Mode Pro), klik **+ Baru**, pilih jenis, ketik nama glyph,
  kelas (`@nama`), atau daftar (`[a b c]`) di kolom aturan, dan pilih fitur dengan **Tambah Tag**.
- Lencana menunjukkan statusnya: **aktif**, **belum selesai** (tidak ditulis sampai diperbaiki),
  **di kode** (diambil alih secara manual), **mati**.
- Lookup ditulis ke `features.fea` sebagai blok otomatis; menyunting kodenya berarti mengambil alih,
  dan **Pakai Aturan Ini** mengembalikan versi visualnya.
- **Inspektor** membentuk teks satu lookup demi satu dan menyorot apa yang diubah setiap lookup; ia
  mengikuti sakelar fitur di Pratinjau.

## Coba sendiri

1. Gambar glyph `a.alt` (duplikat `a` lalu ubah). Di tampilan Lookup, tambahkan
   **Substitusi Tunggal** bernama `altA` dengan aturan `a` → `a.alt` dan fitur `ss01`. Ketik `banana`
   di Pratinjau lalu nyalakan dan matikan `ss01`.
2. Buka **Inspektor** dan ketik `fit AV` (atau teks lain yang memuat ligatur dan kerning di font
   Anda). Temukan kartu tempat `f i` menjadi ligatur dan kartu tempat kerning menggeser sebuah glyph.
   Lalu matikan `liga` di Pratinjau dan lihat kartu ligaturnya menghilang.
