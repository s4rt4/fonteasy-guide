---
title: Font dari Tulisan Tangan Anda
description: Cetak template, tulis huruf-huruf Anda di dalam kotak, scan atau foto halamannya, lalu biarkan wizard Tulisan Tangan mengubahnya menjadi font yang bisa dipakai.
---

Mengubah tulisan tangan sendiri menjadi font adalah salah satu proyek pertama yang paling
menyenangkan. Anda tidak perlu menggambar satu kurva pun di komputer. Anda menulis huruf dengan pena
seperti biasa, dan FontEasy membacanya dari hasil scan atau foto HP.

Wizard **Font Tulisan Tangan** memandu Anda dalam empat langkah: **Cetak**, **Scan**, **Periksa**,
dan **Selesai**. Di sela-selanya, Anda menulis. Satu jam kemudian Anda sudah bisa mengetik surat
untuk teman dengan tulisan tangan Anda sendiri.

Dalam bab ini Anda akan mempelajari:

- cara memulai wizard Tulisan Tangan dan mencetak template;
- cara mengisi template supaya hasil *trace*-nya (penjiplakannya) bagus;
- cara men-scan atau memotret halamannya;
- bagaimana FontEasy menemukan kotak dan membaca huruf Anda;
- cara memeriksa dan menyesuaikan huruf sebelum dimasukkan ke font;
- apa yang dilakukan setelahnya: huruf beraksen, spasi, dan *kerning*.

## Gambaran dalam empat langkah

![Lima langkah: cetak template PDF, tulis satu karakter di tiap kotak, scan atau foto halamannya, periksa hurufnya, dan huruf sudah masuk ke font.](diagram:handwriting-steps)

1. **Cetak.** FontEasy membuat *template* PDF: halaman-halaman berisi kotak, satu untuk setiap
   karakter, masing-masing dengan label kecil dan garis bantu.
2. **Tulis.** Anda menulis satu karakter di tiap kotak dengan pena berwarna gelap.
3. **Scan.** Anda men-scan halamannya atau memotretnya dengan HP, lalu memberikan gambarnya ke
   wizard.
4. **Periksa.** FontEasy menemukan setiap kotak, men-trace tintanya menjadi outline, dan
   menampilkan semua hurufnya. Anda menyesuaikan yang perlu, lalu memasukkannya ke font.

## Memulai wizard

Ada tiga jalan masuk:

- Pilih **Alat › Wizard › Wizard Font Tulisan Tangan…**.
- Di wizard **Font Baru** (**Alat › Wizard › Wizard Font Baru…**), pilih **Tulisan tangan saya**
  sebagai kegunaan. Setelah font dibuat, wizard Tulisan Tangan langsung terbuka.
- Di Mode Sederhana, panel **Perjalanan Font** punya tombol **Tulisan Tangan…** di langkah
  **Gambar hurufnya**.

