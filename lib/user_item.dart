// import 'package:flutter/material.dart';
// import 'user_model2.dart';
//
// class UserItem extends StatelessWidget {
//   // final ToDo todo;
//   // final onToDoChanged;
//   // final onDeleteItem;
//   UserModell _user = new UserModell(name: "Anonymous");
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController idController = TextEditingController();
//
//   const UserItem({
//     Key? key,
//     required this.todo,
//     required this.onToDoChanged,
//     required this.onDeleteItem,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       child: ListTile(
//         leading: Container(
//           child: Center(
//             child: Text(_user.id.toString(),
//                 style: TextStyle(
//                   fontSize: 18,
//                 )),
//           ),
//           padding: EdgeInsets.all(0),
//           margin: EdgeInsets.symmetric(vertical: 12),
//           height: 35,
//           width: 35,
//           decoration: BoxDecoration(
//             color: Colors.blueAccent,
//             borderRadius: BorderRadius.circular(5),
//           ),
//         ),
//         onTap: () {
//           // print('Clicked on Todo Item.');
//           //onToDoChanged(todo);
//         },
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         contentPadding:
//         EdgeInsets.symmetric(horizontal: 20, vertical: 1),
//         tileColor: Colors.black38,
//         title: Text(
//           "${_user.name}",
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.black,
//             // decoration: todo.isDone ? TextDecoration.lineThrough : null,
//           ),
//         ),
//         trailing: Container(
//           padding: EdgeInsets.all(0),
//           margin: EdgeInsets.symmetric(vertical: 12),
//           height: 35,
//           width: 35,
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: IconButton(
//             color: Colors.white,
//             iconSize: 18,
//             icon: Icon(Icons.delete),
//             onPressed: () async {
//               print('Clicked on delete icon');
//               deleteUser(_user.id);
//               setState(() {
//                 _user.name = "";
//                 nameController.text = "";
//               });
//               //onDeleteItem(todo.id);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
