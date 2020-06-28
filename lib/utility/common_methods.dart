import 'package:retrochat/api_manager/constant.dart';
import 'package:retrochat/models/chatmodel.dart';
import 'package:retrochat/provider/user_provider.dart';

String createKeyForChatRoom(List<User> usersArray) {
  usersArray.sort((a, b) => a.userName.compareTo(b.userName));
  return "${usersArray[0].userId}_${usersArray[1].userId}";
}

//String nameFromEmail(String email) {
//  return email.split("@")[0];
//}

String precisionChatText(Chat objChat, User usermine, User userother) {
  return objChat.sender_id == usermine.userId
      ? "${keyForMe}${objChat.message}"
      : "${userother.userName}:\\> ${objChat.message}";
}

bool isMyMessage(Chat objChat, User usermine, User userother) {
  return objChat.sender_id == usermine.userId
      ? true : false;
}
