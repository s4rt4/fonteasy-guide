---
title: Mengekspor font
description: Ubah source FontEasy Anda menjadi file font yang bisa dipasang dan dipakai orang, pilih format yang tepat untuk desktop dan web, lalu siapkan profil ekspor yang menulis semuanya sekaligus.
---

Selama Anda mendesain, font Anda tinggal di FontEasy sebagai *source* (berkas sumber): sebuah folder [UFO](/reference/glossary/#ufo) (atau designspace dengan beberapa UFO) yang berisi outline, spasi, kerning, dan pengaturan. Aplikasi seperti Word, Photoshop, atau browser tidak bisa membaca UFO. Mereka butuh [file font](/reference/glossary/#font-file) yang sudah dikompilasi: `.ttf`, `.otf`, `.woff`, atau `.woff2`. Membuat file-file itu disebut [ekspor](/reference/glossary/#export).

Mengekspor mirip memanggang kue. Source adalah resep dan bahan-bahannya; Anda selalu bisa mengubahnya. Font hasil ekspor adalah kuenya: siap disajikan, tetapi telurnya tidak bisa dikeluarkan lagi. Karena itu source selalu Anda simpan, dan Anda mengekspor ulang setiap kali ada perubahan.

Bab ini menjelaskan berbagai format font dengan bahasa sederhana dan membantu Anda memilih yang tepat, lalu membahas setiap opsi di dialog Ekspor Font, profil ekspor, dan cara mengekspor gaya-gaya terpisah dari variable font.

Dalam bab ini Anda akan mempelajari:

- apa itu TTF, OTF, WOFF, WOFF2, dan variable font, serta mana yang dipilih untuk aplikasi desktop dan untuk web;
- cara mengekspor dengan **Berkas › Ekspor › Ekspor Font…** dan fungsi setiap opsinya;
- apa itu menghapus overlap dan *hinting*, dan kapan keduanya penting;
- cara membuat font web lengkap dengan file CSS siap pakai;
- bagaimana profil ekspor menyimpan pengaturan dan mengekspor beberapa set sekaligus, termasuk *subsetting*;
- cara mengekspor instance statis dari variable font;
- ke mana file disimpan dan bagaimana namanya.

## Format font, dijelaskan

[Format font](/reference/glossary/#font-format) adalah jenis file tempat font disimpan. Semua format yang ditulis FontEasy pada dasarnya font [OpenType](/reference/glossary/#opentype): isinya glyph, spasi, kerning, dan fitur yang sama. Bedanya ada pada cara outline disimpan dan cara file dikemas.

### TTF: TrueType

File [TTF](/reference/glossary/#ttf) (`.ttf`) menyimpan outline sebagai kurva [TrueType](/reference/glossary/#truetype), yang terdiri dari [kurva kuadratik](/reference/glossary/#quadratic-curve). Inilah format yang paling luas dukungannya. Setiap sistem operasi dan hampir setiap aplikasi bisa memakainya. Font TrueType juga bisa membawa [hinting](/reference/glossary/#hinting), instruksi yang membuat teks kecil lebih tajam di layar, terutama di Windows.

FontEasy menggambar dengan [kurva kubik](/reference/glossary/#cubic-curve), seperti Illustrator. Saat menulis TTF, FontEasy mengubahnya ke kurva kuadratik secara otomatis. Anda tidak perlu melakukan apa-apa; perbedaannya terlalu kecil untuk terlihat.

### OTF: OpenType dengan outline CFF

File [OTF](/reference/glossary/#otf) (`.otf`) di sini berarti font OpenType dengan outline [CFF](/reference/glossary/#cff), yaitu kurva kubik, jenis yang sama dengan yang Anda gambar. FontEasy menulisnya langsung dari kurva Anda sendiri, jadi outline-nya persis seperti yang Anda gambar. Percetakan dan desainer yang bekerja di aplikasi Adobe sering menyukai font OTF.

FontEasy tidak memberi hinting pada file `.otf`, dan tidak membuat `.otf` variabel (format yang disebut CFF2). Variable font selalu diekspor sebagai TrueType.

:::note
Kata "OpenType" agak membingungkan karena punya dua arti. Secara umum, OpenType adalah standar font modern yang diikuti file `.ttf` maupun `.otf`. Dalam percakapan sehari-hari, "font OpenType" sering berarti file `.otf`. Di dialog Ekspor FontEasy, opsi `.otf` bernama **OpenType CFF (.otf)**.
:::

### WOFF dan WOFF2: font untuk situs web

[WOFF](/reference/glossary/#woff) (`.woff`) dan WOFF2 (`.woff2`) adalah font yang sama, dikompres untuk web agar halaman lebih cepat dimuat. Browser bisa memakainya; aplikasi desktop tidak bisa memasangnya.

- **WOFF2** mengemas font jauh lebih kecil. Semua browser masa kini mendukungnya. Inilah yang dipakai untuk situs web.
- **WOFF** adalah versi lamanya, sedikit lebih besar. Anda hanya membutuhkannya untuk browser yang sangat lama.

### Variable font

[Variable font](/reference/glossary/#variable-font) memuat serangkaian gaya dalam satu file, misalnya semua ketebalan dari Light sampai Black, di sepanjang satu atau beberapa [sumbu](/reference/glossary/#axis). Jika font Anda berupa designspace dengan beberapa master (lihat [Variable font](/advanced/variable/)), FontEasy mengekspornya sebagai satu variable font, dalam bentuk `.ttf`, `.woff`, atau `.woff2`. Belum semua aplikasi memahami variable font; untuk aplikasi seperti itu Anda juga bisa mengekspor setiap gaya bernama sebagai font *statis* tersendiri (lihat [Mengekspor instance statis](#mengekspor-instance-statis)).

### Format mana yang dipilih?

![Dari source UFO Anda: aplikasi desktop memakai OTF atau TTF, situs web memakai WOFF2 dengan CSS, Google Fonts memakai TTF ber-hinting; variable font selalu TrueType.](diagram:export-which-format)

| Anda ingin… | Pilih |
|---|---|
| Memasang font di komputer sendiri, memakainya di Word atau aplikasi desain | **TTF** (ber-hinting), atau **OTF**, atau keduanya |
| Memberikan atau menjual font untuk komputer orang lain | **OTF** dan **TTF**, agar mereka bisa memilih |
| Memakai font di situs web | **WOFF2** beserta file **CSS** |
| Mendukung browser yang sangat lama juga | **WOFF2** dan **WOFF** |
| Mengirim font ke Google Fonts | **TTF** ber-hinting, ditambah instance statis dari variable font |
| Mengekspor variable font | **TTF** untuk desktop, **WOFF2** untuk web |

Kalau ragu, ekspor **TTF** ber-hinting. Format ini berfungsi di mana saja.

:::caution
Jangan memasang `.ttf` dan `.otf` dari font yang sama secara bersamaan. Namanya sama, dan aplikasi bisa tertukar. Pasang salah satunya saja.
:::

## Dialog Ekspor Font

1. Buka font Anda.
2. Pilih **Berkas › Ekspor › Ekspor Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>).
3. Centang format yang Anda inginkan di bawah **Format**.
4. Periksa opsi-opsinya (dijelaskan di bawah).
5. Periksa **Folder** dan **Nama file**.
6. Klik **Ekspor**.

![Dialog Ekspor Font: tautan Profil Ekspor…, empat kotak centang format dengan TrueType tercentang, opsi CSS, overlap, dan hinting, lalu folder dan nama file.](screen:export)

FontEasy membuat font di latar, jadi Anda bisa terus bekerja. Setelah selesai, pesan **Font diekspor** mendaftarkan file dan foldernya, dan bilah status menampilkan **Diekspor ke …** beserta foldernya. Jika ada yang menghentikan proses, pesan **Font gagal dibuat** menjelaskan sebabnya; sering kali [Periksa Font](/production/quality/) memberi keterangan lebih lengkap.

Di Mode Sederhana, langkah terakhir **Perjalanan Font**, yaitu **Uji dan ekspor**, punya tombol **Ekspor…** yang membuka dialog yang sama.

### Format

Keempat kotak centangnya:

- **TrueType (.ttf) — desktop**
- **OpenType CFF (.otf) — desktop, cetak**
- **WOFF (.woff) — browser lama**
- **WOFF2 (.woff2) — web**

Anda boleh mencentang kombinasi apa pun; FontEasy membuat font sekali lalu menulis setiap format dari hasil itu. Untuk variable font, **OpenType CFF (.otf)** berwarna abu-abu; arahkan penunjuk ke situ untuk melihat alasannya.

### Tulis juga file CSS berisi aturan @font-face

Untuk font web, opsi ini menulis file `.css` kecil di samping file WOFF2 dan WOFF yang memberi tahu halaman web cara memuatnya. Centang bersama WOFF2 atau WOFF, karena file CSS menunjuk ke file-file itu. Lihat [CSS untuk font web](#css-untuk-font-web).

### Hapus overlap (source Anda tetap utuh)

Selama menggambar, membangun huruf dari bentuk yang saling tumpuk itu praktis, misalnya `H` dari dua batang dan satu palang. Di font jadi, kontur yang bertumpuk bisa tampil sebagai garis tipis atau lubang di sebagian aplikasi dan printer. [Menghapus overlap](/reference/glossary/#remove-overlap) menggabungkannya menjadi satu outline yang bersih.

Bila opsi ini aktif (bawaannya aktif), FontEasy menggabungkan overlap hanya di file hasil ekspor. Source Anda tetap menyimpan bentuk-bentuk terpisah, sehingga masih bisa diedit. Biarkan aktif kecuali Anda punya alasan khusus.

Variable font membutuhkan overlap-nya, karena bentuk-bentuknya bergerak berbeda antarmaster. Untuk variable font, dialog menampilkan **Overlap dipertahankan (dibutuhkan variable font) dan diberi tanda agar dirender dengan benar.** sebagai gantinya, dan FontEasy menandai glyph yang bertumpuk agar aplikasi mengisinya dengan benar.

### Beri hinting pada outline TrueType (ttfautohint)

Opsi ini menambahkan [hinting](/reference/glossary/#hinting) pada outline TrueType. Untuk memahaminya, pikirkan bagaimana teks tampil di layar.

Layar adalah grid piksel. Pada ukuran besar, pikselnya cukup banyak untuk menggambar huruf dengan halus. Pada ukuran kecil, misalnya 12 piksel untuk seluruh em, sebuah batang mungkin selebar 1,4 piksel dan mulai di tengah piksel. Layar lalu menampilkannya sebagai dua kolom setengah abu-abu, dan hurufnya tampak lembek dan buram. Hinting menambahkan instruksi kecil ke font yang menggeser outline ke grid piksel pada ukuran kecil: batang menjadi tepat satu atau dua piksel, tinggi-x jatuh pada piksel utuh, dan teks tampak tajam.

![Huruf n pada 15 piksel per em: tanpa hinting tepinya jatuh di antara piksel dan tampak abu-abu; dengan hinting outline digeser ke grid dan pikselnya pekat.](diagram:export-hinting)

Menulis instruksi hinting dengan tangan adalah pekerjaan ahli yang lambat. *Autohinting* melakukannya otomatis dengan menganalisis outline Anda. FontEasy memakai **ttfautohint**, *autohinter* gratis yang terkenal, yang sudah disertakan dalam unduhan FontEasy (di folder `tools` di samping `FontEasy.exe`).

Perlu diketahui:

- Hinting paling berpengaruh untuk teks berukuran kecil di Windows. macOS umumnya mengabaikannya, dan pada ukuran besar tidak ada bedanya.
- Hinting membuat file sedikit lebih besar.
- Hanya file statis berbasis TrueType yang diberi hinting: `.ttf`, serta `.woff` dan `.woff2` yang dibuat darinya. File `.otf` dan variable font tidak diberi hinting, dan kotak centangnya tidak ditampilkan untuk variable font.
- Source Anda tidak berubah; hinting hanya ditambahkan ke file hasil ekspor.

Opsi ini aktif secara bawaan. Jika FontEasy tidak menemukan ttfautohint, kotak centangnya abu-abu dan di sebelahnya tertulis **ttfautohint tidak ditemukan** dengan tautan **Cari…**. Klik tautan itu dan pilih `ttfautohint.exe`; FontEasy akan mengingat lokasinya. Anda juga bisa mengaturnya di **Edit › Preferensi…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>), halaman **Umum**, bagian **Ekspor**, dengan **Pilih…** (dan **Atur Ulang** untuk kembali mencari di tempat-tempat biasa).

### Font warna: tulis juga tabel SVG

Opsi ini hanya muncul untuk [font warna](/reference/glossary/#color-font). Selain tabel warna yang dipakai kebanyakan aplikasi, opsi ini menambahkan salinan kedua glyph warna dalam format [OpenType-SVG](/reference/glossary/#opentype-svg), yang didukung sebagian aplikasi lain. Lihat [Font warna](/advanced/color/).

### Folder dan nama file

- **Folder** adalah tempat file disimpan. Ketik path-nya atau klik **Telusuri…**. Jika font Anda sudah disimpan, FontEasy menyarankan folder bernama `fonts` di sampingnya. Untuk font yang belum pernah disimpan, sarannya `Documents\FontEasy` di folder pengguna Anda. Folder dibuat bila belum ada.
- **Nama file** adalah nama tanpa ekstensi. FontEasy menyarankan nama keluarga dan nama gaya yang disambung tanda hubung, tanpa spasi: `NusantaraSans-Bold`. Untuk variable font sarannya `NusantaraSans-VF`. Setiap format menambahkan ekstensinya sendiri: `NusantaraSans-Bold.ttf`, `NusantaraSans-Bold.woff2`.

:::caution
Ekspor menimpa file bernama sama di folder itu tanpa bertanya. Biasanya memang itu yang Anda mau (ekspor baru dari font yang sama), tetapi jangan arahkan ekspor ke folder berisi file yang ingin Anda simpan.
:::

Jika Anda lupa mencentang format, atau folder atau nama dibiarkan kosong, dialog menampilkan **Pilih minimal satu format.** atau **Pilih folder dan nama file.** lalu menunggu.

## Mengekspor untuk web

Untuk situs web, pilih **Berkas › Ekspor › Ekspor Font Web…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>). Dialog yang sama terbuka dengan **WOFF (.woff)**, **WOFF2 (.woff2)**, dan opsi CSS sudah tercentang, dan folder yang disarankan bernama `webfonts` di samping font Anda. Hapus centang WOFF jika Anda tidak perlu mendukung browser yang sangat lama.

### CSS untuk font web

File CSS memberi tahu browser letak file font dan gayanya. Untuk Bold dari "Nusantara Sans", isinya seperti ini:

```css
@font-face {
  font-family: "Nusantara Sans";
  src: url("NusantaraSans-Bold.woff2") format("woff2"),
       url("NusantaraSans-Bold.woff") format("woff");
  font-weight: 700;
  font-style: normal;
  font-display: swap;
}
```

Arti setiap baris:

- `font-family` adalah nama keluarga dari Info Font. Semua gaya dalam satu keluarga memakai nama yang sama, jadi halaman web Anda bisa berpindah gaya dengan `font-weight` dan `font-style`.
- `src` mendaftarkan file-filenya, format terbaik lebih dulu. Browser memakai yang pertama ia pahami.
- `font-weight` adalah [weight class](/production/font-info/#weight-class) dari Info Font (700 untuk Bold). Jika kolomnya kosong, FontEasy menurunkannya dari nama gaya. Untuk variable font dengan sumbu ketebalan, nilainya berupa rentang, misalnya `100 900`.
- `font-style` bernilai `italic` bila nama gaya mengandung "Italic" atau "Oblique", selain itu `normal`.
- `font-display: swap` membuat browser menampilkan teks dengan font cadangan selama font Anda dimuat, alih-alih tidak menampilkan apa pun.

Untuk memakai font di situs Anda:

1. Unggah file `.woff2` (dan `.woff`) serta file `.css` ke folder yang sama di server web.
2. Tautkan file CSS di `<head>` halaman Anda, atau salin isinya ke stylesheet Anda sendiri.
3. Pakai nama keluarganya di CSS, dengan font cadangan:

```css
body { font-family: "Nusantara Sans", sans-serif; }
h1 { font-family: "Nusantara Sans", sans-serif; font-weight: 700; }
```

Jika Anda mengekspor setiap gaya ke folder yang sama, Anda mendapat satu file CSS per gaya. Anda boleh menggabungkannya menjadi satu file.

## Profil ekspor

Mengekspor keluarga font yang sudah jadi biasanya berarti beberapa kali ekspor: OTF dan TTF untuk pemakai desktop, WOFF2 untuk situs web Anda, mungkin satu set khusus untuk pustaka font. Memilih opsi yang sama setiap kali itu membosankan dan mudah keliru. **Profil ekspor** mengingat satu set pilihan (format, folder, hinting, karakter, dan lainnya) dengan sebuah nama, dan Anda bisa menjalankan satu profil atau semuanya sekaligus.

Profil ekspor adalah fitur Mode Pro. Bukalah lewat **Berkas › Ekspor › Profil Ekspor…**, atau lewat tautan **Profil Ekspor…** di bagian atas dialog Ekspor Font.

![Dialog Profil Ekspor: profil Desktop, Web, dan Google Fonts di kiri; di kanan folder, format, karakter, dan opsi profil Desktop.](screen:exportprofiles)

### Profil bawaan

Setiap font dimulai dengan tiga profil:

| Profil | Format | Folder | Juga |
|---|---|---|---|
| **Desktop** | OTF dan TTF | `fonts/desktop` | ber-hinting |
| **Web** | WOFF2 | `fonts/web` | ber-hinting, subset Latin, file CSS |
| **Google Fonts** | TTF | `fonts/googlefonts` | ber-hinting, menjalankan Periksa Font dulu, instance statis dari variable font |

Anda bisa mengubahnya, menambah profil sendiri, dan menghapus yang tidak perlu. **Kembalikan Bawaan** memunculkan kembali ketiga profil ini.

Profil disimpan **di dalam font Anda** (di UFO), sehingga ikut terbawa: buka font itu di komputer lain dan profilnya tetap ada. Mengubah profil menjadi satu langkah di riwayat undo.

### Mengedit profil

Pilih sebuah profil di daftar sebelah kiri. Di kanan Anda bisa mengatur:

- **Nama**: sebutan profil. Dua profil tidak boleh bernama sama.
- **Folder**: tempat filenya disimpan. Folder relatif seperti `fonts/web` dimulai dari folder tempat font Anda disimpan; baris di bawah kolom menunjukkan folder itu (**Folder relatif dimulai dari …**). Untuk font yang belum pernah disimpan, titik awalnya `Documents\FontEasy`. Anda juga bisa memberi path lengkap, atau mengklik **Telusuri…**.
- **Format**: empat format yang sama seperti di dialog Ekspor Font.
- **Karakter**: **Semua glyph**, **Latin (ASCII, Eropa Barat)**, atau **Latin + Latin Extended**. Lihat [Subsetting](#subsetting) di bawah.
- **Opsi**:
  - **Beri hinting pada outline TrueType (ttfautohint)**;
  - **Hapus overlap (source Anda tetap utuh)**;
  - **Tulis juga file CSS berisi aturan @font-face**;
  - **Jalankan Periksa Font dulu dan berhenti kalau ada error**;
  - **Ekspor juga instance statis** (hanya tampil untuk variable font);
  - **Font warna: tulis juga tabel SVG (untuk aplikasi tanpa dukungan COLR)**.

Di bawah daftar, **Tambah** membuat profil baru, **Duplikat** menyalin profil yang dipilih, dan **Hapus** menghapusnya (profil terakhir tidak bisa dihapus).

### Menjalankan profil

1. Buka **Berkas › Ekspor › Profil Ekspor…**.
2. Pilih sebuah profil lalu klik **Ekspor “Desktop”** (tombolnya menampilkan nama profil yang dipilih), atau klik **Ekspor Semua** untuk menjalankan semua profil.
3. Dialog tertutup dan ekspor berjalan di latar.

Setelah selesai, pesan **Ekspor profil selesai** menyebutkan, untuk setiap profil, berapa file yang ditulis dan di mana, beserta catatan seperti "ttfautohint not found; fonts are not hinted" (ttfautohint tidak ditemukan, font tidak diberi hinting) atau "variable fonts export as TrueType; .otf skipped" (variable font diekspor sebagai TrueType, .otf dilewati). Jika sebuah profil mengaktifkan **Jalankan Periksa Font dulu dan berhenti kalau ada error** dan font masih punya error, profil itu berhenti dan menyebutkan jumlah errornya, misalnya "Google Fonts: Font Check found 2 error(s), for example: …". Profil lain tetap berjalan.

**Tutup** menyimpan perubahan profil tanpa mengekspor.

### Subsetting

Font untuk banyak bahasa bisa berisi ribuan glyph: Latin, Sirilik, Yunani, dan lainnya. Situs web berbahasa Indonesia atau Inggris hanya butuh glyph Latin. Padahal setiap glyph yang tidak terpakai tetap harus diunduh setiap pengunjung. *[Subsetting](/reference/glossary/#subsetting)* berarti membuang glyph yang tidak dibutuhkan untuk keperluan tertentu, agar file lebih kecil.

![Di kiri, font dengan glyph Latin, Latin Extended, Sirilik, dan Yunani; di kanan, subset Latin-nya hanya menyimpan baris Latin.](diagram:export-subset)

Pengaturan **Karakter** di profil menawarkan dua subset, rentang yang sama dengan yang dipakai Google Fonts untuk font webnya:

- **Latin (ASCII, Eropa Barat)**: Latin dasar dan huruf beraksen Eropa Barat (Latin-1), ditambah tanda baca dan simbol umum seperti tanda euro. Cukup untuk bahasa Indonesia, Melayu, Inggris, dan sebagian besar bahasa Eropa Barat.
- **Latin + Latin Extended**: juga huruf Eropa Tengah (Polandia, Ceko, Turki …), Vietnam, dan Latin lanjutan lainnya.

FontEasy berhati-hati dengan apa yang disimpan. Selain glyph untuk karakter yang dipilih, ia juga menyimpan:

- [komponen](/reference/glossary/#component) penyusun glyph-glyph itu;
- *alternate* dan ligaturnya, seperti `a.sc` atau `f_i`;
- setiap glyph yang disebut di kode fitur yang Anda tulis sendiri;
- `.notdef`.

Kerning dan grup kerning dipangkas menyesuaikan. Source Anda tidak pernah berubah; hanya file hasil ekspor yang lebih kecil.

:::caution
Pakai subset untuk font web, karena ukuran file penting di sana. Untuk font desktop, tetap pilih **Semua glyph**: bisa jadi seseorang butuh satu huruf beraksen yang Anda buang.
:::

## Mengekspor instance statis

Variable font berisi serangkaian gaya, dan designspace-nya biasanya menamai sebagian di antaranya sebagai [instance](/reference/glossary/#instance): "Light", "Regular", "Bold", dan seterusnya. Sebagian aplikasi, printer lama, dan pustaka font menginginkan setiap gaya itu sebagai font biasa (statis) yang terpisah. FontEasy bisa membuatnya.

1. Buka font designspace Anda.
2. Pilih **Berkas › Ekspor › Instance Statis…** (Mode Pro), atau klik tautan **Ekspor Instance Statis…** di dialog Ekspor Font.
3. Di bawah **Instance**, centang gaya yang Anda inginkan. Awalnya semua tercentang.
4. Di bawah **Format**, centang formatnya.
5. Atur **Hapus overlap (source Anda tetap utuh)** dan **Beri hinting pada outline TrueType (ttfautohint)** seperti untuk font statis lainnya.
6. Periksa **Folder**. FontEasy menyarankan folder bernama `instances` di samping font Anda.
7. Klik **Ekspor**.

![Dialog Ekspor Instance Statis untuk Mutator Sans: semua instance tercentang, TrueType dipilih, overlap dihapus, dan foldernya.](screen:exportinstances)

Setiap instance dihitung ([diinterpolasi](/reference/glossary/#interpolation)) dari master lalu ditulis sebagai font tersendiri, dinamai dengan keluarga dan gaya instance itu, misalnya `MutatorSans-LightCondensed.ttf`. Setelah selesai, pesan **Instance statis diekspor** menyebutkan jumlah file yang ditulis. Jika ada glyph yang tidak bisa diinterpolasi karena tidak kompatibel antarmaster, pesannya mendaftarkannya per instance; glyph itu memakai outline master bawaan. Lihat [Variable font](/advanced/variable/) untuk membuatnya kompatibel.

Di profil ekspor, **Ekspor juga instance statis** melakukan hal yang sama dan menulis font statisnya ke folder `static` di dalam folder profil.

## Lokasi dan nama file

Ringkasan nilai bawaannya:

| Ekspor | Folder yang disarankan | Nama file |
|---|---|---|
| **Ekspor Font…** | `fonts` di samping font Anda | `Keluarga-Gaya.ttf`, `.otf`, `.woff`, `.woff2` |
| **Ekspor Font Web…** | `webfonts` di samping font Anda | `Keluarga-Gaya.woff2`, `.woff`, `.css` |
| **Instance Statis…** | `instances` di samping font Anda | `Keluarga-Gaya.ext` per instance |
| Profil | folder profil, relatif terhadap folder font Anda | `Keluarga-Gaya.ext`; instance di `static` |

"Keluarga" dan "Gaya" adalah nama dari Info Font dengan spasi dibuang; variable font bernama `Keluarga-VF`. Jika font Anda belum pernah disimpan, FontEasy menyarankan `Documents\FontEasy` di folder pengguna Anda (dan folder bernama `FontEasy Exports` untuk instance statis).

Pisahkan file hasil ekspor dari source. Kebiasaan yang baik: satu folder per proyek berisi UFO, dan hasil ekspor di folder `fonts` di sebelahnya, persis seperti saran FontEasy.

## Sebelum mengekspor

Daftar singkat sebelum mengekspor font yang akan dibagikan:

1. Lengkapi [Info Font](/production/font-info/): nama keluarga dan gaya, versi, hak cipta, desainer, lisensi, weight class.
2. Tekan <kbd>F7</kbd> dan perbaiki semua error di [Periksa Font](/production/quality/).
3. Simpan source Anda (<kbd>Ctrl</kbd>+<kbd>S</kbd>).
4. Ekspor.
5. [Uji](/production/testing-publishing/) file hasil ekspornya, bukan hanya pratinjau di FontEasy.

## Bila ada yang tidak beres

- **"Font gagal dibuat".** Pesannya menyebut alasannya. Jalankan **Font › Periksa Font…**; temuan **Font bisa dibuat** dan **Error kode fitur** biasanya menunjuk ke masalahnya.
- **Kotak centang hinting abu-abu.** ttfautohint tidak ditemukan. Klik **Cari…** dan pilih `ttfautohint.exe` dari folder `tools` di instalasi FontEasy Anda.
- **Kotak centang OTF abu-abu.** Font Anda variable font, yang hanya diekspor sebagai TrueType.
- **Font hasil ekspor tampak berbeda di sebuah aplikasi.** Pastikan aplikasi memakai file yang baru: banyak aplikasi tetap memakai versi lama sampai dijalankan ulang. Lihat [Uji dan terbitkan](/production/testing-publishing/).
- **Sebagian karakter hilang dari font web.** Profilnya mungkin memakai subset. Pilih **Semua glyph** atau **Latin + Latin Extended** di **Karakter**.

## Ringkasan

- Ekspor mengubah source menjadi file font. Simpan source-nya; ekspor ulang setelah ada perubahan.
- **TTF** berfungsi di mana saja dan bisa diberi hinting; **OTF** menyimpan kurva kubik Anda persis; **WOFF2** (dan **WOFF** untuk browser lama) untuk situs web; variable font selalu TrueType.
- **Berkas › Ekspor › Ekspor Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>) menulis kombinasi format apa pun; **Ekspor Font Web…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>) langsung memilih WOFF, WOFF2, dan CSS.
- **Hapus overlap** merapikan outline hasil ekspor; **hinting** dengan ttfautohint menajamkan teks kecil di Windows.
- File CSS berisi aturan `@font-face` siap pakai dengan `font-weight` dan `font-style`.
- **Profil ekspor** (Pro) menyimpan set format, folder, dan opsi di dalam font; **Ekspor Semua** menjalankannya bersama. Subset membuat font web lebih kecil.
- **Instance Statis…** menulis setiap gaya bernama dari variable font sebagai font tersendiri.
- File dinamai `Keluarga-Gaya.ext` dan disimpan di `fonts` (atau `webfonts`, `instances`) di samping font Anda.

## Coba sendiri

1. Ekspor font Anda sebagai **TrueType (.ttf)** dan **WOFF2 (.woff2)** dengan opsi CSS aktif. Buka foldernya dan lihat file-filenya. Buka file `.css` di editor teks dan temukan baris `font-weight`. Apakah cocok dengan gaya Anda?
2. Di Mode Pro, buka **Berkas › Ekspor › Profil Ekspor…**, duplikat profil **Web**, ganti namanya menjadi `Web lengkap`, ubah **Folder**-nya menjadi `fonts/web-lengkap` (kalau tidak, kedua profil menulis file yang sama), atur **Karakter** ke **Semua glyph**, lalu klik **Ekspor Semua**. Bandingkan ukuran kedua file `.woff2`.
