---
title: Memeriksa font
description: Pakai Periksa Font untuk menemukan masalah pada nama, metrics, glyph, outline, kerning, fitur, dan font hasil kompilasi sebelum rilis, lalu perbaiki banyak di antaranya dengan sekali klik.
---

Font adalah perangkat lunak kecil. Seperti perangkat lunak lain, font bisa mengandung kesalahan yang tidak terlihat selama Anda bekerja: karakter spasi yang ternyata bertinta, Bold yang dianggap Regular oleh Windows, aksen yang terpotong di puncak baris, atau pasangan kerning yang membuat dua huruf saling bertumpuk. Sebagian kesalahan baru muncul di komputer orang lain, setelah font Anda dibagikan.

Studio huruf profesional menjalankan daftar panjang pemeriksaan otomatis sebelum setiap rilis. Alat yang paling terkenal untuk itu adalah Fontbakery, yang dipakai Google Fonts. FontEasy punya pemeriksaan sendiri dengan semangat yang sama, sudah terpasang di dalamnya, jadi Anda bisa menjalankannya dengan satu tombol tanpa memasang apa pun: **Font › Periksa Font…**.

Pemeriksaan bukan ujian akhir yang cukup lulus sekali. Ia lebih mirip pemeriksa ejaan: jalankan sesering mungkin, baca hasilnya, perbaiki yang penting, lalu jalankan lagi. Banyak temuan punya tombol **Perbaiki** yang memperbaikinya untuk Anda.

Dalam bab ini Anda akan mempelajari:

- cara menjalankan Periksa Font dan membaca panel Periksa Font;
- arti error, peringatan, dan catatan, serta mana yang wajib diperbaiki;
- apa yang diperiksa setiap pemeriksaan, bagian demi bagian;
- cara kerja perbaikan otomatis dan cara membatalkannya;
- cara menyimpan laporan sebagai file HTML;
- bagaimana Mode Sederhana menyajikan pemeriksaan yang sama sebagai **Periksa Font Saya**;
- bagaimana Audit Kerning hanya melihat kerning Anda.

## Dua jenis pemeriksaan

FontEasy memeriksa font Anda dengan dua cara, dan ada baiknya Anda tahu bedanya.

- **Validasi** mengawasi outline Anda terus-menerus selama Anda menggambar. Ia menandai masalah di kanvas dan di ikhtisar, lalu mendaftarkannya di panel **Validasi**. Ia melihat satu glyph pada satu waktu: kontur terbuka, arah kontur salah, titik ekstrem hilang, dan sebagainya. Bab [Memperbaiki masalah outline](/drawing/problems/) menjelaskannya.
- **Periksa Font** melihat seluruh font sekaligus, ketika Anda memintanya. Ia memeriksa nama dan kredit, metrics vertikal, set glyph, kerning, kode fitur, dan, setelah font dibuat, file font hasil kompilasinya. Masalah outline dari validasi juga ikut sebagai satu bagian.

Pakai validasi selama menggambar, dan Periksa Font ketika Anda merasa sebuah versi sudah siap, serta sebelum setiap ekspor yang akan Anda bagikan.

## Menjalankan Periksa Font

1. Buka font Anda.
2. Pilih **Font › Periksa Font…** atau tekan <kbd>F7</kbd>.
3. Panel **Periksa Font** terbuka di dock bawah dan menampilkan **Memeriksa…** dengan ikon berputar. Pemeriksaan berjalan di latar, jadi Anda tetap bisa bekerja.
4. Beberapa detik kemudian temuan muncul, dikelompokkan dalam beberapa bagian.

![Panel Periksa Font untuk Source Serif 4: tombol di atas, jumlah error, peringatan, dan catatan, lalu bagian Nama dan kredit dengan dua catatan.](screen:fontcheck)

Panel ini juga bisa dibuka dari **Jendela › Panel › Periksa Font**. Selama belum ada pemeriksaan, panel menampilkan keterangan singkat dan tombol **Periksa Font**.

Jika font Anda punya beberapa master, Periksa Font melihat master yang sedang Anda edit (yang tampil di menu master di bagian atas Ikhtisar) serta font seperti yang akan diekspor.

## Membaca panel Periksa Font

Dari atas ke bawah, panel menampilkan:

