class Candidate {
  String nameCandidate;
  String nameKahim;
  String nameWakahim;
  String majors;
  String classKahim;
  String classWakahim;
  String divisionKahim;
  String divisionWakahim;
  String vision;
  String mission;
  String imageAsset;

  Candidate({
    required this.nameCandidate,
    required this.nameKahim,
    required this.nameWakahim,
    required this.majors,
    required this.classKahim,
    required this.classWakahim,
    required this.divisionKahim,
    required this.divisionWakahim,
    required this.vision,
    required this.mission,
    required this.imageAsset,
  });
}

var candidateList = [
  Candidate(
    nameCandidate: 'Kandidat 1',
    nameKahim: 'Anissa Ganyu',
    nameWakahim: 'Ardi Erlangga',
    majors:
    'Sistem Informasi',
    classKahim: 'Sistem Informasi-2',
    classWakahim: 'Sistem Informasi-4',
    divisionKahim: 'Pendidikan Pengembangan & Rohani',
    divisionWakahim: 'Minat & Bakat',
    vision: 'Mewujudkan HIMA SI sebagai wadah kreatifitas, prestasi dan inovasi yang berasaskan manajemen dan teknologi serta peduli kebutuhan masyarakat umum',
    mission: '1. Menjadikan HIMA SI sebagai tempat untuk menampung dan menyaluarkan aspirasi masyarakat SI MI \n2. Membangun dan membentuk HIMA SI yang layaknya seperti teknologi, dimana HIMA SI sendiri sebagai sarana yang dibutuhkan dan kenyamanan oleh masyarakat SI & MI serta HIMA SI yang akan terus berkembang.\n3. Menciptakan organisasi yang dapat berkerja sama baik dalam masyarakat SI MI dan Lembaga lainnya baik itu internal maupun external',
    imageAsset: 'images/human1.png',
  ),
  Candidate(
    nameCandidate: 'Kandidat 2',
    nameKahim: 'Benneth Gumara',
    nameWakahim: 'Lisa Susanti',
    majors:
    'Sistem Informasi',
    classKahim: 'Sistem Informasi-4',
    classWakahim: 'Sistem Informasi-1',
    divisionKahim: 'Minat & Bakat',
    divisionWakahim: 'Informasi & Komunikasi',
    vision: 'Terwujudnya HIMA SI sebagai Pencipta, Pelopor, dan Pengemban amanat intelektual yang bertanggung jawab untuk meningkatkan harkat martabat Prodi SI&MI',
    mission: '1. Mempelopori pengembangan ilmu pengetahuan dan teknologi bagi kemaslahatan masyarakat\n2. Mengembangkan potensi kreatif, keilmuan, dan sosial\n3. Mempererat kekeluargaan di internal dan eksternal secara nyata\n 4. Mengoptimalkan peran dalam dunia kemahasiswaan untuk mendukung terciptanya transformasi dan reformasi HIMA SI',
    imageAsset: 'images/human2.png',
  ),
];