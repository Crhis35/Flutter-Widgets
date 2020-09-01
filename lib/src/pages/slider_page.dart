import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _unlockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25.0),
        child: Column(
          children: <Widget>[
            _slider(),
            _checkBox(),
            _creatSwitch(),
            Expanded(child: _image())
          ],
        ),
      ),
    );
  }

  Widget _slider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image Size',
      divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_unlockCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _image() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/736x/5c/40/db/5c40db103ce5ba3e49bc200265936f0e.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    /*return Checkbox(
                value: _unlockCheck,
                onChanged: (_unlockCheck)
                    ? null
                    : (value) {
                        setState(() {
                          _unlockCheck = value;
                        });
                      },
              );*/
    return CheckboxListTile(
        title: Text('Block Slider'),
        value: _unlockCheck,
        onChanged: (value) {
          setState(() {
            _unlockCheck = value;
          });
        });
  }

  Widget _creatSwitch() {
    return SwitchListTile(
        title: Text('Block Slider'),
        value: _unlockCheck,
        onChanged: (value) {
          setState(() {
            _unlockCheck = value;
          });
        });
  }
}
