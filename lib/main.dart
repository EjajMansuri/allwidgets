import 'package:allwidgets/AnimatedContainer.dart';
import 'package:allwidgets/CheckBox.dart';
import 'package:allwidgets/CustomDialodBox.dart';
import 'package:allwidgets/Expended_Widget.dart';
import 'package:allwidgets/Flexible.dart';
import 'package:allwidgets/GridView_Widget.dart';
import 'package:allwidgets/Hero.dart';
import 'package:allwidgets/InkWell.dart';
import 'package:allwidgets/Visiblity.dart';
import 'package:allwidgets/Wrap_Widget.dart';
import 'package:allwidgets/app_buttons.dart';
import 'package:flutter/material.dart';

import 'Align_Widget.dart';
import 'AnimaAnimatedPadding_widget.dart';
import 'AnimatedBuilder.dart';
import 'AnimatedPosition.dart';
import 'Animated_Size.dart';
import 'Cntainer_Btn.dart';
import 'DrwerWidget.dart';
import 'FloatingActionButton.dart';
import 'IconButton.dart';
import 'MediaQuery.dart';
import 'NewMediaQuery.dart';
import 'PopUpMenu.dart';
import 'RadioButton.dart';
import 'SafeAria.dart';
import 'SizeTransition.dart';
import 'SnakeBar.dart';
import 'Spacer_WIdget.dart';
import 'StackScreen.dart';
import 'TabBarWidget.dart';
import 'TextField.dart';
import 'TweenAnimationWidget.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var appButtons = AppButtons();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widgets"),
      ),
    body: ListView(
      children: [

        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Align Widgets", context, AlignWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Wrap And Chip", context, WrapWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Icon Button", context, IcconButton(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("InkWell", context, Inkwell(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Hero", context, HeroWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("GridView Widget", context, GridViewWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Animated Container", context, AnimatedContainerWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Expended Widget", context,  ExpandedApp(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Stack Widget", context,  StackScreen(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Spacer Wideget", context,  SpcerWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("RadioListTile", context,  RadioButtonWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("CheckBox", context,  CheckBoxWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Flexible", context,  FlexibleWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("SafeAria", context,  SafeAriaWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Visiblity", context,  VisiblityWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Drawer", context,  DrawerWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Tab Bar", context,  TabBarWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("TextFieldWidget", context,  TextFieldWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("PopUpMenu Widget", context,  PopUpMenuWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Custom dialog", context,  CustomDialogWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("FloatingActionButton", context,  FalotingActionbtnWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Snack Bar", context,  SnackBarWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("MediaQuery", context,  MediaQQuery(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Animated Padding", context,  AnimatedPaddingWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Tween Animation", context,  TweenAnimationWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("AonteinerBtn", context,  Btn(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("New MediaQuery", context,  NewMediaQuery(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Animated Builder", context,  AnimatedBuilderWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Animated position", context,  ANimatedPositionWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Animated Size", context,  AnimatedSizeWidget(),Colors.white),),
        Padding(padding: EdgeInsets.zero,child: appButtons.myButton("Size Transition", context,  SizeTransitionWidget(),Colors.white),),

      ],

    ),
    );
  }
}


