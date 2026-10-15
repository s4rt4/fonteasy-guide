---
title: Memperbaiki Masalah Outline
description: Pahami masalah yang ditemukan FontEasy di outline Anda selagi menggambar, lalu perbaiki dengan satu klik atau dengan Hapus Tumpang Tindih dan Perbaiki Arah.
---

Sebuah outline bisa tampak sempurna di layar tetapi tetap menimbulkan masalah di font jadi. Celah
kecil bisa membuat huruf tidak terisi. Kontur yang berjalan ke arah yang salah bisa membuat lubang
berubah menjadi gumpalan hitam di sebagian aplikasi. Dua titik yang saling menumpuk bisa
mengacaukan *hinting* yang membuat teks tajam di layar.

FontEasy memeriksa outline Anda terus-menerus, selagi Anda menggambar. Bila menemukan sesuatu, ia
menandai tempatnya di kanvas, memberi titik kecil pada glyph di **Ikhtisar**, dan mendaftarnya di
panel **Validasi**, dengan penjelasan singkat dan, untuk sebagian besar masalah, tombol
**Perbaiki**.

Anda tidak perlu takut dengan pesan-pesan ini. Sebagian besar beres dengan satu klik, dan sebagian
hanyalah catatan ramah. Bab ini menjelaskan setiap masalah dengan bahasa sederhana, supaya Anda tahu
artinya dan kapan perlu bertindak.

Dalam bab ini Anda akan mempelajari:

- di mana FontEasy menampilkan masalah: di kanvas, di Ikhtisar, dan di panel Validasi;
- arti setiap masalah, dan seberapa serius;
- cara memperbaiki satu masalah, semua masalah di satu glyph, atau semua masalah di font;
- cara memakai **Hapus Tumpang Tindih** dan **Perbaiki Arah** sendiri.

## Tempat masalah ditampilkan

### Di kanvas

Di editor glyph, setiap masalah ditandai dengan cincin kecil berwarna di tempat masalah itu berada.
Arahkan kursor ke cincin itu, dan muncul kotak berisi nama masalah dan penjelasan satu kalimat.

![Mengedit H: palang menumpuk di kedua tiang, empat cincin biru menandai perpotongannya, dan panel Validasi mendaftar Kontur bertumpuk 4 dengan tombol Perbaiki dan Perbaiki Semua.](screen:problems)

**Tampilan › Tampilkan Masalah** menyalakan dan mematikan penanda ini (dan titik di Ikhtisar).

### Di Ikhtisar

Di **Ikhtisar**, glyph yang bermasalah mendapat titik kecil di sudut kanan atas selnya:

- titik **merah** untuk *error*,
- titik **oranye** untuk peringatan.

Catatan (jenis yang paling ringan) tidak mendapat titik. Arahkan kursor ke sebuah sel untuk melihat
masalahnya di tooltip.

![Ikhtisar Nusantara Sans: B bertitik merah, D bertitik oranye, dan panel Validasi mendaftar Kontur terbuka di B, Arah kontur salah di D, dan Kontur bertumpuk di H, masing-masing dengan tombol Perbaiki.](screen:badges)

### Di panel Validasi

Panel **Validasi** biasanya berada di sisi kanan, bersebelahan dengan **Kerning** dan **Riwayat**.
Bila Anda menutupnya, pilih **Jendela › Panel › Validasi**. **Font › Validasi Font** juga
membukanya, menyalakan penanda, dan menampilkan daftar untuk seluruh font.

Isi panel berubah sesuai apa yang sedang Anda kerjakan:

- **Saat mengedit glyph**, panel mendaftar masalah glyph itu, dikelompokkan per jenis, beserta
  jumlahnya. Klik sebuah masalah untuk melompat ke tempatnya di kanvas. Bila tidak ada masalah,
  tertulis "Glyph ini tidak bermasalah."
