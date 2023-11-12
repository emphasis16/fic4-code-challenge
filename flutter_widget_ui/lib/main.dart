// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/basic_form/dialog_widget.dart';
import 'package:flutter_widget_ui/basic_form/form_widget.dart';
import 'package:flutter_widget_ui/basic_layout/aspect_rasio.dart';
import 'package:flutter_widget_ui/basic_layout/center.dart';
import 'package:flutter_widget_ui/basic_layout/column.dart';
import 'package:flutter_widget_ui/basic_layout/expanded.dart';
import 'package:flutter_widget_ui/basic_layout/gridview.dart';
import 'package:flutter_widget_ui/basic_layout/listview.dart';
import 'package:flutter_widget_ui/basic_layout/padding.dart';
import 'package:flutter_widget_ui/basic_layout/row.dart';
import 'package:flutter_widget_ui/basic_layout/sized_box.dart';
import 'package:flutter_widget_ui/basic_layout/stack.dart';
import 'package:flutter_widget_ui/basic_layout/wrap.dart';
import 'package:flutter_widget_ui/basic_widget/button.dart';
import 'package:flutter_widget_ui/basic_widget/circle_avatar.dart';
import 'package:flutter_widget_ui/basic_widget/container.dart';
import 'package:flutter_widget_ui/basic_widget/icon.dart';
import 'package:flutter_widget_ui/basic_widget/image.dart';
import 'package:flutter_widget_ui/basic_widget/scaffold.dart';
import 'package:flutter_widget_ui/basic_widget/text.dart';
import 'package:flutter_widget_ui/meet/fic_form_widget.dart';
import 'package:flutter_widget_ui/navigation/bottom_navbar.dart';
import 'package:flutter_widget_ui/navigation/drawer.dart';
import 'package:flutter_widget_ui/navigation/nav_push.dart';
import 'package:flutter_widget_ui/navigation/sliver.dart';
import 'package:flutter_widget_ui/navigation/tabbar.dart';
import 'package:flutter_widget_ui/stateful_sample/less_full.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FicFormWidget(),
    );
  }
}

// <== Basic Widget ==>
// MyScaffold
// MyContainer
// MyText
// MyButton
// MyIcon
// MyImage
// MyCircleAvatar

// <== Basic Layout ==>
// MyColumn
// MyRow
// MyListView
// MyGridView
// MyStack
// MyPadding
// MyAspectRatio
// MyCenter
// MyExpanded
// MySizedBox
// MyWrap

// <== Basic Form ==>
// MyForm
// MyDialog

// <== navigation ==>
// MyNavPush
// MyNavBar
// MytTabbar
// MyDrawer
// MySliver

// <== less ful sample ==>
// MyLessFul