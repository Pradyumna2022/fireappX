// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  Profile? profile;
  List<Reward>? rewards;
  List<Pack>? packs;

  ProfileModel({
    this.profile,
    this.rewards,
    this.packs,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        profile: Profile.fromJson(json["profile"]),
        rewards:
            List<Reward>.from(json["rewards"].map((x) => Reward.fromJson(x))),
        packs: List<Pack>.from(json["packs"].map((x) => Pack.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "profile": profile!.toJson(),
        "rewards": List<dynamic>.from(rewards!.map((x) => x.toJson())),
        "packs": List<dynamic>.from(packs!.map((x) => x.toJson())),
      };
}

class Pack {
  var icon;
  var coins;

  Pack({
    this.icon,
    this.coins,
  });

  factory Pack.fromJson(Map<String, dynamic> json) => Pack(
        icon: json["icon"],
        coins: json["coins"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "coins": coins,
      };
}

class Profile {
  var name;
  var photo;
  var phone;
  var coins;
  var membership;

  Profile({
    this.name,
    this.photo,
    this.phone,
    this.coins,
    this.membership,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        name: json["name"],
        photo: json["photo"],
        phone: json["phone"],
        coins: json["coins"],
        membership: json["membership"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "photo": photo,
        "phone": phone,
        "coins": coins,
        "membership": membership,
      };
}

class Reward {
  var icon;
  var title;
  var summary;
  var coins;

  Reward({
    this.icon,
    this.title,
    this.summary,
    this.coins,
  });

  factory Reward.fromJson(Map<String, dynamic> json) => Reward(
        icon: json["icon"],
        title: json["title"],
        summary: json["summary"],
        coins: json["coins"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
        "summary": summary,
        "coins": coins,
      };
}