- **Periksa Lagi** menjalankan pemeriksaan sekali lagi (sebelum pemeriksaan pertama, tombol ini bernama **Periksa Font**).
- **Perbaiki Semua (n)** memperbaiki semua temuan yang punya perbaikan otomatis; *n* adalah jumlahnya. Tombol ini hanya muncul bila ada yang bisa diperbaiki.
- **Simpan Laporan…** menulis semua temuan ke file HTML.
- Tiga penghitung berikon: jumlah error, peringatan, dan catatan.
- **Catatan**: kotak centang untuk menampilkan atau menyembunyikan catatan, temuan yang paling ringan.
- Temuan-temuan, per bagian. Klik judul bagian untuk melipat atau membukanya lagi. Angka di belakang judul adalah jumlah temuannya.

Jika Anda mengubah font setelah pemeriksaan, muncul baris peringatan kecil: **Font sudah berubah sejak pemeriksaan ini.** Temuannya mungkin sudah tidak tepat; klik **Periksa Lagi**.

Bila semuanya beres, panel menampilkan **Tidak ada masalah.** dengan tanda centang hijau.

Setiap temuan berupa satu kalimat sederhana, seperti "Belum ada baris hak cipta." atau "Gaya “Bold” menunjukkan weight class 700, tetapi nilainya 400." Arahkan penunjuk mouse ke sebuah temuan untuk melihat satu kalimat saran tentang pemeriksaan itu.

### Klik untuk menuju ke sana

Kebanyakan temuan tahu letak masalahnya. Klik kalimatnya dan FontEasy membawa Anda ke sana:

| Temuan tentang… | Mengkliknya… |
|---|---|
| Kolom Info Font | membuka **Info Font**, digulir ke kolom itu dengan labelnya disorot |
| Sebuah glyph | membuka glyph itu di editor |
| Pasangan kerning | membuka kedua glyph di editor dengan tool **Kerning** dan panel **Kerning** |
| Grup kerning | membuka dialog **Grup Kerning** |
| Error di kode fitur | membuka editor fitur di baris itu |

Daftar panjang dipotong setelah 60 temuan per bagian ("… dan 12 lainnya (lihat laporan yang disimpan)"). Ini terutama terjadi pada glyph kosong atau tak terpakai di font yang belum selesai. Laporan yang disimpan selalu memuat semuanya.

## Error, peringatan, dan catatan

Setiap temuan punya satu dari tiga tingkat keparahan, yang terlihat dari ikonnya.

![Tiga tingkat: error berarti ada yang rusak, perbaiki sebelum rilis; peringatan kemungkinan keliru, perbaiki kecuali disengaja; catatan baik untuk diketahui, baca lalu putuskan.](diagram:quality-severity)

- **Error** (lingkaran merah dengan silang) berarti ada yang rusak atau tidak akan berfungsi: font tidak bisa dibuat, Windows akan memotong huruf, karakter spasi bertinta. Perbaiki semua error sebelum membagikan font.
- **Peringatan** (segitiga oranye) berarti kemungkinan ada kekeliruan atau sesuatu yang belum ada: tidak ada baris hak cipta, glyph yang punya karakter tetapi belum digambar, pasangan kerning yang membuat huruf bertabrakan. Perbaiki, kecuali Anda yakin memang itu yang Anda mau.
- **Catatan** (lingkaran biru dengan huruf "i") adalah informasi: belum ada ID vendor, nilai units per em yang tidak lazim, glyph yang tidak dipakai. Banyak catatan hanya soal selera. Baca sekali; Anda bisa menyembunyikannya dengan kotak centang **Catatan**.

Di setiap bagian, error tampil lebih dulu, lalu peringatan, lalu catatan.

Font yang belum selesai sering menampilkan ratusan temuan, kebanyakan peringatan "belum punya outline" untuk glyph yang belum Anda gambar. Itu wajar. Peringatan itu hilang seiring Anda menggambar.

## Perbaikan otomatis

Sekitar dua puluh pemeriksaan tahu cara memperbaiki temuannya. Temuan-temuan itu punya tombol **Perbaiki** di ujung barisnya.

- **Perbaiki** memperbaiki satu temuan itu. Temuannya langsung hilang dari daftar; sisanya tetap.
- **Perbaiki Semua (n)** memperbaiki semua temuan yang bisa diperbaiki, lalu menjalankan pemeriksaan lagi.

Setiap klik adalah satu langkah di riwayat undo. Jika hasilnya tidak Anda sukai, tekan <kbd>Ctrl</kbd>+<kbd>Z</kbd>.

