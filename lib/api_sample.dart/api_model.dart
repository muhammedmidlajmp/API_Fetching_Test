import 'package:flutter/material.dart';

class Results {
  List<UserModel> results;
  Info info;

  Results({required this.results, required this.info}) : assert(info != null);

  Results.fromJson(Map<String, dynamic> json)
      : results = List<UserModel>.from(
            json['results'].map((result) => UserModel.fromJson(result))),
        info = Info.fromJson(json['info']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['results'] = results.map((v) => v.toJson()).toList();
    data['info'] = info.toJson();
    return data;
  }
}

class UserModel {
  String gender;
  Name name;
  Location location;
  String email;
  Login login;
  Dob dob;
  Registered registered;
  String phone;
  String cell;
  Id id;
  Picture picture;
  String nat;

  UserModel({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : gender = json['gender'],
        name = Name.fromJson(json['name']),
        location = Location.fromJson(json['location']),
        email = json['email'],
        login = Login.fromJson(json['login']),
        dob = Dob.fromJson(json['dob']),
        registered = Registered.fromJson(json['registered']),
        phone = json['phone'],
        cell = json['cell'],
        id = json['id'] != null
            ? Id.fromJson(json['id'])
            : throw Exception('Id is null'),
        picture = Picture.fromJson(json['picture']),
        nat = json['nat'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['gender'] = gender;
    data['name'] = name.toJson();
    data['location'] = location.toJson();
    data['email'] = email;
    data['login'] = login.toJson();
    data['dob'] = dob.toJson();
    data['registered'] = registered.toJson();
    data['phone'] = phone;
    data['cell'] = cell;
    data['id'] = id.toJson();
    data['picture'] = picture.toJson();
    data['nat'] = nat;
    return data;
  }
}

class Name {
  String title;
  String first;
  String last;

  Name({required this.title, required this.first, required this.last});

  Name.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        first = json['first'],
        last = json['last'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = title;
    data['first'] = first;
    data['last'] = last;
    return data;
  }
}

class Location {
  Street street;
  String city;
  String state;
  String country;
  dynamic postcode;
  Coordinates coordinates;
  Timezone timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  Location.fromJson(Map<String, dynamic> json)
      : street = Street.fromJson(json['street']),
        city = json['city'],
        state = json['state'],
        country = json['country'],
        postcode = json['postcode'],
        coordinates = Coordinates.fromJson(json['coordinates']),
        timezone = Timezone.fromJson(json['timezone']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['street'] = street.toJson();
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['postcode'] = postcode;
    data['coordinates'] = coordinates.toJson();
    data['timezone'] = timezone.toJson();
    return data;
  }
}

class Street {
  int number;
  String name;

  Street({required this.number, required this.name});

  Street.fromJson(Map<String, dynamic> json)
      : number = json['number'],
        name = json['name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['number'] = number;
    data['name'] = name;
    return data;
  }
}

class Coordinates {
  String latitude;
  String longitude;

  Coordinates({required this.latitude, required this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json)
      : latitude = json['latitude'],
        longitude = json['longitude'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class Timezone {
  String offset;
  String description;

  Timezone({required this.offset, required this.description});

  Timezone.fromJson(Map<String, dynamic> json)
      : offset = json['offset'],
        description = json['description'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['offset'] = offset;
    data['description'] = description;
    return data;
  }
}

class Dob {
  String date;
  int age;

  Dob({required this.date, required this.age});

  Dob.fromJson(Map<String, dynamic> json)
      : date = json['date'],
        age = json['age'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['date'] = date;
    data['age'] = age;
    return data;
  }
}

class Registered {
  String date;
  int age;

  Registered({required this.date, required this.age});

  Registered.fromJson(Map<String, dynamic> json)
      : date = json['date'],
        age = json['age'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['date'] = date;
    data['age'] = age;
    return data;
  }
}

class Login {
  String uuid;
  String username;
  String password;
  String salt;
  String md5;
  String sha1;
  String sha256;

  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  Login.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'],
        username = json['username'],
        password = json['password'],
        salt = json['salt'],
        md5 = json['md5'],
        sha1 = json['sha1'],
        sha256 = json['sha256'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['uuid'] = uuid;
    data['username'] = username;
    data['password'] = password;
    data['salt'] = salt;
    data['md5'] = md5;
    data['sha1'] = sha1;
    data['sha256'] = sha256;
    return data;
  }
}

class Id {
  String name;
  dynamic value;

  Id({required this.name, required this.value});

  Id.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        value = json['value'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class Picture {
  String large;
  String medium;
  String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json)
      : large = json['large'],
        medium = json['medium'],
        thumbnail = json['thumbnail'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['large'] = large;
    data['medium'] = medium;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class Info {
  String seed;
  int results;
  int page;
  String version;

  Info(
      {required this.seed,
      required this.results,
      required this.page,
      required this.version});

  Info.fromJson(Map<String, dynamic> json)
      : seed = json['seed'],
        results = json['results'],
        page = json['page'],
        version = json['version'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['seed'] = seed;
    data['results'] = results;
    data['page'] = page;
    data['version'] = version;
    return data;
  }
}
