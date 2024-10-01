import 'package:kusala/src/core/resources/images/app_images.dart';

class UserProfile {
  final int id;
  final String displayName;
  final String username;
  final String bio;
  final String link;
  final String profileImage;

  UserProfile({
    required this.id,
    required this.displayName,
    required this.username,
    required this.bio,
    required this.link,
    required this.profileImage,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      displayName: json['displayName'],
      username: json['username'],
      bio: json['bio'],
      link: json['link'],
      profileImage: json['profile_image'],
    );
  }
}

List<UserProfile> datas = [
  {
    "id": 1,
    "displayName": "Jhon Daniel",
    "username": "_savannah",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/9.jpg"
  },
  {
    "id": 2,
    "displayName": "Savannah Green",
    "username": "_savannah",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/9.jpg"
  },
  {
    "id": 3,
    "displayName": "Mabel Evans",
    "username": "_evans93",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/71.jpg"
  },
  {
    "id": 4,
    "displayName": "Justin Olson",
    "username": "justin_olson",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/72.jpg"
  },
  {
    "id": 5,
    "displayName": "Stanley Reid",
    "username": "itsstanley",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/31.jpg"
  },
  {
    "id": 6,
    "displayName": "Corey Henry",
    "username": "the_henry",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/60.jpg"
  },
  {
    "id": 7,
    "displayName": "Amanda Alvarez",
    "username": "alvarez",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/45.jpg"
  },
  {
    "id": 8,
    "displayName": "Tyler Anderson",
    "username": "tyler_anderson",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/57.jpg"
  },
  {
    "id": 9,
    "displayName": "Ruben Thompson",
    "username": "sniper007",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/46.jpg"
  },
  {
    "id": 10,
    "displayName": "Alexa Turner",
    "username": "alexa_",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/11.jpg"
  }
].map((data) => UserProfile.fromJson(data)).toList();

/////
class Municipio {
  final int id;
  final String nome;
  final String provincia;
  final String image;

  Municipio(
      {required this.id,
      required this.nome,
      required this.provincia,
      required this.image});

  factory Municipio.fromJson(Map<String, dynamic> json) {
    return Municipio(
      id: json['id'],
      nome: json['nome'],
      provincia: json['provincia'],
      image: json['image'],
    );
  }
}

List<Municipio> municipios = [
  {"id": 1, "nome": "Negage", "provincia": "Uíge", "image": AppImages.angola1},
  {"id": 2, "nome": "Viana", "provincia": "Luanda", "image": AppImages.angola2},
  {"id": 3, "nome": "Ambriz", "provincia": "Bnego", "image": AppImages.angola3},
  {
    "id": 4,
    "nome": "Lubango",
    "provincia": "Huíla",
    "image": AppImages.angola4
  },
  {"id": 5, "nome": "Chitempo", "provincia": "Bié", "image": AppImages.angola1},
  {
    "id": 6,
    "nome": "Lobito",
    "provincia": "Benguela",
    "image": AppImages.angola2
  },
  {
    "id": 7,
    "nome": "Bolongongo ah",
    "provincia": "Cabinda",
    "image": AppImages.angola3
  },
  {
    "id": 8,
    "nome": "Menongue",
    "provincia": "Kuando Kubango",
    "image": AppImages.angola4
  },
  {
    "id": 9,
    "nome": "Calandula",
    "provincia": "Malanje",
    "image": AppImages.angola1
  },
  {"id": 10, "nome": "Soyo", "provincia": "Zaire", "image": AppImages.angola2}
].map((data) => Municipio.fromJson(data)).toList();