Perbaikan hanya menyentuh master yang sedang Anda edit, dan tidak pernah menghapus glyph yang sudah Anda gambar. Bila sebuah perbaikan menghapus sesuatu (pasangan kerning yang tidak berpengaruh, anggota grup yang tidak ada), yang dihapus memang tidak berpengaruh apa pun.

:::tip
Baca dulu temuannya sebelum mengklik **Perbaiki Semua**. Kebanyakan perbaikan melakukan hal yang jelas, tetapi beberapa membuat pilihan untuk Anda: misalnya perbaikan **Terpotong di Windows** membuat jarak baris di Windows lebih besar. Mungkin Anda lebih suka memperbaiki sebagian masalah sendiri.
:::

Cara kerja yang biasa adalah sebuah putaran:

![Periksa Font, baca temuannya, perbaiki atau klik untuk membuka letaknya, lalu Periksa Lagi, sampai tidak ada error tersisa.](diagram:quality-loop)

## Apa saja yang diperiksa

Pemeriksaan dikelompokkan menjadi delapan bagian. Berikut setiap pemeriksaan beserta artinya dalam bahasa sehari-hari. Kolom "Perbaikan" menyebut apakah tombol **Perbaiki** tersedia.

### Nama dan kredit

Pemeriksaan ini melihat kolom-kolom **Font › Info Font…**. Lihat [Info Font](/production/font-info/) untuk arti kolomnya.

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Nama keluarga | Font belum punya nama keluarga; atau namanya berisi huruf di luar ASCII biasa, yang ditampilkan keliru oleh sebagian aplikasi lama | Peringatan, catatan | — |
| Nama gaya | Belum ada nama gaya (akan diekspor sebagai Regular) | Peringatan | mengisi "Regular" |
| Panjang nama | Nama yang tampil di menu Windows lebih dari 31 karakter | Peringatan | — |
| Nama PostScript | Berisi spasi, karakter terlarang, atau lebih dari 63 karakter; atau akan dibuat dari nama keluarga yang beraksen | Error, peringatan | membuat ulang |
| Versi | Belum ada nomor versi; atau versinya diawali 0 (pra-rilis) | Peringatan, catatan | mengisi 1.000 |
| Hak cipta | Belum ada baris hak cipta | Peringatan | — |
| Lisensi | Belum ada teks atau URL lisensi | Catatan | — |
| ID vendor | Lebih dari empat karakter atau bukan ASCII; atau belum ada | Error, catatan | — |
| Desainer | Desainer belum disebutkan | Catatan | — |
| Weight class | Weight class tidak cocok dengan nama gaya (Bold seharusnya 700) | Peringatan | mengisinya |
| Width class | Width class tidak cocok dengan nama gaya (Condensed, Expanded …) | Catatan | mengisinya |
| Sudut miring | Sudutnya positif; gaya italic bersudut 0; atau sudutnya berbeda dari kemiringan batang yang diukur | Error, peringatan, catatan | membetulkannya |
| Penautan gaya | Di menu Windows, font ditautkan sebagai gaya yang berbeda dari namanya | Peringatan | menautkan ulang |

### Metrics vertikal

