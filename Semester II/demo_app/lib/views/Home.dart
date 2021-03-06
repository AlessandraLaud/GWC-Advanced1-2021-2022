import 'package:flutter/material.dart';
import 'package:demo_app/widgets/User_list.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Users Demo', style: GoogleFonts.lobster(fontSize: 30)),
      ),
      body: const Center(
        child: UserList()
      ),
    );
  }
}