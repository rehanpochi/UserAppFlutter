import 'package:todo_app/networking.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/user_model2.dart';
import 'package:todo_app/user_model_list.dart';

void main() {
  Networking network = Networking();
  // setUp(() async{
  //   final UserModell userList = await network.getData();
  // })
  test('testing the data recieved from the rest api', () async {
    List<dynamic> testList = [
      {'id': 1, 'name': 'rehan'},
      {'id': 2, 'name': 'rizwan'},
      {'id': 3, 'name': 'imran'},
    ];

    expect(await network.getDataList(), testList);
  });

  //
  // test('testing the data recieved from the rest api getUserDataNew', () async {
  //
  //   List<dynamic> testList = [
  //     {'id': 1, 'name': 'rehan'},
  //     {'id': 2, 'name': 'rizwan'},
  //     {'id': 3, 'name': 'imran'},
  //     {'id': 4, 'name': 'adnan'},
  //     {'id': 5, 'name': 'sharoz'},    ];
  //
  //   expect(await network.getUserDataNew(), testList);
  // });

  test('testing the data recieved from the rest api getUserDataNeww', () async {
    List<dynamic> testList = [
      {'id': 1, 'name': 'rehan'},
      {'id': 2, 'name': 'rizwan'},
      {'id': 3, 'name': 'imran'},
    ];

    expect(await network.getUserDataNeww(), testList);
  });

  // test('testing the data deleted from the rest api deleteUser', () async {
  //
  // var test =await network.deleteUser(1);
  //
  //   expect(network.length, 4);
  // });
}

// network.getData();
// final UserModell userList =
//     await network.getData();
// final String userList = await network.getDataList();
// UserModelList modelList=new UserModelList(id: 1,name: "rehan");
// List<UserModelList> modelListList=[modelList];
//   List<UserModelList> modelList=

// Map<String,dynamic> testListt={"id":1,"name":"rehan"};
// String userTestList="[{'id':1,'name':'rehan'}]";
// dynamic dynamicList=[{'id':1,'name':'rehan'}];
//   print(testList)
//    print(testListt);
//     int responseCodeNo=await network.getResponseCode();
// int no=200;
//test
