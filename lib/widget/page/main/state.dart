import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/find/page.dart';
import 'package:flutter_wan/widget/page/home/page.dart';
import 'package:flutter_wan/widget/page/my/page.dart';

class MainState implements Cloneable<MainState>  {

  int selectedIndex = 0;  //底部导航栏tab标识
  List<Widget> tabPage;  //tab页面

  MainState({this.selectedIndex});

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  MainState clone() {
    return MainState()
      ..selectedIndex = selectedIndex
      ..tabPage = tabPage;
  }
}

MainState initState(Map<String, dynamic> args) {
  MainState mainState = MainState();
  mainState.selectedIndex = 0;
  mainState.tabPage = List();
  mainState.tabPage = [
    HomePage().buildPage(null),
    FindPage().buildPage(null),
    MyPage().buildPage(null)
  ];

  return mainState;
}