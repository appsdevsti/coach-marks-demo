import 'package:coach_marks/consts/color.dart';
import 'package:coach_marks/screen/widget/chip.dart';
import 'package:flutter/material.dart';

class RecommendationWidget extends StatelessWidget {
  final String logoUrl;
  const RecommendationWidget({super.key, required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
        gradient: LinearGradient(
          colors: [AppColors.secondaryGradientStart, AppColors.secondaryGradientEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Place
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    spacing: 16,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            logoUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Google', style: TextStyle(fontSize: 16)),
                          Text('Silicon Valley', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                      width: 32,
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.zero,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Icon(Icons.bookmark_outline),
                      ),
                    ),
              ],
            ),

            // Position
            Text('Software Engineer', style: TextStyle(fontSize: 18)),
            Row(
              spacing: 4,
              children: [
                // ChipWidget(label: 'Full Time', color: Color(0xffB897F2)),
                ChipWidget(label: 'Full Time', color: AppColors.gradientEnd),
                ChipWidget(label: 'Remote', color: AppColors.gradientEnd),
              ],
            ),

            SizedBox(height: 2),
            // Salary
            RichText(
              text: TextSpan(
                text: '\$70K - \$90K',
                style: TextStyle(fontSize: 18, color: AppColors.textPrimary, fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: ' / Year',
                    style: TextStyle(fontSize: 14, color: AppColors.textPrimary, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),

            // Button
            ElevatedButton(onPressed: () {}, child: Text('Apply')),
          ],
        ),
      ),
    );
  }
}
