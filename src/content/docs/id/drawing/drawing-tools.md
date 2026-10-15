---
title: Alat Gambar
description: Setiap tool di kotak alat, fungsinya, dan cara memakainya, ditambah perintah kontur di menu Glyph dan latihan menggambar pertama.
---

Kotak alat di sepanjang tepi kiri jendela berisi dua puluh *tool* (alat). Sebagian menggambar
bentuk baru, sebagian mengedit titik yang sudah ada, sebagian memotong, memutar, atau mengukur, dan
beberapa membantu Anda mengatur spasi dan kerning huruf langsung di editor. Anda tidak memerlukan
semuanya untuk membuat font. Kebanyakan desainer hanya memakai tiga atau empat: tool Pilih dan Node
untuk menyesuaikan, Pena untuk menggambar, dan Metrics untuk mengatur spasi.

Bab ini membahas tool satu per satu, sesuai urutan di kotak alat. Untuk setiap tool Anda akan
mendapatkan kegunaannya, cara memakainya, shortcut keyboard-nya, dan tombol pengubah yang
dikenalinya. Setelah itu dibahas perintah kontur di menu **Glyph**, seperti Gabungkan dan Hapus
Tumpang Tindih, dan sebagai penutup, latihan singkat: menggambar huruf "n" dengan Pena.

Jika istilah seperti node, handle, atau kontur masih terasa baru, baca dulu
[Outline, titik, dan kurva](/drawing/outlines/). Editornya sendiri (kanvas, penggaris, panel)
dijelaskan di [Editor glyph](/drawing/glyph-editor/).

Dalam bab ini Anda akan mempelajari:

- bagaimana kotak alat disusun, dan cara menjangkau tool yang tersembunyi di menu lipatnya;
- fungsi masing-masing dari dua puluh tool, lengkap dengan shortcut-nya;
- tombol pengubah (<kbd>Shift</kbd>, <kbd>Alt</kbd>, <kbd>Space</kbd>) yang mengubah perilaku tool;
- cara menggabungkan bentuk dengan Gabungkan, Kurangi, Irisan, dan Kecualikan Irisan;
- fungsi perintah lain di **Glyph › Kontur** dan **Glyph › Transformasi**;
- cara menggambar huruf "n" sederhana dengan Pena.

## Kotak alat

Kotak alat berupa satu kolom tombol. Beberapa tombol berisi lebih dari satu tool: tombol seperti
ini punya segitiga kecil di sudut kanan bawahnya. Untuk menjangkau tool lain di slot tersebut:

1. **Klik kanan** tombolnya, atau tekan dan tahan sebentar.
2. Sebuah menu kecil (menu lipat) terbuka, berisi tool-tool di slot itu beserta shortcut-nya.
3. Klik tool yang Anda inginkan.

Tombol itu kini menampilkan tool yang Anda pilih, dan terus menampilkannya sampai Anda memilih tool
lain dari menu lipat yang sama. Arahkan penunjuk ke tombol mana saja untuk melihat nama tool dan
shortcut-nya.

Garis tipis membagi kotak alat menjadi empat kelompok: menggambar dan mengedit, mengukur dan anchor,
spasi, serta navigasi.

| Slot | Tool (shortcut) |
|---|---|
| 1 | Pilih (<kbd>V</kbd>), Node (<kbd>A</kbd>) |
| 2 | Pena (<kbd>P</kbd>), Tambah Titik (<kbd>=</kbd>), Hapus Titik (<kbd>-</kbd>) |
| 3 | Pensil (<kbd>N</kbd>) |
| 4 | Persegi Panjang (<kbd>M</kbd>), Elips (<kbd>L</kbd>), Poligon (<kbd>Shift</kbd>+<kbd>L</kbd>) |
| 5 | Pisau (<kbd>K</kbd>), Gunting (<kbd>C</kbd>) |
| 6 | Putar (<kbd>R</kbd>), Skala (<kbd>S</kbd>) |
| 7 | Ukur (<kbd>U</kbd>), Anchor (<kbd>Shift</kbd>+<kbd>A</kbd>) |
| 8 | Metrics (<kbd>Y</kbd>) |
| 9 | Kerning (<kbd>J</kbd>) |
| 10 | Teks (<kbd>T</kbd>) |
| 11 | Tangan (<kbd>H</kbd>) |
| 12 | Zoom (<kbd>Z</kbd>) |

Shortcut satu tombol ini bekerja selama ada font yang terbuka dan tidak ada kolom teks yang sedang
aktif. Anda bisa mengubah semuanya di **Edit › Shortcut Keyboard…**, sama seperti shortcut lain.

:::note[Mode Sederhana]
Mode Sederhana menjaga kotak alat tetap ringkas. Tambah Titik, Hapus Titik, Poligon, Gunting,
Putar, Skala, dan Ukur hanya ada di Mode Pro, sehingga di Mode Sederhana slot Putar/Skala hilang dan
slot Ukur menampilkan tool Anchor. Berpindah mode dengan **Jendela › Ganti Mode**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>) atau sakelar **Pro / Sederhana** di bilah judul.
:::

