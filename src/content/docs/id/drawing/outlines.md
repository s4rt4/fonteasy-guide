---
title: Outline, Titik, dan Kurva
description: Cara huruf digambar sebagai outline dari titik dan kurva Bézier, serta kebiasaan yang membuat outline tetap rapi.
---

Setiap huruf dalam font digital adalah sebuah gambar. Bukan foto yang tersusun dari kotak-kotak
kecil, melainkan uraian yang tepat tentang tepinya: "mulai di sini, naik lurus ke sana, lalu
melengkung ke sini". Tepi itu disebut *outline* (garis tepi bentuk huruf), dan komputer mengisinya
dengan tinta setiap kali Anda mengetik. Karena outline berupa uraian dan bukan gambar piksel, huruf
yang sama tetap tajam pada ukuran 8 poin di layar ponsel maupun 800 poin di poster.

Di FontEasy Anda menggambar outline itu sendiri, titik demi titik. Awalnya mungkin terasa asing,
terutama kurvanya, yang dikendalikan oleh "pegangan" kecil yang mencuat dari outline. Kabar baiknya,
hanya ada beberapa gagasan yang perlu dipahami. Setelah gagasan itu melekat, setiap huruf dibangun
dari potongan-potongan yang sama.

Bab ini menjelaskan gagasan tersebut sebelum Anda benar-benar mulai menggambar. Inilah teori di
balik bab-bab berikutnya, jadi luangkan waktu untuk memperhatikan gambarnya.

Dalam bab ini Anda akan mempelajari:

- apa itu outline, titik, *path*, dan kontur;
- beda kontur tertutup dan terbuka, serta apa itu *counter*;
- cara kerja kurva Bézier, dan beda kurva kubik dan kuadratik;
- apa yang disimpan FontEasy saat Anda menggambar, mengimpor, dan mengekspor;
- titik sudut dan titik halus;
- mengapa titik sebaiknya diletakkan di titik ekstrem kurva;
- apa itu arah kontur dan mengapa arah itu menentukan letak lubang;
- apa itu kontur bertumpuk dan kapan perlu dihapus;
- daftar singkat kebiasaan baik agar outline tetap bersih.

## Huruf adalah sebuah outline