Pemeriksaan ini melihat kelompok **Dimensi** dan **OpenType** di Info Font. Bab [Info Font](/production/font-info/#metrics-vertikal-setinggi-apa-satu-baris) menjelaskan metrics vertikal.

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Units per em | Nilainya di luar 16–16384; atau tidak lazim (bukan 1000, 2048, atau pangkat dua lainnya) | Error, catatan | — |
| Ascender, descender, dan tinggi | Descender positif (seharusnya di bawah baseline); atau ascender, tinggi huruf kapital, atau tinggi-x belum diisi | Error, peringatan | membuat descender negatif |
| Tinggi sesuai glyph | Tinggi huruf kapital atau tinggi-x meleset lebih dari 1% em dari puncak `H` atau `x` yang sebenarnya | Peringatan | mengisi nilai hasil ukur |
| Tabel jarak baris | Nilai Typo dan hhea sama-sama diisi tetapi berbeda | Catatan | menyalin Typo ke hhea |
| Line gap | Line gap diisi selain 0 | Catatan | — |

### Set glyph

Pemeriksaan ini melihat [glyph](/reference/glossary/#glyph) apa saja yang ada di font dan bagaimana namanya. Lihat [Set glyph](/drawing/glyph-set/).

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| .notdef | Tidak ada glyph `.notdef` (kotak yang tampil untuk karakter yang tidak ada), atau bukan glyph pertama | Peringatan | menambah atau memindahkannya ke depan |
| Spasi | Tidak ada spasi (U+0020) (error); atau tidak ada spasi tak terputus (U+00A0) (peringatan) | Error, peringatan | menambahkan yang belum ada |
| Tinta di karakter spasi | Karakter spasi punya outline | Error | — |
| Glyph kosong | Glyph punya karakter tetapi belum punya outline, jadi mengetiknya tidak menampilkan apa-apa | Peringatan | — |
| Nama glyph | [Nama glyph](/reference/glossary/#glyph-name) memakai karakter selain A–Z, a–z, 0–9, `_`, dan `.`, diawali angka atau titik, atau panjangnya 64 karakter atau lebih | Peringatan | — |
| Karakter dasar | Sebagian A–Z, a–z, 0–9, dan tanda baca umum belum ada | Catatan | — |
| Lebar tanda gabung | Aksen gabung (*[mark](/reference/glossary/#mark)*) punya lebar; seharusnya 0 | Peringatan | — |
| Glyph tak terpakai | Glyph tanpa karakter yang tidak dipakai komponen, layer warna, maupun kode fitur, sehingga tidak akan pernah bisa diketik | Catatan | — |

### Outline

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Masalah outline | Error dan peringatan yang ditemukan validasi pada sebuah glyph (kontur terbuka, kontur memotong dirinya sendiri, arah salah, titik ekstrem hilang …), satu temuan per jenis masalah per glyph | Error, peringatan | perbaikan yang sama seperti di panel Validasi, bila ada |

Catatan outline yang lebih ringan dari panel Validasi (kontur bertumpuk, garis hampir lurus, koordinat pecahan) tidak diulang di sini. Overlap toh dihapus saat ekspor.

### Kerning

Pemeriksaan ini juga disebut **Audit Kerning**. Bab [Kerning](/spacing/kerning/) menjelaskan pasangan, grup, dan pengecualian.

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Kerning glyph yang tidak ada | Pasangan menyebut glyph atau grup yang tidak ada, jadi tidak berpengaruh apa pun | Peringatan | menghapus pasangannya |
| Anggota grup tidak ada | Grup kerning mendaftarkan glyph yang tidak ada | Peringatan | mengeluarkannya dari grup |
| Glyph di dua grup | Satu glyph ada di dua grup sisi kiri atau dua grup sisi kanan (hanya boleh satu per sisi) | Error | — |
| Pengecualian yang tidak mengubah apa pun | Nilai pengecualian sama dengan nilai dari grupnya | Catatan | menghapus pengecualiannya |
| Kerning nol | Pasangan di-kerning 0 dan tidak menimpa apa pun | Catatan | menghapus pasangannya |
| Kerning sangat besar | Pasangan di-kerning lebih dari 30% em, biasanya salah ketik | Peringatan | — |
| Kerning membuat glyph bertabrakan | Dengan kerning ini kedua bentuk bertumpuk lebih dari 1% em | Peringatan | — |

Pemeriksaan tabrakan mengukur bentuk yang sebenarnya. Bentuk yang memang sudah bersentuhan tanpa kerning (disengaja, seperti di sebagian font tulisan tangan) tidak dihitung; hanya tumpukan yang disebabkan kerning. Untuk pasangan grup, yang dilaporkan adalah pasangan anggota yang tumpukannya paling besar.

### Warna

Pemeriksaan ini hanya berjalan di [font warna](/reference/glossary/#color-font). Lihat [Font warna](/advanced/color/).

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Warna di luar palet | Sebuah layer memakai warna palet yang tidak ada; tampil hitam atau tidak tampil sama sekali | Error | — |
| Glyph layer tidak ada | Layer warna menyebut glyph yang tidak ada | Error | menghapus layernya |
| Layer warna kosong | Layer warna belum punya outline, jadi tidak menambah apa pun | Peringatan | — |
| Palet berbeda ukuran | Jumlah warna di setiap palet tidak sama | Catatan | melengkapi palet yang pendek |
| Tidak ada outline cadangan | Glyph warna tidak punya outline sendiri, sehingga aplikasi tanpa dukungan warna tidak menampilkan apa-apa | Catatan | menggabungkan layer menjadi outline-nya |

### Fitur OpenType

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Error kode fitur | [Kode fitur](/reference/glossary/#feature-code) tidak bisa dikompilasi; pesannya menyebut baris dan alasannya | Error | — |

Mengkliknya membuka editor fitur di baris yang bermasalah. Lihat [Fitur OpenType](/opentype/features/). Font dengan kode fitur rusak tidak bisa diekspor, jadi temuan ini penting. Periksa Font tetap memeriksa bagian lain font hasil kompilasi dengan membuat salinan tanpa kode fitur.

### Font hasil kompilasi

Untuk pemeriksaan ini FontEasy membuat fontnya, seperti untuk pratinjau, lalu memeriksa hasilnya.

| Pemeriksaan | Yang dicari | Tingkat | Perbaikan |
|---|---|---|---|
| Font bisa dibuat | Font bisa dikompilasi atau tidak; bila tidak, pesannya menyebut alasannya | Error | — |
| Terpotong di Windows | Ada glyph yang lebih tinggi dari ascent Windows atau lebih rendah dari descent Windows, sehingga dipotong Windows | Error | menaikkan ascent dan descent Windows |
| Embedding | Font membatasi penyematan di dokumen (setelan lama bernama fsType) | Catatan | mengizinkan embedding |
| Jarak baris sama di semua sistem | Jarak baris di macOS (hhea) dan Windows berbeda | Catatan | menyalin nilai Windows ke hhea |
| Bit gaya | Penanda bold dan italic di dua tabel font tidak sepakat | Error | — |
| Peta karakter | Font tidak punya peta karakter Unicode, jadi tidak bisa diketik | Error | — |

Totalnya 41 pemeriksaan, ditambah 5 untuk font warna. Setiap pemeriksaan bisa menghasilkan beberapa pesan berbeda; panel menampilkan pesan yang persis.

## Laporan HTML

Laporan berguna bila Anda ingin menyimpan catatan sebuah rilis, mengirim temuan kepada orang yang membantu Anda, atau menyelesaikan daftar panjang di luar FontEasy.

1. Jalankan **Periksa Font** (<kbd>F7</kbd>).
2. Klik **Simpan Laporan…**.
3. Pilih folder. Nama file yang disarankan adalah nama font Anda ditambah `-check.html`, misalnya `NusantaraSans-Bold-check.html`.
4. Klik **Save** (atau **Simpan**, tergantung bahasa Windows Anda).

Bilah status menampilkan **Laporan disimpan di …**. Buka file itu di browser apa pun. Isinya nama font, ringkasan seperti "0 error, 6 peringatan, 27 catatan", dan semua temuan dalam bagian yang sama seperti di panel, masing-masing dengan tingkat keparahan, nama pemeriksaan, dan pesannya. Berbeda dengan panel, laporan tidak pernah dipotong dan selalu memuat catatan meskipun Anda menyembunyikannya. Laporan ditulis dalam bahasa yang sedang dipakai FontEasy.

## Periksa Font Saya di Mode Sederhana

Di Mode Sederhana pemeriksaannya sama, dengan awal yang lebih ramah.

- Panel **Perjalanan Font** punya langkah **Periksa font Anda**, tepat sebelum **Uji dan ekspor**. Tombolnya **Periksa Font Saya**. Sebelum pemeriksaan pertama, langkah ini bertuliskan "Nama, metrics, outline, dan kerning diperiksa sebelum rilis"; sesudahnya ia menunjukkan sisa error dan peringatan, atau **Tidak ada masalah.**
- **Font › Periksa Font…** dan <kbd>F7</kbd> bekerja seperti di Mode Pro.
- Sebelum pemeriksaan pertama, tombol di atas panel Periksa Font bernama **Periksa Font Saya**.
- **Catatan** awalnya disembunyikan, jadi Anda hanya melihat error dan peringatan. Centang **Catatan** untuk melihatnya juga.

![Periksa Font Saya di Mode Sederhana: panel Periksa Font menampilkan bagian Outline dengan tiga peringatan, masing-masing dengan tombol Perbaiki; kotak Catatan tidak dicentang.](screen:fontcheck-simple)

Selebihnya, termasuk tombol **Perbaiki**, **Perbaiki Semua**, dan **Simpan Laporan…**, bekerja sama.

## Audit Kerning

Saat sedang menggarap kerning, Anda mungkin hanya ingin melihat temuan kerning. Di Mode Pro, pilih **Kerning › Audit Kerning**.

Pemeriksaannya sama, tetapi panel Periksa Font hanya menampilkan bagian **Kerning**. Label **Kerning ×** yang disorot di sebelah penghitung menandakan filter sedang aktif; klik label itu untuk menampilkan semua bagian lagi. **Perbaiki Semua** kemudian hanya memperbaiki temuan kerning.

![Audit Kerning untuk Source Serif 4: tiga peringatan, di antaranya “Kerning T o (-900) membuat keduanya bertumpuk 623 unit.”](screen:kerningaudit)

Pada contoh ini seseorang memberi kerning −900 unit pada `T` dan `o`. Audit melaporkan bahwa kerningnya sangat besar sekaligus membuat kedua bentuk bertumpuk 623 unit. Klik temuannya untuk membuka `T` dan `o` dengan tool Kerning dan membetulkan nilainya. Bab [Kerning](/spacing/kerning/) menjelaskan caranya.

## Memeriksa sebelum ekspor

Periksa Font berjalan ketika Anda memintanya, tetapi bisa juga dijadikan bagian dari ekspor. Di profil ekspor (Mode Pro), opsi **Jalankan Periksa Font dulu dan berhenti kalau ada error** menjalankan semua pemeriksaan sebelum profil menulis file apa pun. Jika ada error, ekspor berhenti dan menyebutkan jumlah error yang ditemukan, dengan error pertama sebagai contoh. Peringatan dan catatan tidak menghentikannya. Profil bawaan **Google Fonts** mengaktifkan opsi ini. Lihat [Mengekspor font](/production/export/#profil-ekspor).

Untuk skrip, perintah `font.check` dan `font.fixIssues` melakukan hal yang sama seperti panel; lihat [Scripting](/power/scripting/).

## Bila ada yang tidak beres

- **Temuan tidak hilang setelah Anda memperbaikinya sendiri.** Klik **Periksa Lagi**. Daftar tidak diperbarui sendiri setelah Anda mengedit font; baris **Font sudah berubah sejak pemeriksaan ini.** mengingatkan Anda.
- **"Font gagal dibuat".** Baca sisa pesannya: di situ alasannya disebut. Sering kali penyebabnya glyph atau komponen yang tidak ada, atau masalah di kode fitur. Bereskan itu dulu; banyak pemeriksaan lain butuh font yang bisa dibuat.
- **Perbaiki tidak melakukan apa-apa, atau muncul pesan Gagal memperbaiki.** Mungkin masalahnya sudah hilang. Jalankan **Periksa Lagi**.
- **Ratusan peringatan "belum punya outline".** Font Anda berisi karakter yang belum digambar. Gambarlah, atau hapus glyph yang tidak akan Anda gambar, supaya font tidak berisi huruf kosong.
- **Peringatan yang tidak Anda setujui.** Itu boleh. Pemeriksaan mengikuti kebiasaan umum, tetapi display font dengan *swash* raksasa atau tabrakan yang disengaja boleh saja melanggar aturan. Pastikan saja tidak ada error.

## Ringkasan

- **Font › Periksa Font…** (<kbd>F7</kbd>) memeriksa seluruh font di latar dan menampilkan temuan di panel **Periksa Font**, dalam delapan bagian.
- **Error** wajib diperbaiki, **peringatan** biasanya sebaiknya diperbaiki, **catatan** adalah informasi; kotak **Catatan** menyembunyikannya.
- Klik temuan untuk menuju kolom, glyph, pasangan, grup, atau baris yang dimaksud; arahkan mouse untuk melihat saran.
- **Perbaiki** dan **Perbaiki Semua** memperbaiki sekitar dua puluh jenis masalah; masing-masing satu langkah undo.
- **Simpan Laporan…** menulis semua temuan ke file HTML.
- Mode Sederhana menyebutnya **Periksa Font Saya** dan punya langkah **Periksa font Anda** di Perjalanan Font.
- **Kerning › Audit Kerning** hanya menampilkan temuan kerning.
- Jalankan **Periksa Lagi** setelah perubahan, dan periksa sebelum setiap ekspor yang akan dibagikan.

## Coba sendiri

1. Buka font yang sedang Anda kerjakan dan tekan <kbd>F7</kbd>. Hitung error, peringatan, dan catatannya. Klik sebuah temuan di bagian **Nama dan kredit** dan lihat kolom Info Font mana yang terbuka. Isi kolomnya, klik **OK**, lalu klik **Periksa Lagi**.
2. Di salinan uji font Anda, beri kerning −600 pada `A` dan `V` di Jendela Kerning. Pilih **Kerning › Audit Kerning** (Mode Pro) dan temukan peringatan tabrakannya. Klik peringatan itu, betulkan nilainya, lalu jalankan audit lagi. Setelah itu klik **Simpan Laporan…** dan buka file HTML-nya di browser.
