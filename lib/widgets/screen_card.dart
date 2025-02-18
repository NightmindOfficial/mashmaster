import 'package:flutter/material.dart';

class ScreenCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor color;
  const ScreenCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
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
                              colors: [color, Colors.blueGrey],
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
                            icon: Icon(icon),
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
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