- **Di Ikhtisar**, panel mendaftar setiap jenis masalah yang ditemukan di font, dengan nama
  glyph-glyph yang mengalaminya. Klik nama glyph untuk memilihnya; klik ganda untuk membukanya. Font
  besar diperiksa sedikit demi sedikit supaya FontEasy tetap lancar; selama itu panel menulis
  "Memeriksa… 118 dari 1568 glyph". Bila semuanya baik, tertulis "Tidak ada masalah."

![Menu Glyph terbuka, dengan Perbaiki Masalah di bagian bawah dan shortcut Ctrl+Alt+X; panel Validasi mendaftar Titik ekstrem hilang, Kontur bertumpuk, dan Garis hampir lurus di Source Serif 4.](screen:g-menu-glyph)

## Seberapa serius?

Setiap masalah punya satu dari tiga tingkat, ditunjukkan oleh warna ikonnya:

| Tingkat | Warna | Artinya |
|---|---|---|
| Error | merah | Ada yang benar-benar salah; glyph bisa tercetak keliru atau tidak sama sekali. Perbaiki. |
| Peringatan | oranye | Masih berfungsi, tetapi tampilan atau rendering-nya bisa lebih buruk. Perbaiki sebelum menerbitkan. |
| Catatan | biru | Informasi. Sering tidak masalah selama menggambar; FontEasy menanganinya saat ekspor. |

Di **Mode Sederhana**, panel hanya menampilkan pemeriksaan penting: kontur terbuka, kontur yang
memotong dirinya sendiri, komponen dari glyph yang tidak ada, code point yang dipakai dua kali, dan
arah kontur yang salah. **Mode Pro** menampilkan semuanya.

## Masalah satu per satu

### Kontur terbuka (error)

