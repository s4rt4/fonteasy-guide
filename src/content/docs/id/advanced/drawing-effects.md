---
title: Efek Gambar
description: Gambar huruf sebagai garis tengah dengan pena bulat atau mata pena kaligrafi, bulatkan dan potong sudut, tambahkan ink trap, buat bagian pintar yang bisa direntangkan, gambar kurva Hobby, dan coret-coret ide di Papan Sketsa.
---

Biasanya Anda menggambar huruf dengan menggambar **outline**-nya: tepi yang mengelilingi seluruh
tinta. Padahal orang tidak menulis seperti itu. Pena mengikuti satu garis, yaitu bagian tengah
goresan, dan bentuk penalah yang menentukan tebal tintanya. Mata pena kaligrafi yang lebar
menghasilkan goresan tebal dan tipis dengan sendirinya, cukup karena dipegang dengan sudut tertentu.

**Efek gambar** di FontEasy memungkinkan Anda bekerja dengan cara itu. Anda menggambar garis tengah
dan memilih pena; FontEasy menggambarkan outline-nya. Dengan semangat yang sama, Anda bisa menandai
sebuah sudut sebagai "bulat" atau "dipotong" alih-alih menggambar kurvanya sendiri, membuat bagian
yang bisa merenggang seperti karet gelang, dan mengeklik beberapa titik untuk mendapatkan kurva halus
yang melewatinya.

Efek-efek ini **hidup**: glyph mengingat apa yang Anda gambar dan efek apa yang Anda pilih, lalu
FontEasy menerapkan efek itu setiap kali glyph ditampilkan atau diekspor. Anda bisa mengubah lebar
pena atau ukuran sudut kapan saja, dan setiap glyph yang memakainya ikut berubah. Kalau sudah puas,
Anda bisa membuat hasilnya permanen.

Dalam bab ini Anda akan mempelajari:

- cara kerja *stroke* (goresan) sepanjang path, dengan pena bulat atau mata pena kaligrafi datar;
- cara membuat font *monoline* dan font garis tunggal;
- cara membulatkan, memotong, memberi *ink trap*, atau menghias sudut;
- cara kerja komponen pintar yang punya sumbu sendiri;
- cara menggambar kurva Hobby;
- cara menjadikan efek sebagai outline biasa dengan **Terapkan Semua Efek**;
- cara mencoba ide di **Papan Sketsa**.

## Panel Gambar

Semua efek ada di panel **Gambar** (**Jendela › Panel › Gambar**). Panel ini bekerja pada glyph yang
terbuka di editor glyph; kalau tidak ada glyph yang terbuka, panel bertuliskan "Buka sebuah glyph
untuk memberinya stroke, efek sudut, atau bagian pintar."

Panel ini punya empat bagian:

| Bagian | Fungsinya | Mode |
|---|---|---|
| **Stroke** | Menggambar path dengan pena | Sederhana dan Pro |
| **Sudut** | Bulatkan, potong sudut, *ink trap*, atau glyph sudut pada node terpilih | Pro |
| **Komponen Pintar** | Sumbu dan slider untuk bagian yang bisa direntangkan | Pro |
| **Kurva** | Kurva Hobby dan **Terapkan Semua Efek** | Sederhana dan Pro |

Perubahan *stroke*, sudut, dan Terapkan Semua Efek dibuat di semua master sekaligus, jadi
[*variable font*](/advanced/variable/) tetap konsisten.

## Stroke: menggambar dengan pena

### Garis tengah, bukan outline

