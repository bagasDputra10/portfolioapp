class DashboardList {
  String item;
  String description;
  String imageAsset;
  List<String> imageSlider;
  List<String> imageUrls;

  DashboardList({
    required this.imageSlider,
    required this.item,
    required this.description,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var DashboardItemList = [
  DashboardList(
    imageSlider: ['images/IP1.jpg', 'images/IP2.jpg', 'images/IP3.jpeg'],
    item: 'Informasi Pribadi',
    description:
        'Saya Bagas Dwi Putra seorang fresh graduate saya memiliki rasa tanggung jawab yang tinggi, disiplin dalam bekerja, dan mampu memanajemen pekerjaan dengan baik. Menyelesaikan tugas secepatnya tanpa harus menunda adalah prioritas saya. Saya telah terbiasa bekerja dengan menggunakan komputer dan menyukai bidang komputer.',
    imageAsset: 'images/aboutmee.jpg',
    imageUrls: [
      'https://datascience.eu/wp-content/uploads/2019/12/iStock-1164502150-978x652.jpg',
      'https://www.atriainnovation.com/wp-content/uploads/2021/02/portada-1080x675.jpg.webp',
      'https://i0.wp.com/www.techquintal.com/wp-content/uploads/2021/05/Information-Technology.jpg?w=1366&ssl=1'
    ],
  ),
  DashboardList(
    imageSlider: [
      'images/tk.jpg',
      'images/sd.jpg',
      'images/smp.jpg',
      'images/sma.jpg',
      'images/kmpus.png',
    ],
    item: 'Riwayat Akademik',
    description:
        'Dalam riwayat pendidikan, Saya menjalani tingkat pendidikan pertama yaitu Di TK Persis Tarogong Kabupaten Garut pada tahun 2002 pada umur 5 tahun, Selanjutnya setelah dari tahapan pendidikan tersebut saya melanjutkan pendidikan di Sekolah Dasar Negeri Kota Kulon 1 dalam kurun waktu 6 tahun pada 2003 hingga 2009.Pada Tingkat Menengah Saya menjalani sekolah di SMPN 2 Garut pada tahun 2009 hingga 2012. Setelah itu saya melanjutkan pendidikan di SMAN 6 Garut dan lulus pada tahun 2015.Pada tahun 2015 juga saya melanjutkan jenjang pendidikan Strata-1/ Sarjana. Saya diterima dan menjalankan pendidikan di Institut Teknologi Nasional Bandung. Saya dinyatakan lulus Sarjana pada tahun 2022, dalam mendapatkan gelar tersebut Saya telah melakukan penelitian tugas akhir yang berjudul Implementasi Advanced Encryption Standard (AES) Pada Sistem Keamanan Electric Starter Berbasis Arduino.',
    imageAsset: 'images/edu.jpg',
    imageUrls: [
      'https://i0.wp.com/yunandracenter.com/wp-content/uploads/2022/01/Screenshot_2022-01-29-08-18-26-58_40deb401b9ffe8e1df2f1cc5ba480b12_copy_300x150.jpg?resize=300%2C150&ssl=1',
      'https://i2.wp.com/www.koran-fakta.com/wp-content/uploads/2020/07/IMG_20200728_121059_1_copy_640x480.jpg?fit=640%2C480&ssl=1',
      'https://smpn2garut.sch.id/wp-content/uploads/2022/03/LOGO-DOEGA-2021.png',
    ],
  ),
  DashboardList(
    imageSlider: [
      'images/pk1.png',
      'images/pk2.png',
      'images/pk3.png',
      'images/pk4.png'
    ],
    item: 'Pengalaman Kerja',
    description:
        'Saya memiliki pengalaman kerja internship (Magang) di PT Bayu Sinergi Solusi dengan posisi Web Developer dengan kurun waktu Agustus 2020 hingga November 2020. Adapun detail pekerjaan tersebut adalah  Melakukan perancangan dan pembangunan database serta melakukan pembuatan website pada sisi frontend dan backend dengan penerapan Content Management System (CMS) menggunakan Framwork Laravel 7 dan PostGreeQL.',
    imageAsset: 'images/jobs.jpg',
    imageUrls: [
      'https://www.malwarebytes.com/blog/images/uploads/2018/08/cmsheader.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/640px-Postgresql_elephant.svg.png',
      'https://ruko.s3.ap-southeast-1.amazonaws.com/rumahkomunitas.com/tulisan/040320063532_laravel7.jpg',
    ],
  ),
  DashboardList(
    imageSlider: [
      'images/po1.jpg',
      'images/po2.jpg',
      'images/po3.jpg',
      'images/po4.jpg'
    ],
    item: 'Pengalaman Organisasi',
    description:
        '-Institut Teknologi Nasional Bandung Ketua Divisi Logistik Umum | Dies Natalis Itenas Charity 45th | 2017 ,-Himpunan Mahasiswa Teknik Informatika ITENAS  Badan Pengurus | Ketua divisi Humas Eksternal | 2017-2018, -Himpunan Mahasiswa Teknik Informatika ITENAS Ketua Pelaksana | Dies Natalis HMIF 13th | 2019 , -Himpunan Mahasiswa Teknik Informatika ITENAS Ketua Logistik | Pengabdian Masyarakat HMIF | 2017 , -Himpunan Mahasiswa Teknik Informatika ITENAS Ketua Logistik | Pengabdian Masyarakat HMIF | 2017 , -Jurusan Teknik Informatika Anggota Divisi Humas Eksternal | Technovature| 2018 ',
    imageAsset: 'images/org.jpg',
    imageUrls: [
      'https://mir-s3-cdn-cf.behance.net/projects/404/b0506899281347.Y3JvcCwyMDgzLDE2MjksMCwyMA.jpg',
      'https://kemahasiswaan.itenas.ac.id/wp-content/uploads/2021/09/hmif.jpg',
      'https://www.infobdg.com/v2/wp-content/uploads/2018/03/POster-ITIC.png',
    ],
  ),
  DashboardList(
    imageSlider: [
      'images/sp1.jpg',
      'images/sp2.jpg',
      'images/sp3.png',
      'images/sp4.jpg'
    ],
    item: 'Sertifikasi Dan Pelatihan',
    description:
        '-Kementrian Komunikasi Dan Informatika RI | Digitalent Scholarships | EC- Council Secure Application Development | 2021 , -Dibimbing.Id | Digital Skill Fair 4.0 |User Interface & User Experience Development | 2021 , - HMIF X Progate | Coding Bootcamp Hmif X Progate | SQL Coding Bootcamp | 2021 , -Kartu Prakerja | Belajar Pembuatan Mobile App menggunakan Flutter bagi Developer IT dan Programmer Aplikasi (Mobile Apps Developer) |2022 ',
    imageAsset: 'images/cert.jpg',
    imageUrls: [
      'https://aptika.kominfo.go.id/wp-content/uploads/2019/09/digitalent-e1568964668804.jpg',
      'https://cdn.antaranews.com/cache/800x533/2022/06/18/dibimbing.jpg',
      'https://prakerja.course-net.com/wp-content/uploads/2020/08/logo-dark-410px.png',
    ],
  ),
  DashboardList(
    imageSlider: ['images/IP1.jpg', 'images/IP2.jpg', 'images/IP3.jpeg'],
    item: 'Kontak Pribadi',
    description:
        '-Email : dputrabagasbdp@gmail.com | WhatsApp : 082119736097 | LinkedIn : Bagas Dwi Putra',
    imageAsset: 'images/contact.jpg',
    imageUrls: [
      'https://cdn0-production-images-kly.akamaized.net/VKqM7SQfp3XWs_XidqMgMySvhRA=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3259488/original/097578800_1601982680-logo_baru_gmail.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/479px-WhatsApp.svg.png',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/LinkedIn_Logo.svg/1200px-LinkedIn_Logo.svg.png',
    ],
  ),
];
