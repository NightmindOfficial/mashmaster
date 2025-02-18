import 'package:flutter/material.dart';

class ScreenCard extends StatelessWidget {
  final String _title;
  final IconData _icon;
  final MaterialColor _color;
  final String? _routeName;

  const ScreenCard({
    super.key,
    required String title,
    required IconData icon,
    required MaterialColor color,
    String? routeName,
  }) : _color = color,
       _title = title,
       _icon = icon,
       _routeName = routeName;

  String get title => _title;
  IconData get icon => _icon;
  MaterialColor get color => _color;
  String? get routeName => _routeName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: InkWell(
        onTap:
            _routeName != null
                ? () {
                  Navigator.pushNamed(context, _routeName);
                }
                : () {},
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [_color, Colors.blueGrey],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: -constraints.maxHeight * 0.33,
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(_icon),
                            color: Colors.grey[300],
                            iconSize: constraints.maxHeight,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  _title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