Apa pun tool yang Anda pegang, beberapa hal selalu bekerja di kanvas: tahan <kbd>Space</kbd> lalu
seret untuk menggeser tampilan, seret dengan tombol tengah tetikus untuk menggeser, pakai
<kbd>Ctrl</kbd>+roda untuk zoom, dan seret dari penggaris untuk menambah garis bantu.

## Memilih dan mengedit

### Pilih

![Tool Pilih dipilih saat mengedit "O": tanpa pilihan, bilah opsi menampilkan Lebar, LSB, dan RSB, serta petunjuk "Pilih dan pindahkan kontur, komponen, dan anchor."](screen:g-tool-select)

**Pilih** (<kbd>V</kbd>) adalah tool yang selalu Anda datangi kembali di sela tool lain. Tool ini
bekerja pada bentuk utuh:

- Klik outline sebuah kontur untuk memilih **seluruh kontur**. Seret untuk memindahkannya.
- Klik komponen atau anchor untuk memilihnya; seret untuk memindahkannya.
- Klik satu titik untuk memilih titik itu saja.
- Seret di area kosong untuk memilih semua titik di dalam sebuah persegi.
- Seret garis vertikal di kanan glyph untuk mengubah **lebar advance**-nya.
- Seret garis bantu untuk memindahkannya, atau seret ke penggaris untuk menghapusnya.
- Klik dua kali sebuah komponen untuk membuka glyph asalnya. Klik dua kali glyph lain di baris teks
  untuk mengedit glyph itu.

Dengan <kbd>Shift</kbd>, klik dan seretan persegi menambah pilihan alih-alih menggantinya. Tombol
panah menggeser pilihan satu satuan, <kbd>Shift</kbd>+panah sepuluh satuan. Bila ada pilihan, bilah
opsi menampilkan **X**, **Y**, **W**, dan **H**-nya; bila tidak ada, **Lebar**, **LSB**, dan **RSB**
glyph.

### Node

![Tool Node dipilih saat mengedit "O": bilah opsi menampilkan Lebar, LSB, dan RSB, serta petunjuk "Pilih dan edit titik serta handle satu per satu."](screen:g-tool-node)

**Node** (<kbd>A</kbd>) bekerja pada titik dan handle satu per satu. Perilakunya mirip Pilih, dengan
dua perbedaan penting:

- Mengeklik outline hanya memilih **segmen** itu: dua node di ujungnya. Seret untuk memindahkan
  segmen.
- Inilah tool yang pas untuk **handle**. Seret handle untuk membentuk ulang kurvanya. Pada titik
  halus, handle di sisi lain ikut berputar agar tetap segaris.

Klik dua kali sebuah node untuk mengubahnya antara titik sudut dan titik halus (sama dengan
**Glyph › Ubah Smooth**, <kbd>Alt</kbd>+<kbd>S</kbd>). Klik dua kali outline di antara dua node untuk
menambah node di situ.

:::tip
Untuk melengkungkan garis lurus dengan tool Node, garis itu perlu handle terlebih dahulu. Tambahkan
titik di tengahnya dengan tool Tambah Titik, atau gambar ulang segmen itu dengan Pena.
:::

## Menggambar

### Pena

![Tool Pena dipilih saat mengedit "O": bilah opsi menampilkan kotak centang Kurva Hobby dan petunjuk "Gambar kontur Bézier titik demi titik."](screen:g-tool-pen)

**Pena** (<kbd>P</kbd>) menggambar outline titik demi titik. Inilah tool menggambar yang paling
teliti dan paling sering dipakai desainer huruf. Ada dua gerakan:

- **Klik** untuk meletakkan titik sudut. Di antara dua titik yang diklik, segmennya berupa garis
  lurus.
- **Klik lalu seret** untuk meletakkan titik halus sekaligus menarik keluar handle-nya. Segmen
  menuju titik ini menjadi kurva. Anda menyeret handle keluar; handle masuk mencerminkannya di sisi
  seberang.

![Di kiri tiga klik menghasilkan titik sudut yang disambung garis lurus; di kanan titik tengah diseret, menghasilkan titik halus dengan handle dan kurva di kedua sisinya.](diagram:drawing-tools-pen-click-drag)

Untuk menggambar bentuk tertutup:

1. Klik (atau seret) di tempat kontur dimulai.
2. Terus klik atau seret untuk setiap node berikutnya, mengelilingi bentuknya.
3. Untuk menyelesaikan, klik **node pertama** lagi. Konturnya tertutup.

Tekan <kbd>Enter</kbd> atau <kbd>Esc</kbd>, atau ganti ke tool lain, untuk berhenti menggambar tanpa
menutup kontur. Path-nya lalu tetap terbuka, dan panel Validasi akan mengingatkan Anda. Setiap klik
adalah langkah tersendiri di Riwayat, jadi <kbd>Ctrl</kbd>+<kbd>Z</kbd> menghapus titik terakhir.