Bila belum ada font yang terbuka, wizard lebih dulu membuat font baru bernama "My Handwriting".
Template dibuat dari *[vertical metrics](/reference/glossary/#vertical-metrics)* (ukuran tinggi)
font yang terbuka: garis bantunya sesuai dengan [x-height](/reference/glossary/#x-height),
[cap height](/reference/glossary/#cap-height), [ascender](/reference/glossary/#ascender), dan
[descender](/reference/glossary/#descender) font Anda. Kalau Anda ingin proporsi lain (misalnya
huruf kecil yang lebih tinggi), ubah dulu di **Font › Info Font…** *sebelum* mencetak.

## Langkah 1: Cetak template

1. Di langkah **Cetak**, pilih **Kertas**: **A4** atau **Letter**.
2. Centang **Juga Æ, Ø, ß, € dan huruf serta tanda Latin-1 lainnya** bila Anda ingin karakter
   tambahan itu.
3. Baca baris di bawahnya: di situ tertulis berapa karakter dan halaman dalam template. Set dasar
   berisi 89 karakter (A–Z, a–z, 0–9, dan 27 tanda baca serta simbol) di 3 halaman; dengan tambahan
   Latin-1 menjadi 113 karakter, tetap di 3 halaman.
4. Klik **Simpan Template PDF…**, pilih tempat menyimpan, lalu klik **Save**.
5. Klik **Buka PDF** untuk membukanya di penampil PDF, lalu cetak.
6. Klik **Lanjut**.

Anda tidak perlu kotak untuk huruf beraksen seperti **é** atau **ü**. Setelah wizard selesai,
FontEasy menyusunnya dari huruf dan aksen Anda (lihat
[Komponen dan komposit](/drawing/components/)).

:::caution[Cetak 100%]
Di dialog cetak, pilih "Actual size" atau 100%, jangan "Fit to page". Kotaknya tidak harus tepat
sampai milimeter, tetapi halamannya tidak boleh terpotong: keempat kotak hitam di sudut harus
tercetak di kertas.
:::

### Isi satu halaman

![Halaman template dengan kode halaman di atas, empat kotak sudut, kisi 42 kotak, dan satu kotak yang diperbesar untuk menunjukkan garis bantunya: ascender, cap height, x-height, baseline, dan descender.](diagram:handwriting-template)

- **Empat kotak hitam di sudut.** Dengan kotak ini FontEasy menemukan halaman di dalam gambar Anda.
- **Sederet kotak kecil** di antara dua sudut atas: *kode halaman*. Kode ini memberi tahu FontEasy
  halaman ke berapa ini, sekaligus memastikan halaman itu memang milik template ini.
- **Judul** berisi nama font dan "handwriting template, page 1 of 3", serta dua baris petunjuk
  singkat (dalam bahasa Inggris).
- **42 kotak**, 6 per baris dan 7 baris. Setiap kotak punya label karakternya di sudut kiri atas, dan
  lima garis bantu: ascender dan descender (tipis), cap height dan x-height (putus-putus), serta
  [baseline](/reference/glossary/#baseline) atau garis dasar (utuh dan lebih gelap).

Garis bantu dicetak abu-abu muda. Saat FontEasy membaca halaman, abu-abu muda dianggap kertas, jadi
garis-garis itu tidak pernah ikut menjadi bagian huruf Anda.

## Langkah 2: Tulis huruf-huruf Anda

Luangkan waktu di sini: kualitas font Anda lebih bergantung pada langkah ini daripada langkah lain.

1. Tulis setiap karakter di kotaknya sendiri, duduk di atas **baseline** yang utuh.
2. Biarkan huruf kapital mencapai garis **cap height**, dan huruf kecil seperti **x**, **n**, dan
   **o** mencapai garis **x-height**.
3. Biarkan bagian atas **b d h k l** naik ke arah garis paling atas, dan ekor **g j p q y**
   menggantung di bawah baseline ke arah garis paling bawah.
4. Tetaplah di dalam kotak. Tinta yang menyentuh tepi kotak bisa terpotong.
5. Biarkan kotak kosong bila Anda tidak ingin karakter itu. Kotak kosong dilewati saja.

:::tip[Pena dan kertas]
- Pakai **spidol atau *felt-tip pen* berwarna gelap** dengan garis yang rata, kira-kira 1–2 mm.
  Goresan tebal dan rata paling bagus hasil trace-nya.
- Hindari pulpen: garisnya tipis dan keabu-abuan, sehingga terputus saat di-trace. Pensil terlalu
  terang.
- Tinta hitam paling baik; biru tua juga bisa.
- Menulislah dengan kecepatan biasa. Huruf yang ditulis pelan-pelan sering tampak lebih kaku daripada
  tulisan tangan asli Anda.
- Pemanasan dulu dengan beberapa huruf di kertas bekas.
- Bila sebuah huruf salah, cetak ulang halaman itu daripada mencoretnya. Coretan di dalam kotak
  di-trace seperti tinta lainnya.
:::

## Langkah 3: Scan atau foto halamannya

Di langkah **Scan**:

1. Scan halaman yang sudah diisi dengan **300 dpi**, atau foto setiap halaman dengan HP.
2. Simpan gambarnya sebagai file PNG atau JPG di komputer.
3. Klik **Tambah Scan atau Foto…** lalu pilih semua gambar sekaligus. Urutannya bebas.
4. Tunggu selagi FontEasy membacanya. Setiap halaman muncul di daftar dengan tanda centang hijau,
   nomor halamannya, dan jumlah karakter yang ditemukan, misalnya "scan1.jpg — halaman 1   42
   karakter".
5. Setelah sedikitnya satu halaman terbaca, klik **Lanjut**.

Anda bisa mengklik **Tambah Scan atau Foto…** lagi untuk menambah halaman atau mengganti halaman
dengan gambar yang lebih baik. Bila Anda menambahkan gambar halaman yang sama dua kali, yang terbaru
yang dipakai.

:::tip[Memotret dengan baik]
- Letakkan halaman rata di atas meja, dengan **cahaya yang cukup dan merata**. Cahaya siang dari
  jendela paling ideal.
- Pegang HP **tegak lurus di atas** halaman, jangan terlalu miring.
- Pastikan **keempat kotak sudut** masuk ke dalam foto, dengan sedikit ruang di sekelilingnya.
- Jangan sampai bayangan HP dan tangan Anda jatuh di halaman.
- Jangan pakai lampu kilat: ia membuat titik terang.
- Aplikasi "pemindai dokumen" di HP yang memotong halaman boleh dipakai, asalkan kotak sudutnya
  tetap ada.
:::

### Bagaimana FontEasy membaca halaman

Anda tidak perlu memahami ini untuk memakai wizard, tetapi berguna ketika ada yang tidak beres.

1. **Mencari sudut.** FontEasy mencari empat kotak gelap yang padat, satu di dekat setiap sudut
   gambar.
2. **Meluruskan halaman.** Dari keempat sudut itu ia menghitung bagaimana halaman tampak miring atau
   berperspektif, lalu memetakannya kembali menjadi halaman datar. Itulah sebabnya foto yang diambil
   agak miring tetap bisa dibaca.
3. **Membaca kode halaman.** Kotak-kotak kecil di atas menyatakan halaman ke berapa ini. Bila kodenya
   tidak cocok dengan template (karakter, ukuran kertas, atau metrics berbeda), halaman itu ditolak,
   daripada menaruh huruf di tempat yang salah.
4. **Memotong setiap kotak.** Setiap kotak dipotong dan pencahayaannya diratakan: setiap piksel
   dibandingkan dengan kecerahan kertas di sekitarnya, sehingga bayangan dan cahaya yang tidak rata
   tidak jadi masalah.
5. **Mencari tinta.** Kotak kosong dikenali dan dilewati. Garis bantu abu-abu dianggap kertas.

![Halaman yang difoto agak miring dengan empat kotak sudutnya, dan halaman yang sama setelah diluruskan seperti dibaca FontEasy.](diagram:handwriting-perspective)

## Langkah 4: Periksa hurufnya

Langkah **Periksa** menampilkan setiap karakter yang terbaca, sebagai outline hasil trace, dalam
sebuah kisi. Kisi itu terisi sedikit demi sedikit selagi FontEasy men-trace.

![Langkah Periksa di wizard Font Tulisan Tangan: kisi huruf hasil trace dari A sampai n, kotak Q bertanda kosong, G terpilih dengan threshold sendiri 140 dan Pakai huruf ini tercentang, serta tombol Masukkan 41 Huruf ke Font.](screen:handwriting)

Di bagian atas ada dua slider yang berlaku untuk semua huruf:

- **Threshold tinta** menentukan seberapa gelap sebuah piksel agar dianggap tinta (dari 40 sampai
  230; mulai dari 140). Petunjuknya jelas: turunkan threshold bila goresan terlalu tebal atau
  menyatu, naikkan bila terputus.
- **Kehalusan** menentukan seberapa dekat kurva mengikuti tinta. Nilai tinggi memberi kurva lebih
  halus dengan titik lebih sedikit; nilai rendah mempertahankan lebih banyak tekstur pena.

Untuk mengatur satu huruf:

1. Klik huruf itu di kisi. Huruf disorot, dan sebuah baris muncul di bawah kisi.
2. Geser **Threshold huruf ini** untuk menyesuaikan huruf itu saja. Ini membantu bila Anda menekan
   lebih keras atau lebih ringan pada beberapa huruf.
3. Hapus centang **Pakai huruf ini** untuk meninggalkannya. Huruf yang ditinggalkan dicoret di kisi.
4. Klik huruf itu lagi untuk membatalkan pilihan.

Kotak yang Anda biarkan kosong ditandai **kosong**. Menggeser slider utama **Threshold tinta**
mengembalikan threshold per huruf ke nilai umum.

Bila sudah puas, klik **Masukkan … Huruf ke Font** (angkanya menghitung huruf yang dipakai). FontEasy
lalu:

- membuat glyph yang belum ada, dan mengganti outline glyph yang sudah ada;
- meletakkan setiap huruf dengan *[sidebearing](/reference/glossary/#sidebearing)* (ruang kosong di
  sisi huruf) kecil sebesar 5% em di kiri dan kanan;
- mengatur spasi huruf secara otomatis, dengan **n** dan **H** sebagai acuan;
- menambahkan glyph **space** (spasi) selebar seperempat em, bila font belum punya.

Status bar mengatakan, misalnya, "41 huruf di-trace ke font". Semuanya satu langkah undo.

## Langkah 5: Selesai, lalu apa?

Langkah **Selesai** mengatakan "Huruf-huruf Anda sudah masuk ke font." dan menyarankan langkah
berikutnya: buat huruf beraksen, periksa spasinya dalam baris teks, dan coba font-nya di pratinjau.

1. Klik **Buat Komposit…** untuk langsung membuat huruf beraksen dari huruf dan aksen Anda (Anda
   perlu sudah menulis aksennya, atau menggambarnya sekarang). Lihat
   [Komponen dan komposit](/drawing/components/). Atau klik **Tutup**.
2. Ketik sebuah kalimat di panel **Pratinjau** lalu baca. Apakah huruf-hurufnya duduk di satu
   garis? Adakah huruf yang terlalu besar atau terlalu kecil?
3. Buka huruf yang perlu diperhatikan di editor glyph. Perbaikan yang umum adalah menghaluskan kurva
   yang bergoyang dengan **Glyph › Kontur › Sederhanakan** dan membereskan masalah kecil yang
   ditunjukkan panel Validasi (lihat [Memperbaiki masalah outline](/drawing/problems/)).

### Spasi dan kerning

Spasi otomatis memberi awal yang bisa dipakai, tetapi tulisan tangan tidak teratur, dan beberapa
huruf akan tampak terlalu renggang atau terlalu rapat.

- Pilih **Metrics › Jendela Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) dan lihat huruf
  Anda di antara **n** dan **o**. Atur sidebearing kiri dan kanan sampai iramanya terasa rata.
  **Metrics › Spasi Otomatis…** bisa mengatur spasi banyak huruf sekaligus. Semuanya dijelaskan di
  [Spasi](/spacing/metrics/).
- Lalu perbaiki pasangan yang masih tampak janggal, seperti **To**, **Ty**, atau **AV**, dengan
  *[kerning](/reference/glossary/#kerning)* (pengaturan jarak antar pasangan huruf) di
  **Jendela Kerning** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>). Lihat [Kerning](/spacing/kerning/).

:::tip[Supaya terasa lebih seperti tulisan tangan]
Tangan sungguhan tidak pernah menulis huruf yang sama dua kali dengan persis sama. Setelah font
dasar Anda berfungsi, Anda bisa menambahkan versi kedua untuk huruf-huruf yang sering muncul dan
membiarkan font berganti-ganti di antara keduanya lewat fitur OpenType. Lihat
[Fitur OpenType](/opentype/features/).
:::

## Bila ada yang tidak beres

**Sebuah halaman bertanda silang merah dengan pesan galat.** Pesan dari pembaca halaman ditulis dalam
bahasa Inggris:

- "found … of the 4 corner squares; make sure all four are in view and the page is well lit"
  (hanya … dari 4 kotak sudut yang ditemukan): sebagian halaman terpotong, atau cahayanya kurang.
  Foto ulang dengan keempat sudut dan sedikit ruang di sekelilingnya.
- "could not tell the four corner squares apart" atau "the corner squares are in a line" (kotak
  sudut tidak bisa dibedakan, atau segaris): gambarnya sangat terdistorsi atau terpotong. Foto
  tegak lurus dari atas.
- "this page is from a different template (other characters, page size or metrics)" (halaman ini
  dari template lain): halaman dicetak dengan pengaturan yang berbeda dari pengaturan di wizard
  sekarang. Pilih **Kertas** dan opsi Latin-1 yang sama seperti saat mencetak, dan jangan ubah
  metrics font di antara mencetak dan men-scan. Bila terlanjur, cetak ulang template-nya.
- "page … is not part of this template" (halaman … bukan bagian template ini): halaman itu milik
  template yang lebih panjang, misalnya yang dicetak dengan tambahan Latin-1. Centang lagi opsi yang
  sama.

**Huruf terlalu tebal, atau bagian yang berdekatan menyatu.** Turunkan **Threshold tinta**, atau
turunkan **Threshold huruf ini** untuk huruf tersebut.

**Goresan tipis terputus-putus.** Naikkan threshold, atau tulis ulang dengan pena yang lebih tebal.

**Ada kotoran atau garis nyasar di huruf.** Bersihkan kaca scanner atau halamannya, atau hapus
kontur yang berlebih di editor glyph nanti (pilih lalu tekan <kbd>Delete</kbd>).

**Huruf duduk di ketinggian yang berbeda-beda.** Wizard mempertahankan posisi setiap huruf terhadap
baseline yang tercetak, persis seperti Anda menulisnya. Geser huruf itu naik atau turun di editor
glyph, atau tulis ulang huruf tersebut.

**Wizard memasukkan huruf yang tidak saya inginkan.** Batalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd>,
atau hapus atau gambar ulang glyph itu nanti. Lain kali, hapus centang **Pakai huruf ini**.

## Ringkasan

- **Alat › Wizard › Wizard Font Tulisan Tangan…** memandu Anda melalui **Cetak**, **Scan**,
  **Periksa**, dan **Selesai**.
- Template PDF (A4 atau Letter, opsional dengan tambahan Latin-1) berisi 42 kotak per halaman
  dengan garis bantu dari metrics font Anda, empat kotak sudut, dan kode halaman.
- Menulislah dengan spidol gelap, di atas baseline, di dalam kotak; cetak dengan ukuran 100%.
- Tambahkan hasil scan (300 dpi) atau foto HP yang diambil dari atas dengan keempat sudut terlihat,
  dalam urutan apa pun.
- FontEasy menemukan sudut, meluruskan halaman, memeriksa kode halaman, meratakan cahaya, dan
  men-trace setiap kotak.
- Di **Periksa**, atur **Threshold tinta**, **Kehalusan**, dan threshold per huruf; hapus centang
  huruf yang tidak diinginkan; lalu **Masukkan … Huruf ke Font**.
- Setelah itu: buat komposit, perhalus spasi di Jendela Metrics, dan atur kerning.

## Coba sendiri

1. Cetak template, tetapi isi halaman pertama saja (huruf kapital). Foto dengan HP, jalankan wizard,
   lalu ketik nama Anda dengan huruf kapital di panel **Pratinjau**.
2. Di langkah **Periksa**, pilih satu huruf dan geser **Threshold huruf ini** dari ujung ke ujung.
   Perhatikan bagaimana goresan menipis dan menebal, lalu temukan nilai yang paling mirip dengan pena
   Anda.