Dengan *stroke*, sebuah [path](/reference/glossary/#path) bukan lagi tepi tinta: path itu menjadi
**garis tengah** sebuah [*stroke*](/reference/glossary/#stroke) (goresan), seperti garis yang dilalui
ujung pena. FontEasy menggambar outline di sekelilingnya, selebar penanya.

[Kontur terbuka](/reference/glossary/#open-contour) (*open contour*, path dengan dua ujung lepas,
seperti garis "l" atau lengkung "n") selalu digambar dengan pena. Path tertutup, seperti cincin "o",
hanya digambar dengan pena kalau Anda memintanya lewat **Path tertutup juga**; kalau tidak, path itu
tetap bentuk isian biasa. Selama sebuah glyph punya *stroke*, panel Validasi tidak lagi
memperingatkan path terbukanya, karena path itu memang sengaja terbuka.

### Pena bulat dan mata pena datar

Anda bisa memilih dua jenis pena:

- **Pena bulat**: berbentuk lingkaran, seperti spidol atau bolpoin. Garisnya sama tebal ke segala
  arah. Hasilnya huruf [*monoline*](/reference/glossary/#monoline) (bergaris rata).
- **Mata pena datar**: [*nib*](/reference/glossary/#nib) (mata pena) kaligrafi yang lebar dan datar,
  seperti spidol berujung pahat. Garisnya tebal saat pena bergerak melintang sisi lebarnya dan tipis
  saat bergerak sejajar tepinya. Hasilnya punya [kontras](/reference/glossary/#contrast) antara
  goresan tebal dan tipis, persis seperti tulisan tangan dengan pena lebar.

![Satu path lingkaran digambar dengan empat cara: path-nya sendiri dengan empat node; pena bulat yang menghasilkan cincin rata; mata pena datar 30° yang menghasilkan goresan tebal secara diagonal; mata pena datar 0° yang menghasilkan sisi tebal dengan atas dan bawah tipis. Bentuk kecil di bawahnya menunjukkan setiap pena.](diagram:drawing-effects-nib)

Untuk mata pena datar, dua pengaturan membentuk hasilnya:

- **Sudut mata pena**: cara pena dipegang, dalam derajat, dari −90° sampai 90°. Di 0° mata pena
  mendatar, jadi goresan tegak tebal dan goresan mendatar tipis. Sekitar 30° sampai 45° memberi
  tekanan diagonal klasik tulisan pena lebar.
- **Goresan tipis**: tebal tepi sempit mata pena, dalam persen dari lebarnya (2% sampai 100%). Nilai
  kecil memberi kontras kuat; 100% membuat mata pena berbentuk persegi.

Untuk pena bulat, dua pengaturan lain membentuk ujung dan tikungan:

- **Ujung**: ujung **Bulat**, **Datar**, atau **Persegi** pada path terbuka.
- **Sudut**: **Bulat**, **Runcing**, atau **Potong** di tempat path membentuk sudut.

### Memberi stroke pada glyph

1. Gambar garis tengah huruf dengan Pena atau Pensil, sebagai path terbuka. Untuk "n", gambar batang
   kiri ke atas, lalu lengkungnya dan batang kanan ke bawah.
2. Buka panel **Gambar**.
3. Centang **Gambar path dengan pena**. Path langsung mendapat outline.
4. Atur **Lebar** (dalam unit font; dimulai dari 60).
5. Pilih **Pena bulat** atau **Mata pena datar**, lalu atur ujung dan sudutnya, atau sudut mata pena
   dan goresan tipisnya.
6. Centang **Path tertutup juga** kalau path tertutup juga perlu digores.

![Huruf n dari font baru yang digambar sebagai satu path terbuka dengan mata pena datar: panel Gambar menunjukkan Lebar 90, Mata pena datar, Sudut mata pena 30°, dan Goresan tipis 18%; kanvas menunjukkan path yang tipis dan bentuk goresan di sekelilingnya.](screen:stroke)

Anda tetap menyunting garis tengah dengan alat-alat biasa; *stroke*-nya mengikuti setiap perubahan.
Selama Anda menyeret sebuah nilai di panel, perubahannya digabung menjadi satu langkah *undo*.

### Font monoline dan font garis tunggal

Font **monoline** punya goresan yang sama tebal di mana-mana, seperti huruf yang ditulis dengan
spidol. Font **garis tunggal** adalah font yang glyph-nya hanya berupa garis tengah, dipakai untuk
grafir, *plotter*, dan mesin CNC, yang alatnya mengikuti satu garis.

Dengan *stroke*, Anda bisa membuat seluruh font seperti itu:

1. Beri satu glyph *stroke* yang Anda inginkan.
2. Klik **Pakai untuk Glyph Terpilih** untuk memberi *stroke* yang sama pada glyph yang dipilih di
   Ikhtisar, atau **Pakai untuk Semua Glyph** untuk memberikannya pada setiap glyph yang punya path.

Sekarang, mengubah lebar di satu tempat menjadi cara cepat mencoba versi yang lebih tipis atau lebih
tebal dari seluruh alfabet.

:::caution[Stroke di variable font]
*Stroke* diubah menjadi outline secara terpisah di setiap master, dan hasilnya bisa punya jumlah titik
yang berbeda antar master. Dengan sudut **Runcing** pada pena bulat, hal ini terutama mungkin terjadi,
jadi di font dengan beberapa master panel Gambar memperingatkan: "Sudut runcing bisa berbeda antar
master: pakai sambungan bulat di font variabel." Kalau interpolasi bermasalah, bentangkan *stroke*-nya
dan pakai **Samakan Struktur** bila bisa membantu.
:::

### Membentangkan stroke

Kalau *stroke*-nya sudah final, klik **Bentangkan** untuk mengubahnya menjadi outline biasa secara
permanen. Glyph lalu hanya berisi outline, dan Anda bisa menyuntingnya titik demi titik. Bentangkan
bekerja di semua master.

## Efek sudut

Sudut adalah tempat huruf mendapatkan karakternya: sudut bulat yang lembut terasa ramah, potongan
tajam terasa teknis, dan [*ink trap*](/reference/glossary/#ink-trap) (perangkap tinta) menjaga teks
kecil tetap tajam. Menggambar semua ini dengan tangan di setiap sudut itu lambat dan sulit dibuat
konsisten. Dengan efek sudut Anda cukup **menandai** sebuah node, dan FontEasy memotong sudutnya
untuk Anda.

![Lima versi sudut berbentuk L: biasa; sudut luar dibulatkan; sudut luar dipotong lurus (potong sudut) dengan ukurannya ditandai; ink trap dipotong ke sudut dalam; dan glyph sudut segitiga kecil yang diletakkan di sudut atas.](diagram:drawing-effects-corners)

Keempat efek itu adalah:

- **Bulatkan**: mengganti sudut dengan busur halus yang menyentuh kedua sisinya.
- **Potong Sudut**: memotong sudut dengan garis lurus (*chamfer*).
- **Ink Trap**: memotong takik ke dalam tinta di sudut itu. Pada ukuran sangat kecil dan kertas yang
  kurang baik, tinta menyebar ke sudut yang sempit dan mengisinya; takik itu memberi ruang, sehingga
  sudutnya tampak tajam saat dicetak.
- **Glyph Sudut**: meletakkan glyph lain di node itu, misalnya serif kecil atau taji hiasan, diputar
  agar mengikuti path.

**Ukuran** mengatur seberapa jauh ke belakang di setiap sisi sudut dipotong (untuk Bulatkan, Potong
Sudut, dan Ink Trap). **Kedalaman** mengatur seberapa dalam *ink trap* memotong ke dalam tinta. Efek
ini bekerja pada sudut di antara garis lurus maupun di antara kurva.

### Menambahkan efek sudut

Efek sudut ada di Mode Pro.

1. Buka glyph-nya dan pilih alat Node.
2. Pilih satu atau beberapa node **sudut**. Titik halus dan handle diabaikan.
3. Di panel **Gambar**, di bawah **Sudut**, atur **Ukuran** (dan **Kedalaman** untuk *ink trap*).
4. Klik **Bulatkan**, **Potong Sudut**, atau **Ink Trap**.

![Huruf E dari font baru dengan efek sudut: sudut luarnya bertanda R (bulat) dan C (potong), keempat sudut dalamnya T (ink trap); panel Gambar menunjukkan "Sekarang: trap 25 45", Ukuran 30, Kedalaman 60, dan tombol-tombol sudut.](screen:corners)

Setiap node yang punya efek mendapat cincin kecil di kanvas dan sebuah huruf: **R** untuk bulat,
**C** untuk potong sudut, **T** untuk *ink trap*, **G** untuk glyph sudut. Saat Anda memilih node yang
sudah punya efek, panel menampilkannya setelah **Sekarang:**, dan tombol **Hapus** menghilangkannya.

Node tetap berada di tempatnya dalam gambar Anda; efeknya diterapkan saat glyph ditampilkan dan
diekspor. Untuk memindahkan sudut, pindahkan node-nya; untuk memperbesar lengkungnya, ubah ukurannya.

### Glyph sudut

Glyph sudut adalah gambar kecil yang diletakkan FontEasy di sebuah node, seperti cap.

1. Buat glyph baru yang namanya diawali `_corner.`, misalnya `_corner.serif`.
2. Gambar bentuknya sehingga **titik asal**-nya (titik 0,0) berada di tempat yang akan menyentuh node,
   dan bentuknya mengarah sepanjang **sumbu x** (ke kanan). FontEasy memutar bentuk itu agar mengikuti
   path yang keluar dari node.
3. Buka glyph yang akan diberi sudut, pilih node-nya, lalu pilih glyph dari menu **Glyph Sudut** di
   panel Gambar.

Bentuk itu digabungkan ke outline. Glyph sudut adalah glyph kerja: glyph ini tidak diekspor sebagai
glyph tersendiri. Kalau belum ada glyph sudut, menunya menjelaskan: "Gambar dulu glyph bernama
_corner.sesuatu: titik asalnya diletakkan di node, sumbu x-nya mengikuti path."

## Komponen pintar

[Komponen](/reference/glossary/#component) biasanya memakai ulang glyph lain persis apa adanya.
[*Smart component*](/reference/glossary/#smart-component) (komponen pintar) bisa **berubah bentuk**
setiap kali dipakai. Komponen pintar punya sumbu sendiri, seperti *variable font* mini: sebuah batang
bisa punya sumbu **Length** (panjang), sebuah lengkung bisa punya sumbu **Width** (lebar). Setiap
tempat yang memakai bagian itu mengatur nilainya sendiri.

![Batang pintar: glyph _bar adalah gambar di nilai minimum sumbu (panjang 100 unit), _bar.smart.Length adalah gambar di nilai maksimum (600), dan komponen dengan Length 300 dihitung di antaranya.](diagram:drawing-effects-smart)

Cara kerjanya:

- Glyph pintarnya sendiri (misalnya `_bar`) adalah gambar di nilai **minimum** setiap sumbu.
- Untuk setiap sumbu ada glyph **kutub** bernama `_bar.smart.Length`: gambar yang sama di nilai
  **maksimum**.
- Komponen `_bar` menyimpan nilai untuk setiap sumbu. FontEasy menghitung bentuk di antara kedua
  gambar, persis seperti interpolasi antar master. Jadi kutubnya harus punya titik yang sama dengan
  glyph pintarnya.
- Saat ekspor, komponen pintar diubah menjadi outline biasa, dan glyph kutub tidak diekspor.

### Membuat bagian pintar

Komponen pintar ada di Mode Pro.

1. Buat dan gambar bagiannya, misalnya batang mendatar bernama `_bar`, dalam bentuk terpendeknya.
2. Buka glyph itu, dan di panel **Gambar** di bawah **Komponen Pintar**, klik **Tambah Sumbu**.
   FontEasy menyarankan nama (Width, Height, Length, Size); ketik nama sendiri kalau mau, lalu atur
   **min** dan **max** (dimulai dari 0 dan 100). FontEasy membuat glyph kutub sebagai salinan.
3. Klik **gambar maks** untuk membuka glyph kutub, lalu seret titik-titiknya ke bentuk di nilai
   maksimum: untuk sumbu Length, seret ujung kanan batang ke luar. Pindahkan titik; jangan menambah
   titik.

### Memakai bagian pintar

1. Buka glyph yang akan memakai bagian itu, misalnya `T`, dan tambahkan `_bar` sebagai komponen,
   dengan cara yang sama seperti komponen lain (lihat [bab tentang komponen](/drawing/components/)).
2. Di panel **Gambar**, di bawah **Komponen Pintar**, setiap komponen pintar menampilkan nama dasarnya
   dan satu slider untuk setiap sumbu.
3. Geser slider untuk merentangkan bagian itu. Setiap komponen menyimpan nilainya sendiri.

![Huruf T yang dibangun dengan batang pintar: panel Gambar mencantumkan dua komponen _bar, dengan slider Length di 520 dan 600.](screen:smart)

## Kurva Hobby

Menggambar kurva halus dengan handle butuh latihan: Anda harus menarik setiap
[*handle*](/reference/glossary/#handle) dengan panjang dan sudut yang tepat.
[Kurva Hobby](/reference/glossary/#hobby-curve) mengerjakan itu untuk Anda. Anda cukup meletakkan
titik-titik yang harus dilewati kurva, dan FontEasy menghitung handle yang halus dengan metode John
Hobby (yang dipakai bahasa gambar MetaPost). Empat titik yang diletakkan seperti sudut-sudut belah
ketupat menghasilkan lingkaran yang hampir sempurna.

![Kiri: empat titik diklik membentuk belah ketupat. Kanan: kurva Hobby yang halus melewatinya, sebuah lingkaran, dengan handle yang dihitung otomatis.](diagram:drawing-effects-hobby)

Ada tiga cara memakai kurva Hobby:

- **Sambil menggambar**: pilih alat Pena dan centang **Kurva Hobby** di bilah opsi. Klik hanya
  titik-titik yang dilewati kurva; handle-nya dihitung sambil jalan.
- **Pada kontur yang sudah digambar**: di panel **Gambar**, di bawah **Kurva**, klik **Kurva Hobby**
  untuk mengolah ulang semua kontur glyph, atau pilih beberapa titik dulu lalu klik **Kurva Hobby
  (Terpilih)** untuk mengolah ulang kontur-kontur itu saja.
- **Dari menu**: **Glyph › Kontur › Kurva Hobby** (Mode Pro).

Sudut tetap sudut: titik tajam di antara dua garis lurus mempertahankan garis lurusnya.

:::tip
Kurva Hobby sangat cocok untuk bentuk yang cepat dan rata, seperti huruf bulat dan lengkungan. Untuk
kendali halus atas kurva tertentu, atur handle-nya dengan tangan sesudahnya; hasilnya kurva biasa.
:::

## Menjadikan permanen: Terapkan Semua Efek

Efek hidup itu luwes, tetapi kadang Anda butuh outline biasa: untuk menyetel titik dengan tangan,
untuk berbagi sumber dengan orang yang memakai editor font lain, atau untuk menyamakan struktur master.

Di panel **Gambar** di bawah **Kurva**, **Terapkan Semua Efek** menjadikan *stroke*, sudut, dan bagian
pintar dari glyph yang terbuka sebagai outline biasa, di semua master. Tombol ini hanya muncul kalau
glyph punya efek. (Untuk *stroke* saja, **Bentangkan** di bagian Stroke melakukan hal yang sama.)

Anda tidak perlu menerapkan efek sebelum mengekspor. FontEasy menerapkannya pada salinan setiap kali
membangun font, jadi font hasil ekspor selalu berisi outline biasa sementara sumber Anda tetap
menyimpan efek yang bisa disunting.

:::caution
Efek yang sudah diterapkan tidak bisa dimatikan lagi, kecuali dengan **Edit › Batalkan**. Simpan
salinan font, atau terapkan efek hanya kalau desainnya sudah mantap.
:::

## Papan Sketsa

Sebelum menggambar glyph dengan serius, ada baiknya mencoret-coret dulu: mencoba beberapa bentuk,
melihat sebuah kata secara utuh, membandingkan ide dengan yang sudah ada di font. **Papan Sketsa**
adalah tab kertas buram untuk itu. Buka lewat **Alat › Papan Sketsa**; papan ini muncul sebagai tab di
sebelah **Ikhtisar**.

![Tab Papan Sketsa untuk Mutator Sans: huruf e dan a digambar dengan pensil (a terpilih), kata SKETCH di-set dengan font di bawahnya, dan bilah alat berisi Pensil, Teks, Pilih, nama glyph a.sketch, dan Buat Glyph.](screen:sketch)

Bilah alatnya punya tiga alat:

- **Pensil**: menggambar goresan bebas. **Lebar** mengatur tebal pensil (2 sampai 400 unit).
- **Teks**: ketik sebuah kata di kotak **Teks**, lalu klik papan untuk menempatkannya. Teks di-set
  dengan font saat ini, jadi Anda bisa melihat sketsa di samping huruf sungguhan.
- **Pilih**: klik sebuah item untuk memilihnya, <kbd>Shift</kbd>+klik untuk menambah atau mengurangi
  pilihan, seret untuk memindahkan, dan tekan <kbd>Delete</kbd> atau klik **Hapus** untuk menghapusnya.

Gulir untuk zoom dan seret dengan tombol kanan mouse untuk menggeser. Garis samar menunjukkan
*baseline*, *x-height*, dan *cap height*, sehingga sketsa Anda berukuran pas. **Kosongkan Papan**
menghapus semuanya. Papan ini disimpan bersama font.

### Menjadikan sketsa sebagai glyph

1. Dengan **Pilih**, klik goresan pensil yang membentuk huruf itu (<kbd>Shift</kbd>+klik untuk lebih
   dari satu).
2. Ketik nama di **Nama glyph**, misalnya `a.sketch` atau `a`.
3. Klik **Buat Glyph**.

FontEasy membuat glyph baru dari goresan yang dipilih: setiap goresan menjadi path terbuka dengan
kurva halus yang dicocokkan dengannya, digambar dengan pena bulat selebar pensil Anda. Glyph baru itu
terbuka di editor, dan bilah status bertuliskan "Glyph a.sketch dibuat dari sketsa." Sekarang Anda
bisa memperhalus path-nya, mengganti pena di panel Gambar, atau membentangkan *stroke*-nya menjadi
outline.

## Tips

- **Gabungkan efek.** *Stroke* dengan sudut bulat dan garis tengah berkurva Hobby bisa menghasilkan
  seluruh alfabet bulat dari segelintir titik.
- **Rapikan glyph efek.** Beri nama glyph sudut `_corner.…` dan bagian pintar dengan garis bawah di
  depan, seperti `_bar`, supaya mudah dibedakan dari huruf sungguhan.
- **Pakai Pratinjau.** Efek tampil di mana-mana, termasuk di panel Pratinjau dan Ikhtisar, jadi Anda
  bisa menilainya di ukuran teks.

:::caution[Kalau ada yang tampak salah]
- **Glyph ber-stroke kosong.** Pastikan **Gambar path dengan pena** tercentang dan lebarnya tidak
  terlalu kecil. Path tertutup hanya digores dengan **Path tertutup juga**.
- **Ink trap mengarah ke sisi yang salah.** *Ink trap* memotong ke dalam tinta, yang ditentukan
  FontEasy dari arah kontur. Pakai **Glyph › Kontur › Perbaiki Arah**, lalu lihat lagi.
- **Bagian pintar tidak merenggang.** Glyph kutub harus punya titik yang sama dengan glyph dasarnya;
  kalau tidak, kutub itu dilewati.
:::

## Ringkasan

- Efek gambar bersifat **hidup**: glyph menyimpan gambar Anda, dan efeknya diterapkan setiap kali glyph
  ditampilkan atau diekspor.
- *Stroke* mengubah path menjadi garis tengah yang digambar dengan **pena bulat** (lebar rata) atau
  **mata pena datar** (tebal-tipis, diatur lewat **Sudut mata pena** dan **Goresan tipis**). Pakai
  untuk font *monoline* dan font garis tunggal.
- **Efek sudut** (**Bulatkan**, **Potong Sudut**, **Ink Trap**, **Glyph Sudut**) dipasang pada node
  sudut terpilih dan ditandai R, C, T, G di kanvas.
- **Komponen pintar** punya sumbu sendiri; glyph kutub (`nama.smart.Sumbu`) menyimpan gambar di nilai
  maksimum, dan setiap komponen mengatur nilainya sendiri.
- **Kurva Hobby** memberi kurva halus melalui titik-titik yang Anda klik.
- **Bentangkan** dan **Terapkan Semua Efek** menjadikan efek sebagai outline biasa.
- **Papan Sketsa** adalah tab coretan untuk goresan pensil dan kata, dan **Buat Glyph** mengubah
  goresan menjadi glyph.

## Coba sendiri

1. Gambar "l" sebagai satu path terbuka tegak dan "o" sebagai lingkaran tertutup. Beri "l" *stroke*
   dengan pena bulat, lebar 80. Lalu centang **Path tertutup juga** dan lihat "o" berubah menjadi
   cincin. Ganti ke **Mata pena datar** dan coba sudut mata pena 0°, 30°, dan 60°.
2. Di Mode Pro, gambar persegi panjang, pilih keempat sudutnya, lalu klik **Bulatkan** dengan ukuran
   40. Kemudian pilih satu sudut dan klik **Ink Trap**. Terakhir klik **Terapkan Semua Efek** dan lihat
   titik-titik yang dibuat FontEasy.
