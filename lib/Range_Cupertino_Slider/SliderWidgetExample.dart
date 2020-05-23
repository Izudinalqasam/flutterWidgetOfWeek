import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidgetExample extends StatefulWidget {
  @override
  _SliderWidgetExampleState createState() => _SliderWidgetExampleState();
}

class _SliderWidgetExampleState extends State<SliderWidgetExample> {
  double valueSlider = 1.0;
  var selectedRange = RangeValues(0.0, 10.0);
  double rating = 0.0;
  double adaptiveValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Slider RangeSlider and CopurtinoSlider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slider(
                min: 0,
                max: 100,
                divisions: 4,
                label: valueSlider.toInt().toString(),
                value: valueSlider,
                onChanged: (newRating) {
                  setState(() {
                    valueSlider = newRating;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              RangeSlider(
                max: 15.0,
                min: 0.0,
                divisions: 5,
                labels: RangeLabels(selectedRange.start.toString(),
                    selectedRange.end.toString()),
                values: selectedRange,
                onChanged: (newRange) {
                  setState(() {
                    selectedRange = newRange;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoSlider(
                value: rating,
                min: 0.0,
                max: 100.0,
                divisions: 3,
                onChanged: (newRating) {
                  setState(() {
                    rating = newRating;
                  });
                },
              ),
              SizedBox(
                height: 100,
              ),
              // Adaptive Sliders adjust based on the platform (ios/android),
              Text("It will be cupertino for IOS or Slider for Android"),
              Slider.adaptive(
                value: adaptiveValue,
                min: 0.0,
                max: 100.0,
                divisions: 5,
                label: adaptiveValue.toString(),
                onChanged: (newValue) {
                  setState(() {
                    adaptiveValue = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
