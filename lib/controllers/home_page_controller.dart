import 'package:dogstargram/models/feed.dart';
import 'package:dogstargram/models/user.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  List<String> friendNameList = ['모모', '방울이', '다롱이', '초코', '심바'];

  var friends = <User>[].obs; // 친구리스트 -> 변화 관찰
  var feeds = <Feed>[].obs; // 피드리스트  -> 변화 관찰

  @override
  void onInit() {
    super.onInit();
    readFeeds();
    readFriends();
  }

  String getUserPhoto(String userUid) {
    for (var user in friends) {
      if (user.uid == userUid) {
        return user.img;
      }
    }
    return '';
  }

  readFeeds() {
    var fetchedFeeds = [
      Feed(
        img: "https://picsum.photos/seed/421/200",
        createAt: "",
        content: "오늘 놀러가는 날",
        createBy: '방울이uid',
        likes: "100",
        comments: ['first comment', 'second comment'],
      ),
      Feed(
        img: "https://picsum.photos/seed/121/400",
        createAt: "",
        content: "밥먹자",
        createBy: '방울이uid',
        likes: "20",
        comments: ['first comment'],
      ),
      Feed(
        img: "https://picsum.photos/seed/551/500",
        createAt: "",
        content: "이쁜모모",
        createBy: '모모uid',
        likes: "1000",
        comments: ['first comment', 'second comment', 'thrid comment'],
      ),
    ];

    feeds.addAll(fetchedFeeds);
  }

  readFriends() {
    int i = 0;
    for (var name in friendNameList) {
      friends.add(User(
        uid: "${name}uid",
        name: name,
        img: "https://picsum.photos/seed/1${i}1/${i}00",
        feeds: feeds.where((feed) => feed.createBy == '${name}uid').toList(),
      ));
      i++;
    }
  }
  //update feed

  //delete feed
}
