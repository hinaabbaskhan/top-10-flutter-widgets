import 'package:flutter/material.dart';

import 'screen_two.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyScreen(),
    ),
  );
}

class MyScreen extends StatelessWidget {
  MyScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top 10 Flutter Widgets'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Please Enter Email',
                  // hintStyle: TextStyle(color: Colors.white),
                  labelText: "Email Address",
                  // labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.email),
                  // fillColor: Colors.grey,
                  // filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Password
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              //TextField
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Please Enter Password',
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenTwo()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  // border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//************************* TextFormField ****************
// TextFormField(
//   obscureText: true,
//   decoration: const InputDecoration(
//     hintText: 'Please Enter Password',
//     // hintStyle: TextStyle(color: Colors.white),
//     labelText: "Password",
//     // labelStyle: TextStyle(color: Colors.white),
//     prefixIcon: Icon(Icons.lock),
//     suffixIcon: Icon(Icons.remove_red_eye_sharp),
//     // fillColor: Colors.grey,
//     // filled: true,
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.black38),
//       borderRadius: BorderRadius.all(
//         Radius.circular(10),
//       ),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.blue),
//       borderRadius: BorderRadius.all(
//         Radius.circular(10),
//       ),
//     ),
//   ),
// ),

// ******************* Column, Expanded and Padding Widget ****************
//     child: Column(
//   children: [
//     Expanded(
//       flex: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Container(height: 200, color: Colors.orange),
//       ),
//     ),
//     SizedBox(
//       height: 50,
//       child: Divider(
//         thickness: 2,
//       ),
//     ),
//     Expanded(child: Container(height: 200, color: Colors.yellow)),
//   ],
// )
//*****************Image Shaped Container Widget***************
// child: Container(
//   height: 200,
//   width: 200,
//   decoration: BoxDecoration(
//     color: Colors.orange,
//     border: Border.all(color: Colors.teal, width: 4),
//     borderRadius: const BorderRadius.only(
//       topLeft: Radius.circular(30),
//       bottomRight: Radius.circular(30),
//     ),
//     boxShadow: [BoxShadow(color: Colors.orange, blurRadius: 10)],
//     image: const DecorationImage(
//       fit: BoxFit.cover,
//       image: NetworkImage(
//           'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg'),
//     ),
//   ),
// ),

//************Login Button Widget**********
// child: Container(
//   height: 50,
//   width: 300,
//   decoration: BoxDecoration(
//     color: Colors.orange,
//     // border: Border.all(color: Colors.white, width: 3),
//     borderRadius: BorderRadius.circular(30),
//   ),
//   child: const Center(
//     child: Text(
//       'Login',
//     ),
//   ),
// ),