*[Glyph](/reference/glossary/#glyph)* adalah satu gambar dalam font: bentuk untuk "a", "é", "7",
atau "&". Setiap glyph terdiri atas satu atau beberapa
[outline](/reference/glossary/#outline). Bayangkan cetakan kue: tepi logamnya adalah outline, dan
adonan di dalamnya adalah tinta. File font hanya menyimpan cetakannya. Komputer menekankan cetakan
itu ke adonan setiap kali huruf ditampilkan.

Gambar di bawah adalah huruf "o" dari Source Serif seperti yang dilihat FontEasy. Ada dua lingkaran
tertutup: tepi luar dan tepi lubang. Di sepanjang keduanya terdapat titik-titik yang menentukan
bentuknya.

![Huruf "o" Source Serif: node persegi dan bulat berada di outline, lingkaran kecil di luar outline adalah handle, dan lubang di tengah adalah counter.](diagram:outlines-anatomy)

Kata-kata dalam gambar ini adalah kosakata seluruh panduan:

- *[Point](/reference/glossary/#point)* (titik) adalah sebuah posisi pada gambar, dengan nilai x
  (kiri–kanan) dan y (atas–bawah), diukur dalam satuan font.
- *[On-curve point](/reference/glossary/#on-curve-point)* (titik on-curve), disebut juga
  *[node](/reference/glossary/#node)*, terletak tepat di outline. Outline melewatinya.
- *[Off-curve point](/reference/glossary/#off-curve-point)* (titik off-curve), biasa disebut
  *[handle](/reference/glossary/#handle)* (pegangan), terletak di samping outline. Outline tidak
  menyentuhnya; handle hanya menarik kurva ke arahnya, seperti magnet.
- *[Path](/reference/glossary/#path)* adalah garis yang melewati titik-titik, dan path yang
  tertutup disebut [kontur](/reference/glossary/#contour).
- *[Counter](/reference/glossary/#counter)* adalah ruang kosong di dalam huruf, seperti lubang
  "o" atau bagian tertutup pada "e".

:::note[Satuan font]
Posisi diukur dalam satuan font, bukan milimeter atau piksel. Sebagian besar font membagi tinggi
sebuah persegi khayal, yaitu *[em](/reference/glossary/#em)*, menjadi 1000 satuan
(*[units per em](/reference/glossary/#units-per-em)*). Huruf "o" mungkin setinggi 475 satuan.
Saat dicetak pada 10 poin, 1000 satuan itu mengecil menjadi 10 poin; pada 100 poin, membesar
menjadi 100 poin. Anda selalu menggambar dalam satuan font.
:::

## Titik, path, dan kontur

### Node dan segmen

Di antara dua node terdapat sebuah **segmen**. Jika tidak ada handle di antara kedua node, segmen
itu berupa garis lurus. Jika ada handle, segmen itu berupa kurva. Kontur hanyalah rangkaian segmen:
garis, kurva, kurva, garis, dan seterusnya, sampai kembali ke titik awalnya.

Jadi huruf kapital "I" tanpa serif cukup dengan empat node dan empat segmen lurus: sebuah persegi
panjang. Huruf "o" seperti di atas memerlukan dua kontur, masing-masing dengan empat node dan
empat segmen lengkung.

### Kontur tertutup dan terbuka

Kontur yang kembali ke node awalnya disebut **tertutup**. Hanya kontur tertutup yang dapat diisi
tinta, karena hanya kontur seperti itu yang punya bagian dalam dan luar. Path yang berhenti
sebelum kembali disebut *[open contour](/reference/glossary/#open-contour)* (kontur terbuka): ia
punya dua ujung yang lepas.

![Di kiri path terbuka dengan dua ujung lepas, di kanan kontur tertutup tanpa ujung yang terisi.](diagram:outlines-open-closed)

Kontur terbuka hampir selalu merupakan kesalahan dalam font. Biasanya terjadi karena Anda berhenti
menggambar dengan Pena sebelum mengeklik node pertama lagi, atau karena kontur dipotong dengan
Gunting. FontEasy menandai kontur terbuka sebagai *error* di panel **Validasi** ("Kontur terbuka"),
dan tombol **Perbaiki** menutupnya dengan garis lurus. Path terbuka hanya berguna di satu tempat:
sebagai kerangka huruf bergaris (*stroke*), yang diubah oleh
[panel Gambar](/advanced/drawing-effects/) menjadi outline sungguhan.

### Beberapa kontur, dan lubang

Sebuah glyph boleh punya kontur sebanyak yang diperlukan. Huruf "i" punya dua (batang dan titik),
"o" punya dua (tepi luar dan lubang), "B" punya tiga (tepi luar dan dua lubang), "%" punya lima.
Apakah sebuah kontur menambah tinta atau membuat lubang ditentukan oleh arahnya, yang akan Anda
temui di bagian [Arah kontur](#arah-kontur) di bawah.

## Kurva tanpa rasa takut: kurva Bézier

Kurva pada font adalah *[Bézier curve](/reference/glossary/#bezier-curve)* (kurva Bézier),
dinamai menurut insinyur Pierre Bézier yang memakainya untuk merancang bodi mobil. Anda tidak
memerlukan matematika untuk memakainya. Cukup satu gambaran di kepala:

> Kurva meninggalkan sebuah node ke arah handle-nya, lalu membelok ke arah handle berikutnya
> sebelum tiba di node berikutnya.

Handle punya dua tugas. **Arahnya** menentukan ke mana kurva berangkat. **Panjangnya** menentukan
seberapa lama kurva mempertahankan arah itu sebelum berbelok. Handle pendek membuat kurva cepat
berbelok; handle panjang membuatnya bertahan lebih lama pada arahnya.

![Kurva kubik dengan dua handle di antara dua node, dan kurva kuadratik dengan satu titik off-curve bersama.](diagram:outlines-bezier)

### Kurva kubik dan kuadratik

Ada dua jenis kurva Bézier dalam font:

- *[Cubic curve](/reference/glossary/#cubic-curve)* (kurva kubik) punya **dua** handle per
  segmen: satu keluar dari node awal, satu masuk ke node akhir. Setiap node punya handle sendiri di
  tiap sisinya, sehingga setiap kurva bisa dibentuk dengan teliti. Jenis inilah yang dipakai font
  PostScript, yang sekarang berarti file `.otf` dengan outline
  *[CFF](/reference/glossary/#cff)*. Illustrator, Inkscape, dan Figma juga menggambar dengan kurva
  kubik.
- *[Quadratic curve](/reference/glossary/#quadratic-curve)* (kurva kuadratik) punya **satu** titik
  off-curve per segmen, dipakai bersama oleh kedua ujungnya. Kurva ini lebih ringan dihitung,
  sehingga dipakai format *[TrueType](/reference/glossary/#truetype)* (file `.ttf`). Kurva kuadratik
  tidak bisa melengkung sebebas kurva kubik, jadi outline kuadratik biasanya butuh lebih banyak
  titik untuk bentuk yang sama. TrueType juga boleh merangkai beberapa titik off-curve berturut-turut;
  node di antaranya lalu dianggap ada, tepat di tengah-tengah titik off-curve itu.

Perbedaannya terlihat pada huruf yang sama. Huruf "o" di kiri berasal dari file TrueType Source
Serif, yang di kanan dari file OpenType (CFF)-nya:

![Huruf "o" yang sama, di kiri digambar dengan kurva kuadratik berisi rangkaian banyak titik off-curve, di kanan dengan kurva kubik yang titiknya lebih sedikit.](diagram:outlines-ttf-otf)

Keduanya menggambarkan bentuk yang hampir sama. Versi kubik lebih mudah diedit dengan tangan karena
setiap kurva punya tepat dua handle yang bisa dipegang.

### Apa yang disimpan FontEasy

FontEasy menyimpan titik-titik Anda apa adanya, seperti format *[UFO](/reference/glossary/#ufo)*,
sehingga kurva kubik dan kuadratik bisa hidup berdampingan dalam satu font tanpa ada yang hilang.

- Saat Anda **menggambar** dengan Pena, Pensil, atau Elips, hasilnya kurva kubik.
- Saat Anda **mengimpor** file `.ttf`, kurva kuadratiknya tetap kuadratik. Saat mengimpor file
  `.otf`, kurva kubiknya tetap kubik.
- Di Mode Pro Anda bisa mengubah glyph dari satu jenis ke jenis lain dengan
  **Glyph › Kontur › Ubah ke Kubik** atau **Glyph › Kontur › Ubah ke Kuadratik**. Keduanya bekerja
  pada glyph yang sedang terbuka, atau pada semua glyph yang Anda pilih di Ikhtisar.
- Saat Anda **mengekspor**, FontEasy membuat apa yang diperlukan tiap format. File `.ttf` mendapat
  outline kuadratik; file `.otf` mendapat outline CFF yang digambar dari kurva kubik Anda. Anda
  tidak perlu mengubah apa pun sendiri sebelum mengekspor.

![Mengedit "a" Source Serif yang diimpor dari file TrueType: banyaknya titik off-curve bulat kecil adalah kurva kuadratik dari file itu.](screen:g-edit)

:::tip
Jika Anda mengedit font TrueType hasil impor dengan tangan dan merasa titik off-curve-nya terlalu
banyak, pilih dulu **Glyph › Kontur › Ubah ke Kubik** untuk glyph itu. Konversinya tepat, jadi
bentuknya tidak berubah, dan Anda mendapat dua handle per kurva untuk diolah.
:::

## Titik sudut dan titik halus

Node ada dua jenis, dan bedanya terletak pada handle di kedua sisinya.

- Pada *[corner point](/reference/glossary/#corner-point)* (titik sudut), outline berganti arah
  secara tiba-tiba. Handle-nya (jika ada) menunjuk ke arah yang berbeda. Bayangkan puncak huruf
  "A" atau sudut-sudut huruf "E".
- Pada *[smooth point](/reference/glossary/#smooth-point)* (titik halus), outline mengalir tanpa
  tonjolan. Kedua handle terletak pada satu garis lurus, di sisi yang berlawanan dari node. Puncak
  dan dasar huruf "o" adalah titik halus.

![Di kiri titik sudut: kedua handle membentuk sudut dan outline berbelok tajam; di kanan titik halus: kedua handle berada pada satu garis lurus.](diagram:outlines-corner-smooth)

FontEasy menggambar kedua jenis ini secara berbeda di kanvas, sehingga mudah dibedakan:

| Di kanvas | Artinya |
|---|---|
| Persegi | Titik sudut (node) |
| Lingkaran besar | Titik halus (node) |
| Lingkaran kecil | Titik off-curve (handle) |
| Segitiga kecil di samping node | Node pertama kontur, menunjuk ke arah jalannya kontur |

Saat Anda menyeret satu handle dari titik halus, FontEasy memutar handle di sisi lain agar
keduanya tetap segaris. Handle yang lain mempertahankan panjangnya sendiri. Pada titik sudut,
setiap handle bergerak sendiri-sendiri.

Untuk mengubah node dari sudut menjadi halus atau sebaliknya, pilih node itu lalu pilih
**Glyph › Ubah Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>), atau klik dua kali node tersebut dengan
tool Pilih atau Node. Saat sebuah node menjadi halus, FontEasy meluruskan kedua handle-nya.

:::caution[Titik halus yang tertekuk]
Jika sebuah node ditandai halus tetapi handle-nya tidak segaris, outline akan menampakkan tonjolan
kecil. FontEasy melaporkannya di panel **Validasi** sebagai "Titik halus yang tertekuk", dan
**Perbaiki** meluruskan handle-nya.
:::

## Panjang handle dan bentuk kurva

Arah handle menentukan ke mana kurva pergi. Panjangnya menentukan wataknya. Berikut tiga kurva dari
dua node yang sama, dengan arah handle yang sama, dan hanya panjangnya yang diubah:

![Tiga kurva seperempat di antara dua node yang sama: handle pendek menghasilkan kurva lancip, handle seimbang kurva bulat, handle panjang kurva seperti kotak.](diagram:outlines-handle-length)

- **Handle pendek** membuat kurva cepat berbelok. Hasilnya tampak lancip dan tipis di tengah.
- **Handle seimbang** menghasilkan kurva yang rata dan bulat. Untuk seperempat lingkaran sempurna,
  panjang tiap handle sekitar 55% dari jari-jarinya.
- **Handle panjang** membuat kurva lebih lama lurus dan baru berbelok di akhir. Kurvanya tampak
  kaku, seperti persegi yang sudutnya dibulatkan.

Desainer huruf memakai ketiganya dengan sengaja. Huruf "o" sans-serif geometris mendekati
lingkaran; "o" berbentuk *superellipse* (seperti pada banyak huruf grotesk) punya handle lebih
panjang dan tampak lebih persegi. Yang perlu dihindari adalah handle yang begitu panjang sampai
saling bersilangan, atau melewati node berikutnya. Hal itu membuat kurva melingkar atau
menggembung dengan aneh.

:::tip
Kebiasaan yang berguna saat menilai sebuah kurva: lihat dua handle pada satu segmen. Jika yang
satu jauh lebih panjang daripada yang lain, kurvanya biasanya tampak berat sebelah. Samakan dulu
panjangnya, lalu sesuaikan dari situ.
:::

## Titik ekstrem

*[Extreme point](/reference/glossary/#extreme-point)* (titik ekstrem) adalah tempat pada kurva
yang paling atas, paling bawah, paling kiri, atau paling kanan. Pada huruf "o", itu adalah puncak,
dasar, serta sisi paling kiri dan kanan. Outline yang baik punya node di setiap titik ekstrem, dan
handle pada node itu tepat horizontal (di atas dan bawah) atau tepat vertikal (di kiri dan kanan).

![Di kiri elips dengan node di atas, bawah, kiri, dan kanan serta handle yang lurus; di kanan bentuk yang sama dengan node di antaranya, sehingga tidak ada node di titik ekstrem.](diagram:outlines-extremes)

Kedua gambar menunjukkan bentuk yang sama, jadi mengapa ini penting?

- **Tampilan dan *hinting*.** Pada ukuran kecil di layar, font diselaraskan dengan kisi piksel.
  *[Hinting](/reference/glossary/#hinting)* (petunjuk penyelarasan ke piksel) dan perender bekerja
  jauh lebih baik bila bagian tertinggi, terendah, dan terluar sebuah kurva berupa node yang bisa
  diselaraskan.
- **Pengukuran.** Kotak batas sebuah glyph (lebar dan tinggi totalnya) langsung diketahui dari
  titik-titiknya bila titik ekstrem berupa node. Spasi dan perataan jadi lebih andal.
- **Pengeditan.** Handle horizontal dan vertikal mudah dikendalikan: Anda tahu di mana kurva paling
  datar. Puncak "o" bisa diratakan ke x-height dalam satu gerakan.
- **Font variabel.** Saat glyph diinterpolasi di antara master, titik ekstrem yang berupa node
  menjaga bentuk tetap stabil.

Berikut huruf sungguhan yang digambar dengan cara ini. Setiap kurva huruf "S" punya node di atas,
bawah, kiri, dan kanan, dengan handle datar atau tegak:

![Huruf "S" Source Serif dengan node dan handle-nya: node berada di puncak, dasar, dan sisi setiap kurva, dan handle-nya horizontal atau vertikal.](diagram:outlines-s)

FontEasy memeriksa hal ini untuk Anda. Kurva yang menggembung lebih dari satu satuan melewati
node-nya dilaporkan sebagai "Titik ekstrem hilang" di panel **Validasi**. Di Mode Pro,
**Glyph › Kontur › Tambah Titik Ekstrem** menambahkan node yang hilang pada glyph yang terbuka
(atau pada glyph yang dipilih di Ikhtisar), dan tombol **Perbaiki** di panel Validasi melakukan hal
yang sama untuk satu masalah.

## Arah kontur

Setiap kontur berjalan ke satu arah: dari node pertamanya ke node berikutnya, terus berkeliling.
*[Contour direction](/reference/glossary/#contour-direction)* (arah kontur) ini tidak tampak pada
huruf yang dicetak, tetapi menentukan sesuatu yang penting: **kontur mana yang menambah tinta dan
mana yang membuat lubang**.

Aturan yang diikuti FontEasy adalah aturan PostScript dan UFO:

- **Kontur luar berjalan berlawanan arah jarum jam.**
- **Kontur dalam (lubang) berjalan searah jarum jam.**

Bila kontur dalam huruf "o" berjalan berlawanan dengan kontur luarnya, komputer tahu bahwa itu
lubang dan membiarkannya kosong. Bila keduanya searah, banyak program mengisi lubang itu, dan huruf
"o" Anda berubah menjadi bulatan hitam.

![Di kiri "o" yang benar: kontur luar berlawanan arah jarum jam dan kontur dalam searah jarum jam, sehingga counter tetap kosong; di kanan keduanya berlawanan arah jarum jam dan lubangnya tertutup.](diagram:outlines-direction)

Arah kontur terlihat di editor: node pertama setiap kontur punya segitiga kecil di sampingnya, yang
menunjuk ke arah jalannya kontur. Perintah untuk mengubahnya ada di menu **Glyph › Kontur**:

| Perintah | Fungsinya |
|---|---|
| **Perbaiki Arah** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) | Memutar setiap kontur glyph ke arah yang benar: kontur luar berlawanan jarum jam, lubang searah jarum jam. |
| **Balik Arah** | Membalik kontur yang dipilih (atau semua kontur bila tidak ada yang dipilih). |
| **Jadikan Titik Awal** | Menjadikan node yang dipilih sebagai node pertama konturnya. |

FontEasy menentukan mana yang lubang dengan melihat bentuk mana yang seluruhnya berada di dalam
bentuk lain. Jadi palang huruf "H" yang menumpang di atas batangnya tetap dihitung sebagai bentuk
luar, bukan lubang. Bila arahnya salah, panel **Validasi** mencantumkan "Arah kontur salah", dan
**Perbaiki** membaliknya.

:::tip
Anda jarang perlu memikirkan arah saat menggambar. Gambar saja bentuk-bentuk Anda, lalu tekan
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> (Perbaiki Arah) setelah selesai. Titik awal terutama
penting untuk [font variabel](/advanced/variable/), di mana setiap master harus memulai tiap
kontur pada node yang bersesuaian.
:::

## Kontur bertumpuk

Saat menggambar, sering kali paling mudah membangun huruf dari potongan-potongan sederhana yang
saling bertumpuk. Huruf "H" bisa dibuat dari dua persegi panjang tegak dan satu palang yang
melintang di atasnya; huruf "t" dari batang dan palang. Inilah kontur yang
*[overlap](/reference/glossary/#overlap)* (bertumpuk).

![Di kiri huruf "H" yang dibangun dari tiga persegi panjang bertumpuk; di kanan huruf yang sama setelah Hapus Tumpang Tindih, menjadi satu kontur.](diagram:outlines-overlap)

Tumpukan seperti ini tidak masalah di file kerja Anda. Saat Anda mengekspor font biasa (statis),
FontEasy menghapusnya untuk Anda; dialog **Ekspor Font** punya pilihan **Hapus overlap (source Anda
tetap utuh)**, dan gambar Anda tidak diubah. Font variabel sengaja mempertahankan tumpukannya,
karena setiap master harus punya kontur yang sama.

Jika Anda ingin outline yang bersih juga di gambar Anda, pilih **Glyph › Kontur › Hapus Tumpang
Tindih** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>). Kurva tetap kurva, dan kontur yang tidak
bertumpuk dengan apa pun dibiarkan persis seperti semula. Panel **Validasi** mencantumkan tumpukan
sebagai "Kontur bertumpuk", tetapi hanya sebagai informasi, bukan *error*.

Lain halnya dengan kontur yang memotong **dirinya sendiri**, seperti angka delapan. Ini dilaporkan
sebagai "Kontur memotong dirinya sendiri", sebuah *error*, karena sebagian bentuknya bisa tampil
sebagai lubang. **Perbaiki** mengurainya.

## Kebiasaan baik untuk outline yang bersih

Outline profesional tampak sederhana. Titik yang sedikit dan letaknya tepat lebih mudah diedit,
diinterpolasi, dan diberi *hinting*, serta menghasilkan kurva yang lebih mulus. Ingatlah kebiasaan
berikut:

1. **Pakai titik sesedikit yang dibutuhkan bentuknya.** Setiap node tambahan adalah tempat kurva
   bisa bergelombang. Huruf "o" cukup dengan empat node per kontur, bukan dua belas.
2. **Letakkan node di titik ekstrem**, dan buat handle di sana horizontal atau vertikal.
3. **Pakai titik halus di tempat outline mengalir** dan titik sudut hanya di tempat outline
   benar-benar berbelok tajam.
4. **Jaga handle tetap di dalam segmennya.** Handle tidak boleh melewati node berikutnya atau
   bersilangan dengan handle lainnya.
5. **Buat garis lurus benar-benar lurus.** Garis yang miring satu satuan dari horizontal biasanya
   akibat tangan tergelincir; panel Validasi melaporkannya sebagai "Garis hampir lurus".
6. **Tetap pada satuan bulat.** FontEasy menjepretkan (*snap*) titik ke satuan font bulat saat Anda
   menyeret, dan melaporkan "Koordinat pecahan" bila titik berada di antara satuan, karena titik itu
   dibulatkan saat ekspor.
7. **Tutup setiap kontur** dan periksa arahnya dengan
   <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> setelah selesai.
8. **Hindari titik yang saling bertindihan.** Dua node di tempat yang sama membuat segmen dengan
   panjang nol ("Titik ganda" di panel Validasi).

FontEasy punya perintah perapian untuk glyph yang terbuka, atau untuk semua glyph yang dipilih di
Ikhtisar, di menu **Glyph › Kontur**:

| Perintah | Fungsinya |
|---|---|
| **Sederhanakan** | Menghapus node dari bagian kurva yang mulus selama outline tetap dalam jarak satu satuan. Sudut, titik ekstrem, dan garis lurus dipertahankan. |
| **Bersihkan Titik** (Pro) | Menghapus titik ganda, node di tengah garis lurus, dan handle pada kurva yang sebenarnya lurus. |
| **Tambah Titik Ekstrem** (Pro) | Menambahkan node di setiap titik ekstrem yang belum punya. |
| **Bulatkan Sudut…** | Membulatkan titik sudut yang dipilih dengan jari-jari pilihan Anda. |

Lalu **Glyph › Perbaiki Masalah** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) memperbaiki semua
masalah yang bisa diperbaiki pada glyph dalam satu langkah. Seperti setiap pengeditan, semuanya
adalah satu langkah yang bisa dibatalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd>.

## Bila ada yang tampak salah

:::caution[Lubang huruf "o" (atau "a", "e", "B") saya tertutup]
Kontur dalamnya berjalan searah dengan kontur luar. Pilih **Glyph › Kontur › Perbaiki Arah**
(<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>).
:::

:::caution[Sebuah bentuk tampil sebagai garis tetapi tidak terisi]
Itu kontur terbuka. Klik **Perbaiki** di samping "Kontur terbuka" di panel Validasi, atau tutup
sendiri: pilih Pena lalu klik node pertama path tersebut.
:::

:::caution[Kurva tampak bergelombang atau tidak rata]
Kemungkinan node-nya terlalu banyak, atau ada titik halus yang tertekuk. Coba **Glyph › Kontur ›
Sederhanakan**, lalu perhatikan handle yang tersisa: apakah segaris, dan apakah kedua handle tiap
segmen kira-kira sama panjang?
:::

:::caution[Panel Validasi menulis "Titik ekstrem hilang"]
Sebuah kurva menggembung melewati node-nya. Klik **Perbaiki** di samping masalah itu, atau di Mode
Pro pilih **Glyph › Kontur › Tambah Titik Ekstrem**. Lalu periksa apakah node baru punya handle
datar atau tegak.
:::

Bab tentang [masalah outline](/drawing/problems/) membahas setiap pemeriksaan di panel Validasi
secara rinci.

## Ringkasan

- Glyph terdiri atas outline; outline diisi tinta, sehingga bisa diperbesar ke ukuran berapa pun.
- Node (titik on-curve) terletak di outline; handle (titik off-curve) menarik kurva.
- Kontur adalah rangkaian segmen yang tertutup. Hanya kontur tertutup yang diisi. Kontur terbuka
  adalah *error*, kecuali sebagai kerangka untuk *stroke*.
- Kurva Bézier meninggalkan node ke arah handle-nya; panjang handle menentukan seberapa bulat atau
  kaku kurvanya.
- Kurva kubik (dua handle per segmen) dipakai di font `.otf`/CFF dan oleh tool gambar FontEasy;
  kurva kuadratik (satu titik off-curve bersama) dipakai di font `.ttf`. FontEasy menyimpan
  keduanya dan membuat jenis yang tepat saat ekspor.
- Titik sudut berbelok tajam; titik halus punya handle yang segaris. Ubah dengan
  <kbd>Alt</kbd>+<kbd>S</kbd> atau klik dua kali.
- Letakkan node di titik ekstrem, dengan handle horizontal atau vertikal.
- Kontur luar berlawanan arah jarum jam, lubang searah jarum jam. Perbaiki Arah membereskannya
  dalam satu langkah.
- Tumpukan kontur tidak masalah saat menggambar; tumpukan dihapus saat font statis diekspor, atau
  dengan Hapus Tumpang Tindih.

## Coba sendiri

1. Buka font apa saja, klik dua kali huruf "o" di Ikhtisar, lalu pilih tool Node (<kbd>A</kbd>).
   Hitung node dan handle setiap kontur. Temukan segitiga yang menandai node pertama tiap kontur:
   ke arah mana masing-masing berjalan? Apakah ada node di atas, bawah, kiri, dan kanan setiap
   kurva?
2. Pilih tool Elips (<kbd>L</kbd>) dan seret sebuah bentuk di glyph kosong. Bentuk itu punya empat
   node halus di titik ekstremnya. Dengan tool Node, seret satu handle dari node puncak dan
   perhatikan handle di seberangnya ikut bergerak. Sekarang pilih node itu, tekan
   <kbd>Alt</kbd>+<kbd>S</kbd> untuk menjadikannya titik sudut, lalu seret handle-nya lagi.
   Batalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd> setelah selesai.