Titik yang Anda letakkan dengan Pena menjepret ke satuan bulat, ke garis metrics, dan ke garis
bantu.

#### Kurva Hobby

Centang **Kurva Hobby** di bilah opsi untuk menggambar dengan cara lain: Anda cukup mengeklik
titik-titik yang harus dilalui kurva, dan FontEasy menghitung handle yang halus untuk Anda, dengan
metode *[Hobby curve](/reference/glossary/#hobby-curve)* (kurva Hobby) dari John Hobby (yang dipakai
MetaPost). Tidak ada yang perlu diseret: setiap klik membentuk ulang seluruh kurva agar mengalir
rata melalui semua titik Anda. Sudut di antara dua garis lurus tetap menjadi sudut.

Kurva Hobby adalah cara cepat menggambar bentuk bulat yang tenang, seperti mangkuk huruf "b" atau
huruf sambung. Anda selalu bisa menyempurnakan handle-nya sesudahnya dengan tool Node. Untuk
mengubah kontur yang sudah ada menjadi kurva Hobby, pilih kontur itu lalu pilih
**Glyph › Kontur › Kurva Hobby** (Mode Pro).

### Tambah Titik

![Tool Tambah Titik dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Klik segmen untuk menambah titik."](screen:g-tool-addpoint)

**Tambah Titik** (<kbd>=</kbd>, Mode Pro) menambahkan node di tempat Anda mengeklik sebuah segmen.
Pada kurva, node baru membelahnya menjadi dua kurva yang mengikuti jalur yang persis sama, sehingga
bentuknya tidak berubah; lalu Anda bisa menyeret node baru itu beserta handle-nya. Klik dua kali
segmen dengan tool Pilih atau Node melakukan hal yang sama.

### Hapus Titik

![Tool Hapus Titik dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Klik titik untuk menghapusnya tanpa mengubah bentuk."](screen:g-tool-deletepoint)

**Hapus Titik** (<kbd>-</kbd>, Mode Pro) menghapus titik yang Anda klik. Saat sebuah node dihapus,
handle-nya ikut terhapus dan kedua tetangganya disambung oleh satu segmen, yang tetap berupa kurva
bila masih ada handle di salah satu sisi. Kontur yang tersisa dengan kurang dari dua node akan
hilang. Untuk menghapus beberapa titik sekaligus, pilih titik-titiknya lalu tekan <kbd>Delete</kbd>.

### Pensil

![Tool Pensil dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Gambar bebas; goresan menjadi kontur yang halus."](screen:g-tool-pencil)

**Pensil** (<kbd>N</kbd>) menggambar bebas. Seret di kanvas seperti pena di atas kertas. Saat Anda
melepas tombol, FontEasy menyederhanakan goresan itu dan mengubahnya menjadi kontur kurva yang
halus, dengan titik yang jauh lebih sedikit daripada goresannya. Jika Anda mengakhiri goresan dekat
dengan titik awalnya, konturnya tertutup; jika tidak, tetap menjadi path terbuka. Kontur baru itu
langsung terpilih, sehingga bisa segera dipindahkan atau dihapus.

Pensil sangat cocok untuk membuat sketsa dan untuk font bergaya tulisan tangan. Untuk tampilan garis
tunggal yang bergaris (*stroke*), gambar path terbuka lalu beri *stroke* di panel Gambar; lihat
[Efek gambar](/advanced/drawing-effects/).

### Persegi Panjang

![Tool Persegi Panjang dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Seret untuk menggambar persegi panjang (Shift: persegi)."](screen:g-tool-rectangle)

**Persegi Panjang** (<kbd>M</kbd>) menggambar persegi panjang: seret dari satu sudut ke sudut
seberangnya. Tahan <kbd>Shift</kbd> untuk persegi. Selama menyeret, ukurannya ditampilkan di samping
penunjuk dalam satuan font, misalnya `90 × 670`. Hasilnya kontur tertutup dengan empat titik sudut,
yang arahnya sudah benar. Persegi panjang adalah cara tercepat untuk membuat batang, palang, dan
serif secara kasar.

### Elips

![Tool Elips dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Seret untuk menggambar elips (Shift: lingkaran)."](screen:g-tool-ellipse)

**Elips** (<kbd>L</kbd>) menggambar elips di dalam persegi yang Anda seret. Tahan <kbd>Shift</kbd>
untuk lingkaran. Elips punya empat titik halus, satu di setiap titik ekstrem, dengan handle
horizontal dan vertikal: contoh titik yang bersih. Dua elips, yang satu di dalam yang lain,
menghasilkan huruf "O" dengan cepat; perbaiki arahnya sesudahnya dengan
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> agar elips dalam menjadi lubang.

![Huruf "O" yang dibuat dari dua elips dengan tool Node: empat titik halus di setiap kontur, di atas, bawah, kiri, dan kanan.](screen:editnew)

### Poligon

![Tool Poligon dipilih saat mengedit "O": bilah opsi menampilkan Sisi 6 dan petunjuk "Seret untuk menggambar poligon beraturan."](screen:g-tool-polygon)

**Poligon** (<kbd>Shift</kbd>+<kbd>L</kbd>, Mode Pro) menggambar poligon dengan satu sudut di
puncak, yang dimuat di dalam persegi yang Anda seret. Atur jumlah sudutnya di kolom **Sisi** pada
bilah opsi, dari 3 sampai 24 (awalnya 6). Tahan <kbd>Shift</kbd> untuk menyeret area persegi, yang
menghasilkan poligon beraturan. Pakai untuk segitiga, untuk panah dan tanda dalam font simbol, atau
untuk titik berbentuk belah ketupat.

## Memotong

### Pisau

![Tool Pisau dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Seret melintasi kontur untuk memotongnya."](screen:g-tool-knife)

**Pisau** (<kbd>K</kbd>) membelah bentuk menjadi dua. Seret garis lurus melintasi kontur tertutup;
garis merah menunjukkan potongannya selama Anda menyeret. Saat dilepas, setiap kontur tertutup yang
dilintasi garis itu tepat dua kali terbelah menjadi dua kontur tertutup di sepanjang garis. Pakai
untuk memotong batang secara miring, atau untuk memisahkan bagian huruf agar bisa dipindahkan.

### Gunting

![Tool Gunting dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Klik segmen untuk memotong kontur di sana."](screen:g-tool-scissors)

**Gunting** (<kbd>C</kbd>, Mode Pro) membuka kontur tertutup di tempat yang Anda klik: pada node,
kontur dibuka di node itu; pada segmen, node ditambahkan dulu di situ. Hasilnya path terbuka dengan
dua ujung di tempat yang sama. Ini terutama berguna untuk *stroke*: garis kerangka terbuka yang
diubah panel Gambar menjadi outline. Ingat bahwa kontur terbuka tidak diisi.

## Mentransformasi

### Putar

![Tool Putar dipilih saat mengedit "O": bilah opsi menampilkan Lebar, LSB, dan RSB, serta petunjuk "Seret untuk memutar pilihan."](screen:g-tool-rotate)

**Putar** (<kbd>R</kbd>, Mode Pro) memutar pilihan di sekitar titik tengah kotak batasnya. Seret di
kanvas: sudutnya mengikuti penunjuk mengelilingi titik tengah itu. Tahan <kbd>Shift</kbd> untuk
memutar per 15°. Bila tidak ada yang dipilih, seluruh glyph yang berputar. Untuk mengetik sudut yang
tepat, pakai **Glyph › Transformasi › Putar…** atau kolom **Putar** di panel Transformasi.

### Skala

![Tool Skala dipilih saat mengedit "O": bilah opsi menampilkan Lebar, LSB, dan RSB, serta petunjuk "Seret untuk mengubah skala pilihan."](screen:g-tool-scale)

**Skala** (<kbd>S</kbd>, Mode Pro) memperbesar atau memperkecil pilihan di sekitar titik tengah
kotak batasnya. Seret menjauhi titik tengah untuk memperbesar, mendekatinya untuk memperkecil.
Seretan ke samping mengubah lebar, ke atas dan bawah mengubah tinggi. Tahan <kbd>Shift</kbd> untuk
menjaga proporsi. Bila tidak ada yang dipilih, seluruh glyph yang diskalakan. Untuk persentase yang
tepat, pakai **Glyph › Transformasi › Skala…** atau kolom W dan H di bilah opsi.

:::caution
Menskalakan sebuah huruf untuk membuat huruf lain ("o" kecil dari "O" besar) ikut mengecilkan
batangnya, sehingga huruf kecil itu tampak kurus di samping yang lain. Pakai skala sebagai titik
awal, lalu perbaiki tebal batangnya dengan tangan.
:::

## Mengukur dan menempatkan

### Ukur

![Tool Ukur dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Ukur jarak dan sudut dalam satuan font."](screen:g-tool-measure)

**Ukur** (<kbd>U</kbd>, Mode Pro) adalah penggaris untuk kanvas. Seret dari satu tempat ke tempat
lain: sebuah garis mengikuti, dengan label berisi jarak dalam satuan, sudut dalam derajat, serta
jarak horizontal dan vertikal (`Δx`, `Δy`). Ujung-ujungnya menjepret seperti titik, jadi mudah
mengukur dari garis metrics. Pakai untuk memeriksa apakah batang-batang sama tebal, atau seberapa
jauh serif menjorok. Tool Ukur tidak pernah mengubah glyph.

### Anchor

![Tool Anchor dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Klik untuk menambah anchor (top, bottom, …); geser anchor untuk menempatkan aksen."](screen:g-tool-anchor)

**Anchor** (<kbd>Shift</kbd>+<kbd>A</kbd>) meletakkan *[anchor](/reference/glossary/#anchor)*
(titik jangkar): titik bernama yang memberi tahu FontEasy di mana aksen menempel. Klik tempat kosong
untuk menambah anchor; anchor itu mendapat nama umum berikutnya yang belum dimiliki glyph ("top",
lalu "bottom", "ogonek", "center", "topright"; pada aksen "_top", "top", "_bottom", "bottom"). Klik
anchor untuk memilihnya, seret untuk memindahkannya. Anchor digambar sebagai belah ketupat kecil
dengan namanya. Ganti nama, atau ketik posisi tepatnya, di panel Info Glyph. Bab
[Komponen dan aksen](/drawing/components/) menunjukkan bagaimana anchor membangun huruf seperti "é"
dan "ü".

## Spasi

### Metrics

![Tool Metrics dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Seret sidebearing; klik glyph lain di teks untuk mengatur spasinya."](screen:g-tool-metrics)

**Metrics** (<kbd>Y</kbd>) mengatur *[sidebearing](/reference/glossary/#sidebearing)* (ruang samping)
langsung di kanvas:

- Seret dekat tepi **kanan** glyph untuk mengubah lebar advance-nya (sidebearing kanan).
- Seret dekat tepi **kiri** untuk mengubah sidebearing kiri: outline dan lebarnya bergeser bersama,
  sehingga sidebearing kanan tetap sama.
- Klik **glyph lain di baris teks** untuk mengatur spasi glyph itu berikutnya.

Di bawah setiap glyph di baris teks, tool Metrics menampilkan sidebearing kiri dan kanannya, dan di
bawahnya lagi, lebarnya. Sidebearing yang berasal dari rumus metrics menampilkan rumusnya di samping
angka, dengan warna aksen. **Metrics › Jendela Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>)
memilih tool ini sekaligus menyiapkan baris spasi untuk Anda. Penjelasan lengkapnya ada di
[Spasi dan metrics](/spacing/metrics/).

### Kerning

![Tool Kerning dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Seret glyph untuk mengatur kerning terhadap glyph sebelumnya (Alt: pengecualian); tombol panah mengatur pasangan berikutnya."](screen:g-tool-kerning)

**Kerning** (<kbd>J</kbd>) mengatur jarak di antara dua huruf tertentu, seperti "A" dan "V". Ketik
dulu sebuah pasangan atau kata di bilah Teks. Lalu:

- **Seret sebuah glyph** di baris itu ke kiri atau kanan untuk mengatur kerning-nya terhadap glyph
  sebelumnya.
- Atau klik sebuah glyph untuk memilih pasangan yang dibentuknya dengan glyph sebelumnya, lalu
  tekan <kbd>←</kbd> dan <kbd>→</kbd> untuk mengatur kerning pasangan itu satu satuan, atau sepuluh
  dengan <kbd>Shift</kbd>.
- Tahan <kbd>Alt</kbd> saat menyeret atau menekan panah untuk membuat **pengecualian**: nilai khusus
  untuk dua glyph ini saja, meskipun keduanya termasuk dalam
  *[kerning group](/reference/glossary/#kerning-group)* (grup kerning).

Nilai kerning setiap pasangan tertulis di bawah baris, diwarnai menurut asalnya (grup, pengecualian,
atau pasangan biasa), dan garis tipis menandai pasangan yang diubah oleh tombol panah.
**Kerning › Jendela Kerning** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>) membuka panel Kerning dan
memilih tool ini. Lihat [Kerning](/spacing/kerning/).

## Navigasi

### Teks

![Tool Teks dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Ketik teks di atas kanvas; klik salah satu glyph-nya untuk mengedit glyph itu."](screen:g-tool-text)

**Teks** (<kbd>T</kbd>) menaruh kursor di bilah Teks di atas kanvas, sehingga Anda bisa mengetik
baris teks tempat mengedit. Lalu klik glyph mana pun di baris itu pada kanvas untuk mengedit glyph
tersebut. Karena bilah Teks kini aktif, shortcut tool satu tombol akan mengetik huruf di sana; klik
kanvas atau tombol di kotak alat untuk memilih tool lain.

### Tangan

![Tool Tangan dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Geser tampilan (atau tahan Spasi)."](screen:g-tool-hand)

**Tangan** (<kbd>H</kbd>) menggeser tampilan: seret untuk menggeser. Anda jarang perlu memilihnya,
karena menahan <kbd>Space</kbd> memberi Anda tangan dengan tool apa pun, dan roda tetikus juga
menggulir.

### Zoom

![Tool Zoom dipilih saat mengedit "O": bilah opsi menampilkan petunjuk "Klik untuk memperbesar, Alt-klik untuk memperkecil."](screen:g-tool-zoom)

**Zoom** (<kbd>Z</kbd>) memperbesar tampilan. Klik untuk memperbesar dua kali di sekitar penunjuk;
<kbd>Alt</kbd>+klik untuk memperkecil. Seret sebuah persegi untuk memperbesar hingga area itu
memenuhi jendela. Untuk melihat seluruh glyph lagi, tekan <kbd>Ctrl</kbd>+<kbd>0</kbd>
(**Tampilan › Muat di Jendela**).

## Ringkasan tombol pengubah

| Tombol | Dengan | Efek |
|---|---|---|
| <kbd>Shift</kbd> | Pilih, Node | Klik atau seret persegi untuk menambah (atau mengurangi) pilihan. |
| <kbd>Shift</kbd> | Tombol panah | Geser sepuluh satuan, bukan satu (kerning sepuluh satuan dengan tool Kerning). |
| <kbd>Shift</kbd> | Persegi Panjang, Elips, Poligon | Persegi, lingkaran, poligon beraturan. |
| <kbd>Shift</kbd> | Putar | Memutar per 15°. |
| <kbd>Shift</kbd> | Skala | Menjaga proporsi. |
| <kbd>Alt</kbd> | Kerning | Membuat pengecualian kerning. |
| <kbd>Alt</kbd> | Zoom | Memperkecil, bukan memperbesar. |
| <kbd>Space</kbd> | Tool apa pun | Tahan dan seret untuk menggeser tampilan. |
| <kbd>Ctrl</kbd> | Roda tetikus | Zoom di sekitar penunjuk. |
| <kbd>Enter</kbd> / <kbd>Esc</kbd> | Pena | Berhenti menggambar path saat ini. |
| <kbd>Esc</kbd> | Pilih, Node | Membatalkan pilihan. |

## Perintah kontur di menu Glyph

Menu **Glyph** punya perintah yang bekerja pada kontur utuh. Kebanyakan bekerja pada glyph yang
terbuka, dan sebagian juga pada semua glyph yang Anda pilih di Ikhtisar, sehingga Anda bisa merapikan
seluruh font sekaligus.

![Menu Glyph terbuka: Edit Glyph, Glyph Sebelumnya dan Berikutnya, Glyph Baru, Duplikat Glyph, Ganti Nama Glyph, Warna Tanda, Ubah Smooth, Salin ke Latar, Tempatkan Gambar, Tambah Komponen, Urai, Tambah Anchor, Transformasi, Kontur, Buat dan Perbarui Komposit, serta Perbaiki Masalah.](screen:g-menu-glyph)

### Menggabungkan bentuk: Gabungkan, Kurangi, Irisan, Kecualikan Irisan

Keempat perintah ini menggabungkan kontur yang bertumpuk, seperti alat bentuk di Illustrator.
Semuanya memerlukan editor dan memakai pilihan Anda: pilih satu titik (atau lebih) dari kontur yang
akan menjadi bentuk kedua, lalu pilih perintahnya dari **Glyph › Kontur**. Bentuk kedua adalah
kontur yang dipilih, atau kontur terakhir glyph bila tidak ada yang dipilih.

![Sebuah lingkaran dan persegi: Gabungkan menyatukannya menjadi satu bentuk, Kurangi memotong persegi yang dipilih dari lingkaran, Irisan hanya menyisakan bagian yang tumpang tindih, dan Kecualikan Irisan menyisakan semuanya kecuali bagian yang tumpang tindih.](diagram:drawing-tools-booleans)

| Perintah | Hasil |
|---|---|
| **Gabungkan** | Menyatukan bentuk menjadi satu outline. Bila kurang dari dua kontur yang dipilih, semua kontur glyph disatukan. |
| **Kurangi** | Memotong bentuk yang dipilih dari bentuk lainnya. |
| **Irisan** | Hanya menyisakan bagian yang dimiliki bersama. |
| **Kecualikan Irisan** (Pro) | Menyisakan semuanya kecuali bagian yang dimiliki bersama. |

Kurva tetap kurva, dan kontur yang tidak terlibat dibiarkan persis seperti semula. Bila tidak ada
yang berubah, bilah status menulis "Tidak ada yang berubah: pilih kontur yang menumpuk kontur lain."

### Isi Glyph › Kontur

| Perintah | Shortcut | Fungsinya |
|---|---|---|
| **Hapus Tumpang Tindih** | <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd> | Menyatukan semua kontur yang bertumpuk menjadi outline bersih dan mengurai kontur yang memotong dirinya sendiri. |
| **Gabungkan**, **Kurangi**, **Irisan**, **Kecualikan Irisan** | | Menggabungkan bentuk, lihat di atas. |
| **Perbaiki Arah** | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> | Kontur luar berlawanan jarum jam, lubang searah jarum jam. |
| **Balik Arah** | | Membalik kontur yang dipilih (semua bila tidak ada yang dipilih). |
| **Jadikan Titik Awal** | | Menjadikan node yang dipilih titik pertama konturnya. |
| **Bulatkan Sudut…** | | Membulatkan titik sudut yang dipilih dengan jari-jari yang Anda ketik (awalnya 40 satuan). |
| **Sederhanakan** | | Menghapus node yang tidak perlu, dengan bentuk tetap dalam jarak satu satuan. |
| **Kurva Hobby** (Pro) | | Mengubah kontur yang dipilih (atau semua) menjadi kurva Hobby. |
| **Tambah Titik Ekstrem** (Pro) | | Menambahkan node di titik ekstrem kurva. |
| **Bersihkan Titik** (Pro) | | Menghapus titik ganda dan titik yang tidak berguna. |
| **Ubah ke Kubik** (Pro) | | Mengubah kurva kuadratik (TrueType) menjadi kubik, dengan tepat. |
| **Ubah ke Kuadratik** (Pro) | | Mengubah kurva kubik menjadi kuadratik. |

Hapus Tumpang Tindih, Perbaiki Arah, Sederhanakan, Kurva Hobby, Tambah Titik Ekstrem, Bersihkan
Titik, dan kedua konversi juga bekerja di Ikhtisar, pada semua glyph yang dipilih sekaligus. Bilah
status lalu melaporkan berapa glyph yang berubah. Bab [Outline](/drawing/outlines/) menjelaskan
mengapa arah, titik ekstrem, dan tumpukan itu penting.

### Glyph › Transformasi

| Perintah | Fungsinya |
|---|---|
| **Skala…** | Dialog kecil untuk persentase horizontal dan vertikal. |
| **Putar…** | Dialog kecil untuk sudut dalam derajat. |
| **Miringkan…** | Dialog kecil untuk kemiringan horizontal dan vertikal dalam derajat. |
| **Balik Horizontal** | Mencerminkan dari kiri ke kanan. |
| **Balik Vertikal** | Mencerminkan dari atas ke bawah. |

Semuanya berlaku pada pilihan, atau pada seluruh glyph bila tidak ada yang dipilih, di sekitar
titik tengahnya. Panel Transformasi melakukan hal yang sama dengan semua nilai sekaligus.

### Perintah lain di menu Glyph

- **Ubah Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>) mengubah node yang dipilih antara titik sudut dan
  titik halus.
- **Salin ke Latar**, **Tempatkan Gambar…**, dan **Hapus Gambar** mengelola layer jiplakan dan gambar
  referensi (lihat [Editor glyph](/drawing/glyph-editor/)).
- **Tambah Komponen…**, **Urai**, **Tambah Anchor**, **Buat Komposit…**, dan **Perbarui Komposit**
  bekerja dengan komponen dan aksen (lihat [Komponen dan aksen](/drawing/components/)).
- **Perbaiki Masalah** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) memperbaiki semua masalah yang
  bisa diperbaiki yang ditemukan panel Validasi.

## Latihan: menggambar huruf "n" dengan Pena

Saatnya memakai Pena. Anda akan menggambar huruf "n" sans-serif sederhana: batang di kiri dan
lengkungan yang turun menjadi batang kedua. Gambar di bawah menunjukkan urutan kliknya. Persegi
adalah klik biasa; dua titik bulat (4 dan 9) adalah klik lalu seret.

![Huruf "n" sederhana dengan dua belas titik bernomor: titik 1 sampai 3 naik di batang kiri, titik 4 diseret untuk membentuk lengkungan dalam, 5 sampai 8 turun dan naik di batang kanan, titik 9 diseret untuk membentuk lengkungan luar, dan 10 sampai 12 berakhir di puncak batang kiri.](diagram:drawing-tools-n-practice)

1. Buka glyph "n" yang masih kosong (klik dua kali di Ikhtisar).
2. Pilih Pena (<kbd>P</kbd>). Pastikan **Kurva Hobby** tidak dicentang.
3. **Klik** di baseline untuk titik 1, sudut kiri bawah batang.
4. **Klik** titik 2 di baseline, selebar satu batang ke kanan.
5. **Klik** titik 3 tegak lurus di atas titik 2, sedikit di bawah tinggi-x. Di sinilah lengkungan
   dalam dimulai.
6. **Klik lalu seret** titik 4 di puncak lengkungan dalam: tekan tombol tetikus, seret ke kanan,
   sejajar dengan garis tinggi-x, lalu lepaskan. Kurva dari 3 ke 4 melengkung.
7. **Klik** titik 5, tempat lengkungan dalam bertemu batang kanan.
8. **Klik** titik 6 di baseline di bawah titik 5, dan titik 7 selebar satu batang di kanannya.
9. **Klik** titik 8 tegak lurus di atas titik 7, tempat lengkungan luar dimulai.
10. **Klik lalu seret** titik 9 di puncak lengkungan luar, sedikit di atas tinggi-x: seret ke
    **kiri**, mendatar, lalu lepaskan.
11. **Klik** titik 10 tempat lengkungan luar bertemu batang kiri, lalu titik 11 di puncak batang di
    tinggi-x, dan titik 12 di sudut kiri atas.
12. **Klik titik 1** lagi untuk menutup kontur.

:::tip
Klik penutup harus tepat mengenai node pertama, dalam jarak beberapa satuan font. Jika path-nya
tidak tertutup, perbesar tampilan di sekitar titik 1 (<kbd>Ctrl</kbd>+roda) lalu klik lagi.
:::

Sekarang Anda punya huruf "n" yang masih kasar. Kurvanya belum sempurna, karena titik 3, 5, 8, dan
10 belum punya handle sendiri. Bentuklah:

1. Pilih tool Node (<kbd>A</kbd>).
2. Klik kurva di antara 3 dan 4, lalu seret handle yang muncul sampai lengkungannya tampak bulat.
   Handle yang menumpuk di atas node-nya bisa diseret keluar dari node itu.
3. Lakukan hal yang sama untuk kurva 4 ke 5, 8 ke 9, dan 9 ke 10. Jaga handle di titik 4 dan 9 tetap
   horizontal (keduanya di titik ekstrem atas) dan handle di titik 5 dan 8 tetap vertikal.
4. Tekan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> untuk memastikan arahnya benar.
5. Ketik `nnnn` di bilah Teks untuk melihat huruf "n" Anda berjajar.

Jika ada yang salah, <kbd>Ctrl</kbd>+<kbd>Z</kbd> mengambil kembali satu titik demi satu selama Anda
masih menggambar. Dan jika gambarnya kurang berhasil, pilih semuanya dengan
<kbd>Ctrl</kbd>+<kbd>A</kbd>, tekan <kbd>Delete</kbd>, lalu mulai lagi: huruf "n" pertama setiap
orang memang tampak janggal.

## Kesalahan umum

:::caution[Pena memulai bentuk baru alih-alih melanjutkan path saya]
Pena selalu memulai kontur baru begitu kontur sebelumnya selesai (tertutup, atau diakhiri dengan
<kbd>Enter</kbd>, <kbd>Esc</kbd>, atau pergantian tool). Selesaikan setiap bentuk dalam satu kali
jalan, berakhir di node pertamanya.
:::

:::caution[Bentuk saya tidak terisi]
Bentuk itu masih path terbuka: klik terakhir tidak mengenai node pertama. Pilih Pena lalu klik node
pertama, atau pakai **Perbaiki** di panel Validasi.
:::

:::caution[Menekan tombol huruf malah mengetik di bilah Teks]
Setelah memakai tool Teks, fokus keyboard ada di bilah Teks. Klik di kanvas, lalu pakai shortcut-nya
lagi.
:::

:::caution[Sebuah tool tidak ada di kotak alat]
Tool itu mungkin tersembunyi di menu lipat (klik kanan slot yang bersegitiga kecil), atau tool itu
khusus Mode Pro sementara Anda di Mode Sederhana.
:::

## Ringkasan

- Kotak alat punya dua belas slot; slot bersegitiga di sudut menyembunyikan tool lain, yang dijangkau
  dengan klik kanan atau tekan dan tahan.
- Pilih (<kbd>V</kbd>) bekerja pada kontur utuh, komponen, dan anchor; Node (<kbd>A</kbd>) pada titik
  tunggal, segmen, dan handle.
- Pena (<kbd>P</kbd>): klik untuk sudut dan garis, seret untuk titik halus dan kurva, klik node
  pertama untuk menutup. Dengan Kurva Hobby Anda cukup mengeklik.
- Pensil, Persegi Panjang, Elips, dan Poligon menggambar bentuk utuh; Tambah Titik dan Hapus Titik
  mengedit kontur titik demi titik.
- Pisau membelah bentuk di sepanjang garis; Gunting membuka kontur.
- Putar dan Skala mentransformasi dengan menyeret; <kbd>Shift</kbd> membatasinya.
- Ukur untuk mengukur, Anchor untuk menempatkan anchor, Metrics dan Kerning mengatur spasi huruf di
  baris teks, sedangkan Teks, Tangan, dan Zoom membantu Anda berkeliling.
- **Glyph › Kontur** menggabungkan dan merapikan bentuk: Gabungkan, Kurangi, Irisan, Kecualikan
  Irisan, Hapus Tumpang Tindih, Perbaiki Arah, Sederhanakan, dan lainnya.

## Coba sendiri

1. Gambar huruf "n" dari bagian latihan. Lalu gambar sekali lagi di glyph kosong lain dengan
   **Kurva Hobby** dicentang, cukup dengan mengeklik titik-titiknya (tanpa menyeret), dan bandingkan
   keduanya.
2. Gambar lingkaran dengan tool Elips dan persegi panjang yang menumpuknya dengan tool Persegi
   Panjang. Pilih satu titik persegi panjang itu lalu coba **Gabungkan**, **Kurangi**, dan **Irisan**
   dari **Glyph › Kontur**, dan batalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd> setiap kali.
