import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DatePicker1 extends StatefulWidget {
  DatePicker1({Key? key}) : super(key: key);

  @override
  _DatePickerState1 createState() => _DatePickerState1();
}

class _DatePickerState1 extends State<DatePicker1> {
  var now = new DateTime.now();
  DateTime date = new DateTime.now();
  var time = TimeOfDay.now();
  var newTime = DateTime.now();
  var newTime1 = TimeOfDay.now();
  _showDatePicker() async {
    // showDatePicker(
    //   context: context,
    //   initialDate: now,
    //   firstDate: DateTime(1970),
    //   lastDate: DateTime(2100),
    // ).then(
    //   (value) {
    //     print(value);
    //   },
    // );
    var result = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
      locale: Locale('zh'), // 非必须
    );
    print(result);
    setState(() {
      if (result == null) return;
      this.date = result;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: this.time,
    );
    setState(() {
      if (result == null) return;
      this.time = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text('$now'),
              Text('${formatDate(this.now, [yyyy, '-', mm, '-', dd])}'),
              SizedBox(height: 20),
              Text('$date'),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${formatDate(this.date, [
                          yyyy,
                          '年',
                          mm,
                          '月',
                          dd,
                          '日'
                        ])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  setState(() {
                    this.now = DateTime.now();
                  });
                  this._showDatePicker();
                },
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${time.format(context)}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  setState(() {
                    this.now = DateTime.now();
                  });
                  this._showTimePicker();
                },
              ),
              SizedBox(height: 20),
              Divider(),
              Text('flutter_datetime_picker'),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${formatDate(this.newTime, [
                          yyyy,
                          '年',
                          mm,
                          '月',
                          dd,
                          '日'
                        ])}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    minTime: DateTime(2018, 3, 5),
                    maxTime: DateTime(2021, 12, 7),
                    onChanged: (date) {
                      print('change $date');
                    },
                    onConfirm: (date) {
                      print('confirm $date');
                      setState(() {
                        this.newTime = date;
                      });
                    },
                    currentTime: this.newTime,
                    locale: LocaleType.zh,
                  );
                },
              ),
              SizedBox(height: 20),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('showTimePicker $newTime1'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  DatePicker.showTimePicker(
                    context,
                    showTitleActions: true,
                    onChanged: (date) {
                      print('change $date in time zone ' +
                          date.timeZoneOffset.inHours.toString());
                    },
                    onConfirm: (date) {
                      print('confirm $date');
                      setState(() {
                        // this.newTime1 = date;
                      });
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.zh,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
