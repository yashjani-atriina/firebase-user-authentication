// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutterauthentication/auth.dart';

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);

//   final User? user = Auth().currentUser;

//   Future<void> signOut() async {
//     await Auth().signOut();
//   }

//   Widget _title() {
//     return const Center(
//       child: Text(
//         "Home Page",
//         style: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget _userid() {
//     return Text(user?.email ?? "User Email");
//   }

//   Widget _signOutButton() {
//     return ElevatedButton(
//       onPressed: signOut,
//       child: const Icon(Icons.logout),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: _title(),
//         actions: [
//           _signOutButton(),
//         ],
//         elevation: 0.5,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // _userid(),
//             Text("Welcome ${user?.email}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// DefaultTabController(
//   length: 3,
//   child: Scaffold(
//     appBar: AppBar(
//       bottom: TabBar(
//         tabs: [
//           Tab(icon: Icon(Icons.flight)),
//           Tab(icon: Icon(Icons.directions_transit)),
//           Tab(icon: Icon(Icons.directions_car)),
//         ],
//       ),
//       title: Text('Tabs Demo'),
//     ),
//     body: TabBarView(
//       children: [
//         Icon(Icons.flight, size: 350),
//         Icon(Icons.directions_transit, size: 350),
//         Icon(Icons.directions_car, size: 350),
//       ],
//     ),
//   ),
// );

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterauthentication/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Center(
      child: Text(
        "Home Page",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _userid() {
    return Text(user?.email ?? "User Email");
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Icon(Icons.logout),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _title(),
        actions: [
          _signOutButton(),
        ],
        elevation: 0.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _userid(),
            Text("Welcome ${user?.email}"),
            Text("${user?.displayName}")
          ],
        ),
      ),
    );
  }
}
