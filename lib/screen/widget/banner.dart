import 'package:flutter/material.dart';
import 'package:coach_marks/consts/color.dart';

class BannerWidget extends StatelessWidget {
  final GlobalKey globalKey;
  const BannerWidget({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [AppColors.gradientStart, AppColors.gradientEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '30% Off',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                'For your first month subscription',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          ElevatedButton(
            key: globalKey,
            onPressed: () {},
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
