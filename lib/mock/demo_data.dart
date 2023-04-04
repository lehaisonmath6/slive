import 'package:slive/model/feed.dart';
import 'package:slive/model/post.dart';
import 'package:slive/model/user.dart';

List<UserFeed> lsUserFeeds = [
  const UserFeed(
      id: 1,
      avatar:
          "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
      displayName: "Chirstian Anna",
      isFollow: false),
  const UserFeed(
      id: 2,
      avatar:
          "https://i.pinimg.com/originals/5e/eb/8d/5eeb8d615bea040425f9937699392751.jpg",
      displayName: "Jame Mary",
      isFollow: false),
  const UserFeed(
      id: 3,
      avatar:
          "https://phantom-marca.unidadeditorial.es/990e9ef6c44a5a9ac240164828d0c60e/resize/720/f/webp/assets/multimedia/imagenes/2021/12/10/16391545485537.jpg",
      displayName: "Cristiano Ronaldo",
      isFollow: true),
];

List<Post> lsPosts = [
  const Post(
      id: 1,
      content:
          "Cristiano Ronaldo dos Santos Aveiro là một cầu thủ bóng đá chuyên nghiệp người Bồ Đào Nha hiện đang thi đấu ở vị trí tiền đạo và là đội trưởng cho câu lạc bộ Saudi Pro League Al Nassr và Đội tuyển bóng đá quốc gia Bồ Đào Nha",
      videoUrl:
          "https://dlmedia.mobilelab.vn/oaTA3OBojLI/4237ae348c71652f3c60/b014184e1c0bf555ac1a/720/b5623c6512fc16bc933b898a13740198.mp4?exp=1664610416&hmac=04ac0105e2243cae28d6a122e8dbdeee",
      createTime: 1647961506000),
  const Post(
      id: 2,
      content: "",
      videoUrl:
          "https://dlmedia.mobilelab.vn/mpYOoJGSZwo/2885c286e0c3099d50d2/de0a735077159e4bc704/720/705ff4198a8b381153c107eb0a3c5582.mp4?exp=1683212298&hmac=9325740511cc0c76eed394cfa0cd1c73",
      createTime: 1653059106000),
  const Post(
      id: 3,
      content: "Funny",
      videoUrl:
          "https://dlmedia.mobilelab.vn/--cXMGELilA/36c9c2cae08f09d1509e/56a8daf2deb737e96ea6/720/bd016f4ab86fea1f270d97ab15617d98.mp4?exp=1683212298&hmac=9325740511cc0c76eed394cfa0cd1c73",
      createTime: 1653059106000),
  const Post(
      id: 4,
      content: "India",
      videoUrl:
          "https://dlmedia.mobilelab.vn/U8wQCbHSDYE/fc1e0e1d2c58c5069c49/a76b2e312a74c32a9a65/720/c579d21b307f096ef1c7cf7516e92854.mp4?exp=1660402699&hmac=0a361b736a89fb76c21069b30a3c3fbf",
      createTime: 1653050106000),
  const Post(
      id: 5,
      content:
          "The new year of Hinduism starts from the first day of Chaitra Navratri. From the first day of Chaitra Navratri, Goddess Durga is worshipped for 9 days. On the eighth day of Navratri, Maha Ashtami is worshipped with rituals. In this year 2023, Mahashtami falls on 29th March. Kanya pujan is performed on the day of Maha Ashtami. And somewhere Kanya Pujan is performed on the day of Navami. Goddess Siddhidatri is worshipped on the day of Maha Ashtami of Navratri. And out of these nine forms and forms, the form of Siddhidatri is also considered precious. It is believed that by fasting and worshipping Siddhidatri, all wishes are fulfilled and the desired results are attained. On the day of Maha Ashtami, devotees use WhatsApp status videos of Goddess Durga on their mobile phones. So you can easily find many WhatsApp status videos of Mahashtami through our website. You can use them by downloading them in a very simple way. And you can get the blessings of Goddess Durga on Maha Ashtami.",
      videoUrl:
          "https://dlmedia.mobilelab.vn/KBE3wq8iBBw/3d47f544d7013e5f6710/d95a6b006f45861bdf54/720/3a179a72ca3b2ac78bba4d08d9e674e7.mp4?exp=1666758522&hmac=bc1f24953cdde0cc9fbdfbf54467b512",
      createTime: 1653050106000),
  const Post(
      id: 6,
      content:
          "As you know, Vaishno Devi, who is situated in Jammu and Kashmir. Which can be seen in the caves of Jammu. Many devotees come from far and wide to see these Vaishno Devi caves. People keep trying to see the caves of Vaishno Devi from place to place. For example, they like to visit the caves of Vaishno Devi through YouTube and other places. His devotees come from far and wide to visit. It is believed that the miracle of Vaishno Devi remains constant on her devotees. Devotees of Vaishno Devi use WhatsApp status videos on their mobile phones. And want to get immense grace by placing WhatsApp status videos of Vaishno Devi`s caves. Through our website, you can easily find many types of WhatsApp status videos of Vaishno Devi`s cave. And you can download and use in a very simple way.",
      videoUrl:
          "https://lived2.lyricslive24.com/mp4regular/play/SW5aUk5Ick9tQVBvY3pGamRndUl1Zz09/------VAISHNO-DEVI-CAVE-DARSHAN-----matarani--status--shorts.mp4",
      createTime: 1653050106000),
  const Post(
      id: 7,
      content:
          "Chaitra Navratri 2023 Coming Soon Status !! Navratri Status !! Navratri Special Status !!  cbstatus",
      videoUrl:
          "https://lived2.lyricslive24.com/mp4regular/play/VzljNi9ERW5RZjNaOUhWaUlaRW5pdz09/-The-Crucifixion-of-Jesus-Christ---Dhukka-Velli-Whatsapp-Status-Good-Friday-Whatsapp-Status-.mp4",
      createTime: 1653050106000),
  const Post(
      id: 8,
      content: "",
      videoUrl:
          "https://lived2.lyricslive24.com/mp4regular/play/Y0hldko5ZnFsUjJXWVVqTTBpUG5mUT09/-Cg-Navratri-Whatsapp-Status-Video--Chaitra-Navratri-Cg-Status----Glow-Lyrics-Status---4k-Status---.mp4",
      createTime: 1653050106000)
];

List<FeedData> lsFeeds = [
  FeedData(
      postData: lsPosts[0],
      userCreate: lsUserFeeds[0],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[1],
      userCreate: lsUserFeeds[1],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[2],
      userCreate: lsUserFeeds[2],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[3],
      userCreate: lsUserFeeds[0],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[4],
      userCreate: lsUserFeeds[1],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[5],
      userCreate: lsUserFeeds[2],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[6],
      userCreate: lsUserFeeds[2],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
  FeedData(
      postData: lsPosts[7],
      userCreate: lsUserFeeds[2],
      totalLike: 1200123,
      totalComment: 1234,
      totalShare: 15,
      totalSave: 7),
];

class MockApi {
  static Future<List<FeedData>> fechFeeds(int offset, int size) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        if (offset + size < lsFeeds.length) {
          return lsFeeds.sublist(offset, size);
        } else if (offset >= lsFeeds.length) {
          return [];
        } else
          return lsFeeds.sublist(offset, lsFeeds.length - offset);
        return [];
      },
    );
  }
}
