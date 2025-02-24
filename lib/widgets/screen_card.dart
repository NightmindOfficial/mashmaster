import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenCard extends StatelessWidget {
  final String _title;
  final String? _subtitle;
  final IconData _icon;
  final MaterialColor _color;
  final String? _location;
  final Function? _onTap;

  const ScreenCard({
    super.key,
    required String title,
    required IconData icon,
    required MaterialColor color,
    String? subtitle,
    String? location,
    Function? onTap,
  }) : assert(
         (location == null) != (onTap == null),
         'Exactly one of location or onTap must be defined',
       ),
       _color = color,
       _title = title,
       _subtitle = subtitle,
       _icon = icon,
       _location = location,
       _onTap = onTap;

  String get title => _title;
  String? get subtitle => _subtitle;
  IconData get icon => _icon;
  MaterialColor get color => _color;
  String? get location => _location;
  Function? get onTap => _onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: InkWell(
        onTap:
            _location != null
                ? () {
                  context.push(_location);
                }
                : () => _onTap,
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
                height: 70,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  minTileHeight: 0,
                  title: Text(_title),
                  subtitle: _subtitle != null ? Text(_subtitle) : null,
                  contentPadding: EdgeInsets.only(left: 4),
                  titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  subtitleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
