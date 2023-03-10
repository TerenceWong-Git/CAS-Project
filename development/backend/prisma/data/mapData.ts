import { District } from '@prisma/client';

const mapData = [
  {
    chiName: '龍貓仔專門店',
    engName: 'CHINCHILLA AND PETS SHOP',
    chiAddress: '香港渣華道3-5號永光閣4號鋪',
    engAddress: 'SHOP 4, G/F, CIRCLE COURT, 3-5 JAVA ROAD, NORTH POINT, HK',
    phoneNumber: 28955502,
    district: District['Eastern'],
    latitude: 22.29130977593307,
    longitude: 114.1954751346806,
    profileImg: '1.jpg',
  },
  {
    chiName: 'BABY FAT PET SHOP',
    engName: 'BABY FAT PET SHOP',
    chiAddress: '香港西營盤皇后大道西330號-336號新昇大廈C號鋪',
    engAddress:
      "SHOP C, NEW S]TART BUILDING, 330 - 336 QUEEN'S ROAD WEST, SAI YING PUN, HK",
    phoneNumber: 54960222,
    district: District['Central_and_Western'],
    latitude: 22.286832518313616,
    longitude: 114.14131763163783,
    profileImg: '2.jpeg',
  },
  {
    chiName: '夏利維動物醫院',
    engName: "Chris & Nicola's Animal Hospital",
    chiAddress: '香港天后永興街37號地鋪',
    engAddress: 'G/F, 37 Wing Hing Street, Tin Hau, HK',
    phoneNumber: 25706048,
    district: District['Eastern'],
    latitude: 22.28541251424708,
    longitude: 114.19265225447529,
    profileImg: '3.JPG',
  },
  {
    chiName: '中環貓醫院 ',
    engName: 'Central Cat Hospital ',
    chiAddress: '香港中環鴨巴甸街37號地舖',
    engAddress: 'G/F, 37 Aberdeen Street, Central, HK',
    phoneNumber: 25052505,
    district: District['Central_and_Western'],
    latitude: 22.282777590021777,
    longitude: 114.1516801968238,
    profileImg: '4.jpeg',
  },
  {
    chiName: 'Pets Central 流動診所 (荃灣)',
    engName: 'Pets Central Mobile Clinic (Tsuen Wan)',
    chiAddress: '新界荃灣馬灣珀麗路8號',
    engAddress: '8 Pak Lai Road, Ma Wan, Tsuen Wan, N.T.',
    phoneNumber: 62230903,
    district: District['Tsuen_Wan'],
    latitude: 22.353041481736252,
    longitude: 114.06208494100319,
    profileImg: '5.jpg',
  },
  {
    chiName: '觀塘海濱花園',
    engName: 'Kwun Tong Promenade',
    chiAddress: '九龍觀塘海濱道80號',
    engAddress: '80 Hoi Bun Road, Kwun Tong, Kowloon',
    phoneNumber: 23468538,
    district: District['Kwun_Tong'],
    latitude: 22.30973998,
    longitude: 114.21908077,
    profileImg: '6.jpg',
  },
  {
    chiName: '將軍澳海濱公園',
    engName: 'Tseung Kwan O Waterfront Park',
    chiAddress: '新界將軍澳唐俊街',
    engAddress: 'Tong Chun Street, Tseung Kwan O, N.T.',
    phoneNumber: 23462844,
    district: District['Sai_Kung'],
    latitude: 22.3014497,
    longitude: 114.26116,
    profileImg: '7.jpg',
  },
  {
    chiName: '車公廟路遊樂場',
    engName: 'Che Kung Miu Road Playground',
    chiAddress: '沙田大圍車公廟路',
    engAddress: 'Che Kung Miu Road, Tai Wai, Shatin',
    phoneNumber: 26340147,
    district: District['Sha_Tin'],
    latitude: 22.36903751,
    longitude: 114.17636949,
    profileImg: '8.jpg',
  },
  {
    chiName: '窩打老道/衛理道休憩處',
    engName: 'Waterloo Road/Wylie Road Sitting-out Area',
    chiAddress: '窩打老道/衛理道交界',
    engAddress: 'J/O Waterloo Road / Wylie Road',
    phoneNumber: 23021262,
    district: District['Yau_Tsim_Mong'],
    latitude: 22.3162097,
    longitude: 114.17407,
    profileImg: '9.jpg',
  },
  {
    chiName: '城門河第三海濱花園',
    engName: 'Shing Mun River Promenade Garden No. 3',
    chiAddress: '沙田源禾路',
    engAddress: 'Yuen Wo Road, Shatin',
    phoneNumber: 26340147,
    district: District['Sha_Tin'],
    latitude: 22.39167324,
    longitude: 114.19902419,
    profileImg: '10.jpg',
  },
  {
    chiName: '啟德空中花園',
    engName: 'Kai Tak Sky Garden',
    chiAddress: '九龍啟德承豐道',
    engAddress: 'Shing Fung Road, Kai Tak',
    phoneNumber: 28063210,
    district: District['Kowloon_City'],
    latitude: 22.3128635,
    longitude: 114.20664836,
    profileImg: '11.jpg',
  },
  {
    chiName: '聯和墟遊樂場 (近聯昌街)',
    engName: 'Luen Wo Hui Playground (near Luen Cheong Street)',
    chiAddress: '新界粉嶺聯和墟聯和道',
    engAddress: 'Luen Wo Road, Luen Wo Hui, Fanling, N.T.',
    phoneNumber: 26792838,
    district: District['North'],
    latitude: 22.49862558,
    longitude: 114.14398823,
    profileImg: '12.jpg',
  },
  {
    chiName: '青衣海濱公園—海欣花園段',
    engName: 'Tsing Yi Promenade-Grand Horizon Portion',
    chiAddress: '新界青衣楓樹窩路',
    engAddress: 'Fung Shue Wo Road, Tsing Yi, New Territories',
    phoneNumber: 24815435,
    district: District['Kwai_Tsing'],
    latitude: 22.35257486,
    longitude: 114.11002046,
    profileImg: '13.jpg',
  },
  {
    chiName: '大窩口道遊樂場',
    engName: 'Tai Wo Hau Road Playground',
    chiAddress: '葵涌大窩口道',
    engAddress: 'Tai Wo Hau Road Playground, Kwai Chung',
    phoneNumber: 24233408,
    district: District['Kwai_Tsing'],
    latitude: 22.36576891,
    longitude: 114.1310587,
    profileImg: '14.jpg',
  },
  {
    chiName: '龍翔道公園',
    engName: 'Lung Cheung Road Park',
    chiAddress: '九龍龍翔道',
    engAddress: 'Lung Cheung Road, Kowloon',
    phoneNumber: 27600581,
    district: District['Kowloon_City'],
    latitude: 22.34358184,
    longitude: 114.18102729,
    profileImg: '15.jpg',
  },
  {
    chiName: '城門河第一海濱花園',
    engName: 'Shing Mun River Promenade Garden No.1',
    chiAddress: '沙田車公廟路',
    engAddress: 'Che Kung Miu Road, Sha Tin',
    phoneNumber: 26340147,
    district: District['Sha_Tin'],
    latitude: 22.37698627,
    longitude: 114.18983911,
    profileImg: '16.jpg',
  },
  {
    chiName: '馬鞍山西沙路花園',
    engName: 'Ma On Shan Sai Sha Road Garden',
    chiAddress: '馬鞍山西沙路',
    engAddress: 'Sai Sha Road, Ma On Shan',
    phoneNumber: 26340147,
    district: District['Sha_Tin'],
    latitude: 22.42458143,
    longitude: 114.22722503,
    profileImg: '17.jpg',
  },
  {
    chiName: '觀海徑休憩處',
    engName: 'Kwun Hoi Path Sitting-out Area',
    chiAddress: '香港仔觀海徑',
    engAddress: 'Kwun Hoi Path, Aberdeen',
    phoneNumber: 25550121,
    district: District['Southern'],
    latitude: 22.24695416,
    longitude: 114.15890328,
    profileImg: '18.jpg',
  },
  {
    chiName: '香港仔海濱公園',
    engName: 'Aberdeen Promenade',
    chiAddress: '香港仔海傍道',
    engAddress: 'Aberdeen Praya Road',
    phoneNumber: 25550121,
    district: District['Southern'],
    latitude: 22.24697804,
    longitude: 114.15478037,
    profileImg: '19.jpg',
  },
  {
    chiName: '棠蔭街山邊休憩處',
    engName: 'Tong Yam Street Hillside Sitting-out Area',
    chiAddress: '石硤尾棠蔭街',
    engAddress: 'Tong Yam Street, Shek Kip Mei',
    phoneNumber: 23709954,
    district: District['Sham_Shui_Po'],
    latitude: 22.32840315,
    longitude: 114.16985649,
    profileImg: '20.jpg',
  },
  {
    chiName: '粉嶺火車站休憩處',
    engName: 'Fanling Station Sitting-out Area',
    chiAddress: '新界粉嶺火車站旁',
    engAddress: 'Next to Fanling Station',
    phoneNumber: 26792838,
    district: District['North'],
    latitude: 22.49295856,
    longitude: 114.13790705,
    profileImg: '21.jpg',
  },
  {
    chiName: '寶雲道公園',
    engName: 'Bowen Road Park',
    chiAddress: '灣仔寶雲道',
    engAddress: 'Bowen Road, Wan Chai',
    phoneNumber: 28795612,
    district: District['Wan_Chai'],
    latitude: 22.27018556,
    longitude: 114.17240242,
    profileImg: '22.jpg',
  },
  {
    chiName: '荃灣海濱單車匯合中心 (指定位置)',
    engName: 'Tsuen Wan Waterfront Cycling Entry / Exit Hub (Designated Areas)',
    chiAddress: '新界荃灣海興路',
    engAddress: 'Hoi Hing Road, Tsuen Wan, N.T.',
    phoneNumber: 22129702,
    district: District['Tsuen_Wan'],
    latitude: 22.37028661,
    longitude: 114.10741559,
    profileImg: '23.jpg',
  },
  {
    chiName: '荃灣公園',
    engName: 'Tsuen Wan Park',
    chiAddress: '永順街59號',
    engAddress: '59 Wing Shun Street',
    phoneNumber: 24089592,
    district: District['Tsuen_Wan'],
    latitude: 22.36694575,
    longitude: 114.11287093,
    profileImg: '24.jpg',
  },
  {
    chiName: '麒麟崗公眾公園',
    engName: 'Ki Lun Kong Public Park',
    chiAddress: '屯門青山公路三聖邨對面',
    engAddress: 'Opposite to Sam Shing Estate, Castle Peak Road, Tuen Mun',
    phoneNumber: 24513105,
    district: District['Tuen_Mun'],
    latitude: 22.3824184,
    longitude: 113.97865514,
    profileImg: '25.jpg',
  },
  {
    chiName: 'the pulse',
    engName: 'the pulse',
    chiAddress: '香港淺水灣海灘道28號',
    engAddress: '28, Beach Road, Repulse Bay, Hong Kong, Hong Kong',
    phoneNumber: 28158888,
    district: District['Southern'],
    latitude: 22.23559763636557,
    longitude: 114.19824669732529,
    profileImg: '26.jpg',
  },
  {
    chiName: '赤柱廣場',
    engName: 'Stanley Plaza',
    chiAddress: '赤柱佳美道23號',
    engAddress: '23 Carmel Road Stanley, Hong Kong',
    phoneNumber: 28134623,
    district: District['Southern'],
    latitude: 22.220136269308895,
    longitude: 114.20981536931092,
    profileImg: '27.jpg',
  },
  {
    chiName: '北角匯',
    engName: 'Harbour North',
    chiAddress: '香港北角北角邨里1號',
    engAddress: '1 North Point Estate Ln, North Point',
    phoneNumber: 28056605,
    district: District['Eastern'],
    latitude: 22.292901023207207,
    longitude: 114.19938850573674,
    profileImg: '28.jpg',
  },
  {
    chiName: 'K11人文購物藝術館',
    engName: 'K11 MUSEA',
    chiAddress: '尖沙咀梳士巴利道18號',
    engAddress: 'Victoria Dockside, 18 Salisbury Road, Tsim Sha Tsui',
    phoneNumber: 38923890,
    district: District['Yau_Tsim_Mong'],
    latitude: 22.29439632211611,
    longitude: 114.17458234156776,
    profileImg: '29.jpeg',
  },
  {
    chiName: 'D2 Place ONE',
    engName: 'D2 Place ONE',
    chiAddress: '荔枝角長義街9號',
    engAddress:
      '9 Cheung Yee Street, Lai Chi Kok, Kowloon, Lai Chi Kok, Hong Kong',
    phoneNumber: 36203098,
    district: District['Sham_Shui_Po'],
    latitude: 22.336395305257405,
    longitude: 114.14890401081881,
    profileImg: '30.jpg',
  },
  {
    chiName: '圓方',
    engName: 'Elements',
    chiAddress: '尖沙咀西九龍柯士甸道西1號',
    engAddress: '1 Austin Rd W, Tsim Sha Tsui',
    phoneNumber: 27355234,
    district: District['Yau_Tsim_Mong'],
    latitude: 22.30496326426625,
    longitude: 114.16112704806643,
    profileImg: '31.jpg',
  },
  {
    chiName: '海港城',
    engName: 'Harbour City',
    chiAddress: '香港九龍尖沙咀廣東道3-27號',
    engAddress: '3 - 27 Canton Road, Tsim Sha Tsui, Kowloon, Hong Kong',
    phoneNumber: 21188666,
    district: District['Yau_Tsim_Mong'],
    latitude: 22.29624261892706,
    longitude: 114.16864564806502,
    profileImg: '32.jpg',
  },
  {
    chiName: '南豐紗廠',
    engName: 'The Mills',
    chiAddress: '荃灣白田壩街45號',
    engAddress: '45 Pak Tin Par St, Tsuen Wan',
    phoneNumber: 39792300,
    district: District['Tsuen_Wan'],
    latitude: 22.375249264620432,
    longitude: 114.11020168383642,
    profileImg: '33.png',
  },
  {
    chiName: '新城市廣場',
    engName: 'New Town Plaza',
    chiAddress: '沙田沙田正街18-19號',
    engAddress: '18-19 Sha Tin Centre St, Sha Tin',
    phoneNumber: 26089329,
    district: District['Sha_Tin'],
    latitude: 22.382015720741858,
    longitude: 114.18859428198353,
    profileImg: '34.jpeg',
  },
  {
    chiName: '天晉滙',
    engName: 'Popwalk',
    chiAddress: '將軍澳唐俊街12號',
    engAddress: '12 Tong Chun St, Tseung Kwan O',
    phoneNumber: 26799300,
    district: District['Sai_Kung'],
    latitude: 22.30622685943347,
    longitude: 114.26095738114208,
    profileImg: '35.jpg',
  },
];

export default mapData;
