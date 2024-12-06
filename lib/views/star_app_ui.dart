// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:miniproject/views/login_ui.dart';
import 'package:miniproject/views/register_ui.dart';

class StarAppUi extends StatefulWidget {
  const StarAppUi({super.key});

  @override
  State<StarAppUi> createState() => _StarAppUiState();
}

class _StarAppUiState extends State<StarAppUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage(
                    'assets/images/money.png',
                  ),
                  height: 450,
                ),
                Container(
                  width: 150,
                  child: Divider(
                    color: Color.fromARGB(255, 219, 218, 218),
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'บันทึก\nรายรับรายจ่าย',
                  style: TextStyle(
                    color: Color.fromARGB(255, 84, 155, 149),
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUi(),
                      ),
                    );
                  },
                  child: Text(
                    'เริ่มต้นใช้งานแอปพลิเคชัน',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 84, 155, 149),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.8,
                      MediaQuery.of(context).size.height * 0.08,
                    ),
                    shadowColor: Color.fromARGB(255, 84, 155, 149),
                    elevation: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ยังไม่ได้ลงทะเบียน?  ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterUi(),
                          ),
                        );
                      },
                      child: Text(
                        'ลงทะเบียน',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          color: Color.fromARGB(255, 84, 155, 149),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
