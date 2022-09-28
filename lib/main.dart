import 'package:flutter/material.dart';
import './Home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

// State for Input field configuration
// class InputField extends StatefulWidget {
//   const InputField({super.key});

//   @override
//   State<InputField> createState() => _InputFieldState();
// }

// // Here is where you will find the Input Bar, submit button as well as section that will show the list of todos
// class _InputFieldState extends State<InputField> {
//   TextEditingController textController = TextEditingController();
//   String displayText = "";
//   List<String> toDos = [];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 1000,
//       height: 500,
//       margin: const EdgeInsets.only(top: 25),
//       child: Center(
//         child: SizedBox(
//           width: 300,
//           height: 500,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               TextFormField(
//                 textAlign: TextAlign.center,
//                 controller: textController,
//                 maxLines: null,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(50.0),
//                   ),
//                   hintText: 'Enter a to do',
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     displayText = textController.text;
//                     toDos.add(displayText);
//                     textController.clear();
//                   });
//                 },
//                 child: const Text("Add To-Do"),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   for (var todo in toDos)
//                     Center(
//                       child: Card(
//                         child: SizedBox(
//                           width: 300,
//                           height: 75,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                 width: 150,
//                                 child: Text(
//                                   todo,
//                                   textAlign: TextAlign.center,
//                                   style: const TextStyle(
//                                     fontSize: 20,
//                                     fontFamily: 'Raleway',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ),
//                               IconButton(
//                                 onPressed: () => setState(() {
//                                   toDos.removeWhere(
//                                       (element) => element == todo);
//                                 }),
//                                 icon: const Icon(
//                                   Icons.delete_outline,
//                                   size: 20.0,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
