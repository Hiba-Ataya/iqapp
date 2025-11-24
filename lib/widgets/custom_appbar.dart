import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
 

  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF8CE4FF),
    
      title: Row(
      
        children: [
          Image.asset(
           'assets/logo/logo.png', // make sure logo is in assets folder
            height: 50,
          ),
          SizedBox(width: 10),
          Text(
            '   Smart IQ App',
            style: TextStyle(
              color: const Color.fromARGB(255, 5, 5, 5),
              fontWeight: FontWeight.normal,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  // Required for AppBar height
  @override
  Size get preferredSize => Size.fromHeight(75);
}
