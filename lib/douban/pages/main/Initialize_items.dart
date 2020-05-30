
import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/group/group.dart';
import 'package:jwellflutter/douban/pages/home/home.dart';
import 'package:jwellflutter/douban/pages/mail/mail.dart';
import 'package:jwellflutter/douban/pages/main/bottom_bar_item.dart';
import 'package:jwellflutter/douban/pages/profile/profile.dart';
import 'package:jwellflutter/douban/pages/subject/subject.dart';

List<RYBottomBarItem> items = [
  RYBottomBarItem("home", "首页"),
  RYBottomBarItem("subject", "书音影"),
  RYBottomBarItem("group", "小组"),
  RYBottomBarItem("mall", "市集"),
  RYBottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  RYDBHomePage(),
  RYDBSubjectPage(),
  RYDBGroupPage(),
  RYDBMailPage(),
  RYDBProfilePage(),
];