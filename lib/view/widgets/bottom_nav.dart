import 'package:flutter/material.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/account_info.dart';
import 'package:marvel_user/view/home/home_page.dart';
import 'package:marvel_user/view/order/order_page.dart';
import 'package:marvel_user/view/search/search.dart';
import 'package:sizer/sizer.dart';

class Bottom extends StatefulWidget {
  int? index;
  Bottom({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  List pageData = [HomePage(), Search(), OrderPage(), AccountInfo()];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        elevation: 1,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        selectedItemColor: btn1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "",
              backgroundColor: Color(0xff868686)),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(Icons.search),
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: '',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