*[Kontur](/reference/glossary/#contour)* adalah outline tertutup: ujungnya kembali ke awal, seperti
karet gelang. *[Kontur terbuka](/reference/glossary/#open-contour)* punya celah, seperti seutas tali.
Font hanya bisa mengisi bentuk yang tertutup, jadi kontur terbuka sama sekali tidak terisi. Ini
biasanya terjadi bila Anda berhenti menggambar dengan Pena sebelum mengklik titik pertama lagi.

**Perbaiki** menutup kontur dengan garis lurus dari titik terakhir ke titik pertama. Bila titik
terakhir tepat berada di atas titik pertama, keduanya digabung menjadi satu.

![Kontur terbuka berbentuk D, tidak terisi dengan celah di bawah; setelah Perbaiki, garis lurus menutupnya dan bentuknya terisi.](diagram:problems-open-contour)

:::note
Glyph dengan efek stroke memang digambar sebagai garis tengah yang terbuka, jadi tidak dilaporkan
sebagai kontur terbuka. Lihat [Efek gambar](/advanced/drawing-effects/).
:::

### Kontur memotong dirinya sendiri (error)

Outline menyilang dirinya sendiri, seperti angka delapan. Sebagian bentuk seperti ini bisa tampil
sebagai lubang, dan aplikasi yang berbeda bisa mengisinya secara berbeda. **Perbaiki** mengurainya
menjadi bentuk-bentuk yang rapi (memakai **Hapus Tumpang Tindih**).

### Komponen dari glyph yang tidak ada (error)

Sebuah *[komponen](/reference/glossary/#component)* merujuk glyph yang tidak ada, biasanya karena
glyph itu dihapus atau diganti namanya. Tidak ada perbaikan otomatis: tambahkan lagi glyph yang
hilang, atau hapus komponennya di panel **Info Glyph**. Lihat
[Komponen dan komposit](/drawing/components/).

### Code point dipakai dua kali (error)

Dua glyph punya *[code point](/reference/glossary/#code-point)* (nilai Unicode) yang sama. Saat
karakter itu diketik, hanya salah satunya yang bisa muncul. Tidak ada perbaikan otomatis, karena
FontEasy tidak bisa tahu glyph mana yang Anda maksud. Buka salah satunya lalu ubah atau hapus nilai
Unicode-nya di kotak **Unicode** pada **Glyph › Ganti Nama Glyph…** (<kbd>F2</kbd>) (lihat
[Set glyph](/drawing/glyph-set/)).

### Arah kontur salah (peringatan)

Setiap kontur punya arah, seperti jalan satu arah. Aturannya untuk font: **bentuk luar berlawanan
arah jarum jam, lubang searah jarum jam**. Dengan cara inilah font membedakan "ini tinta" dari "ini
lubang". Bila arahnya tertukar, sebagian aplikasi mengisi lubang huruf **o** atau *counter* (ruang
dalam) huruf **e**, dan hurufnya menjadi gumpalan.

![Di kiri, kontur luar dan lubang huruf O berjalan searah sehingga lubangnya terisi; di kanan, kontur luar berlawanan arah jarum jam dan lubangnya searah jarum jam, sehingga lubangnya tetap terbuka.](diagram:problems-direction)

**Perbaiki** membalik kontur yang arahnya salah. Anda juga bisa melakukannya sendiri; lihat
[Perbaiki Arah](#perbaiki-arah) di bawah.

### Titik ganda (peringatan)

Dua titik berada tepat di tempat yang sama. Tidak kelihatan, tetapi ini membuat segmen sepanjang
nol, yang bisa membingungkan *[hinting](/reference/glossary/#hinting)* (petunjuk agar huruf tajam di
layar) dan alat lain. **Perbaiki** menghapus titik yang berlebih.

### Titik ekstrem hilang (peringatan)

*[Titik ekstrem](/reference/glossary/#extreme-point)* sebuah kurva adalah tempat kurva itu tepat
mendatar atau tegak: bagian paling atas, bawah, kiri, dan kanan sebuah lengkung. Font paling bagus
tampil dan di-hint bila ada titik di setiap tempat itu. FontEasy melaporkan kurva yang menonjol
lebih dari satu unit melewati titik-titiknya tanpa ada titik di sana.

![Di kiri, lingkaran yang hanya punya titik di diagonal, dengan cincin oranye di atas, bawah, dan sisinya; di kanan, lingkaran yang sudah diperbaiki punya titik di tempat kurva berbalik, dengan handle mendatar dan tegak.](diagram:problems-extremes)

**Perbaiki** menambahkan titik yang hilang tanpa mengubah bentuk. Di Mode Pro, hal yang sama tersedia
sebagai **Glyph › Kontur › Tambah Titik Ekstrem**.

### Titik halus yang tertekuk (peringatan)

*[Smooth point](/reference/glossary/#smooth-point)* (titik halus) menjanjikan bahwa kurva mengalir
melewatinya tanpa sudut. Itu hanya berhasil bila kedua *[handle](/reference/glossary/#handle)*-nya
segaris. Bila tidak, terlihat tonjolan kecil. **Perbaiki** meluruskan handle-nya. Handle yang
bersebelahan dengan garis lurus mengikuti arah garis itu.

### Kontur bertumpuk (catatan)

Dua kontur saling menumpuk, seperti palang **H** yang digambar di atas kedua tiangnya. Ini sama
sekali tidak masalah, bahkan praktis, selama menggambar: palang bisa digeser naik turun tanpa
menggambar ulang apa pun. Saat Anda mengekspor font biasa (statis), FontEasy menghapus tumpukannya
untuk Anda (dialog **Ekspor Font** punya opsi **Hapus overlap (source Anda tetap utuh)**, tercentang
secara bawaan). *[Variable font](/reference/glossary/#variable-font)* mempertahankan tumpukannya,
dengan tanda khusus agar aplikasi menggambarnya dengan benar.

Jadi Anda hanya perlu bertindak bila ingin melihat hasil gabungannya sekarang. **Perbaiki**
menggabungkan kontur yang bertumpuk dengan **Hapus Tumpang Tindih**.

![Di kiri, H dari tiga kontur yang saling menumpuk, dengan cincin di titik perpotongan; di kanan, setelah Hapus Tumpang Tindih, satu kontur dengan tumpukannya digabung.](diagram:problems-overlap)

### Garis hampir lurus (catatan)

Sebuah garis lurus melenceng tepat satu unit dari mendatar atau tegak sempurna. Hampir selalu ini
karena mouse tergelincir. Desainer yang sengaja memiringkan garis biasanya memiringkannya lebih
banyak, jadi garis yang melenceng dua unit atau lebih dibiarkan. **Perbaiki** membuat garis itu
benar-benar lurus dengan menggeser titik keduanya.

### Koordinat pecahan (catatan)

Sebuah titik tidak berada di unit utuh, misalnya di x = 100,4. Saat ekspor, semua titik dibulatkan
ke unit utuh, sehingga bisa sedikit bergeser. **Perbaiki** membulatkannya sekarang, supaya yang Anda
lihat sama persis dengan hasilnya.

### Masalah lain sekilas

![Empat gambar kecil sebelum dan sesudah: titik ganda digabung menjadi satu, titik halus yang tertekuk dengan handle yang diluruskan, garis hampir lurus dijadikan lurus, dan kontur yang memotong dirinya sendiri diurai menjadi dua bentuk.](diagram:problems-small)

## Memperbaiki masalah

### Memperbaiki satu jenis masalah

Di panel **Validasi**, klik **Perbaiki** di sebelah sebuah masalah. Di editor glyph, ini memperbaiki
semua masalah jenis itu di glyph yang terbuka. Di Ikhtisar, ini memperbaiki jenis masalah itu di
setiap glyph yang terdaftar di bawahnya.

### Memperbaiki semua yang bisa diperbaiki

Klik **Perbaiki Semua** di bawah daftar. Di editor, ini memperbaiki semua masalah yang bisa
diperbaiki di glyph yang terbuka; di Ikhtisar, semua masalah yang bisa diperbaiki di seluruh font,
dalam satu langkah undo. FontEasy menerapkan perbaikan dalam urutan yang masuk akal (menutup kontur
terbuka lebih dulu, menggabungkan tumpukan sebelum membetulkan arah, dan seterusnya) agar perbaikan
yang satu tidak membatalkan yang lain.

### Glyph › Perbaiki Masalah

**Glyph › Perbaiki Masalah** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) sama dengan
**Perbaiki Semua** untuk glyph yang sedang diedit, atau untuk glyph yang dipilih di Ikhtisar. Status
bar mengatakan "Masalah diperbaiki." atau "Tidak ada yang perlu diperbaiki.".

:::tip
Setiap perbaikan bisa dibatalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd>. Bila sebuah perbaikan mengubah
lebih banyak dari yang Anda kira, batalkan lalu perbaiki tempat itu secara manual.
:::

Dua error yang butuh keputusan Anda, **Komponen dari glyph yang tidak ada** dan **Code point dipakai
dua kali**, tidak punya tombol **Perbaiki**.

## Melakukannya sendiri: menu Kontur

Dua perbaikan juga tersedia sebagai perintah biasa di **Glyph › Kontur**. Keduanya bekerja pada glyph
yang sedang diedit, atau pada semua glyph yang dipilih di Ikhtisar.

### Hapus Tumpang Tindih

**Glyph › Kontur › Hapus Tumpang Tindih** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>) menggabungkan
semua kontur yang bertumpuk menjadi outline yang rapi. Kurva tetap kurva, dan kontur yang tidak
menumpuk apa pun dibiarkan persis seperti semula. Status bar mengatakan "Overlap dihapus." atau
"Tidak ada overlap untuk dihapus.". Baca lebih lanjut di glosarium, entri
[Remove overlap](/reference/glossary/#remove-overlap).

:::caution[Biarkan tumpukan selama mendesain]
Karena ekspor tetap menghapus tumpukan, Anda mungkin lebih suka mempertahankannya di file sumber:
**H** dari tiga persegi panjang lebih mudah diubah daripada satu outline gabungan. Pada font dengan
beberapa master, menggabungkan sebagian master saja bisa membuat master-master itu tidak cocok lagi,
jadi berhati-hatilah.
:::

### Perbaiki Arah

**Glyph › Kontur › Perbaiki Arah** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) melihat kontur
mana yang berada di dalam kontur lain dan memutar masing-masing ke arah yang benar: bentuk luar
berlawanan arah jarum jam, lubang searah jarum jam. Status bar memberi tahu berapa kontur yang
dibalik, misalnya "2 kontur dibalik".

**Glyph › Kontur › Balik Arah** memutar kontur yang dipilih ke arah sebaliknya, apa pun arahnya
semula. Pakai hanya bila Anda tahu memang perlu; **Perbaiki Arah** hampir selalu pilihan yang lebih
baik.

## Variable font: interpolasi

Bila font Anda punya beberapa *[master](/reference/glossary/#master)*, panel Validasi juga punya
bagian **Interpolasi**. Bagian ini mendaftar glyph yang master-masternya tidak cocok (misalnya jumlah
kontur atau titiknya berbeda), sehingga tidak bisa dipadukan. Tombol **Samakan Struktur** memperbaiki
apa yang bisa diperbaiki otomatis. Lihat [Variable font](/advanced/variable/).

## Validasi dan Periksa Font

Panel Validasi melihat *bentuk* glyph Anda selagi menggambar. Sebelum menerbitkan, jalankan
pemeriksaan yang lebih luas, **Font › Periksa Font…** (<kbd>F7</kbd>), yang juga memeriksa nama,
metrics, set karakter, kerning, dan fitur. Lihat [Pemeriksaan kualitas](/production/quality/).

## Kebiasaan yang baik

- Lirik panel Validasi setiap kali selesai satu glyph. Satu masalah yang langsung diperbaiki lebih
  mudah daripada lima puluh yang ditemukan di akhir.
- Tutup setiap kontur dengan Pena dengan mengklik titik pertamanya.
- Setelah mengimpor SVG atau men-trace gambar, pilih semua glyph di Ikhtisar lalu tekan
  <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>.
- Jangan khawatir soal **Kontur bertumpuk** selama mendesain; itu ditangani saat ekspor.
- Perbaiki error dan peringatan sebelum membagikan atau menerbitkan font.

## Ringkasan

- FontEasy memeriksa outline selagi Anda menggambar: cincin di kanvas, titik merah dan oranye di
  Ikhtisar, dan daftar di panel **Validasi**.
- Error: **Kontur terbuka**, **Kontur memotong dirinya sendiri**, **Komponen dari glyph yang tidak
  ada**, **Code point dipakai dua kali**. Peringatan: **Arah kontur salah**, **Titik ganda**, **Titik
  ekstrem hilang**, **Titik halus yang tertekuk**. Catatan: **Kontur bertumpuk**, **Garis hampir
  lurus**, **Koordinat pecahan**.
- Mode Sederhana hanya menampilkan pemeriksaan penting.
- **Perbaiki** memperbaiki satu jenis; **Perbaiki Semua** dan **Glyph › Perbaiki Masalah**
  (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) memperbaiki semua yang bisa diperbaiki.
- **Hapus Tumpang Tindih** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>) menggabungkan tumpukan;
  **Perbaiki Arah** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) memutar kontur ke arah yang
  benar.
- Komponen yang hilang dan code point ganda butuh keputusan Anda.

## Coba sendiri

1. Buka sebuah glyph, gambar persegi dengan Pena tetapi jangan ditutup. Perhatikan cincin merah
   yang muncul, lalu tekan <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>.
2. Gambar **H** dari tiga persegi panjang sehingga palangnya menumpuk di tiang. Baca catatan
   **Kontur bertumpuk**, lalu pilih **Glyph › Kontur › Hapus Tumpang Tindih** dan bandingkan jumlah
   titik di panel **Info Glyph** sebelum dan sesudahnya. Batalkan, dan pertahankan ketiga persegi
   panjang itu.
