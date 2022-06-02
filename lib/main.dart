import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testassignmentcontrol/constans.dart';
import 'package:testassignmentcontrol/myslider/common.dart';
import 'package:testassignmentcontrol/myslider/slider.dart';
import 'package:testassignmentcontrol/myslider/slider_shapes.dart';
import 'package:testassignmentcontrol/stringpicker/stringpicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zignuts Technolabs PVT',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: const Color(0xFF343A40),
          secondaryHeaderColor: const Color(0xFF343A40)),
      home: const MyHomePage(title: 'Zignuts Test Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentCategoryIntValue = 1;
  int _currentItemIntValue = 1;
  double _value = 5.0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: getControllerWidget()),
    );
  }

  Widget getControllerWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.all_inclusive,
              color: Colors.grey,
            ),
          ),
          getRangeSlider(),
          getStringPicker(
              mListData: Constants.listCategory,
              onChanged: (value) {
                setState(() {
                  _currentCategoryIntValue = value;
                });
              },currentValue: _currentCategoryIntValue),
          getStringPicker(
              mListData: Constants.dynamicMap[_currentCategoryIntValue]!,
              onChanged: (value) {
                setState(() {
                  _currentItemIntValue = value;
                });
              },currentValue: _currentItemIntValue),
        ],
      ),
    );
  }

  /// This method will build widget for the all control
  /// Time Slider
  /// Category Picker
  /// Item Picker
  Widget getRangeSlider() {
    return SfSlider(
      min: 0.0,
      max: 30.0,
      value: _value,
      interval: 10,
      dividerShape: SfDividerShape(),
      showTicks: true,
      minorTickShape: SfTickShape(),
      activeColor: Colors.white,
      inactiveColor: Colors.grey,
      dateIntervalType: DateIntervalType.minutes,
      shouldAlwaysShowTooltip: true,
      showLabels: false,
      enableTooltip: true,
      minorTicksPerInterval: 1,
      onChanged: (dynamic value) {
        setState(() {
          _value = value;
        });
      },
    );
  }

  /// This method will build widget for the String picker dynamic
  /// base on the passed lists data
  Widget getStringPicker(
      {required List<String> mListData, required Function(int) onChanged,required int currentValue}) {
    return StringPicker(
      value: currentValue,
      minValue: 1,
      list: mListData,
      maxValue: mListData.length,
      step: 1,
      itemWidth: 130,
      itemHeight: 100,
      selectedTextStyle: const TextStyle(color: Colors.white, fontSize: 22.0),
      textStyle: const TextStyle(color: Colors.grey, fontSize: 18.0),
      axis: Axis.horizontal,
      onChanged: (value) {
        onChanged(value);
      },
    );
  }
}
