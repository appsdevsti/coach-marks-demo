import 'package:coach_marks/consts/color.dart';
import 'package:coach_marks/screen/widget/chip.dart';
import 'package:flutter/material.dart';

class RecommendationWidget extends StatelessWidget {
  final String logoUrl;
  const RecommendationWidget({super.key, required this.logoUrl});

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
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        foregroundImage: NetworkImage(logoUrl),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Google'), Text('Silicon Valley')],
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
              ],
            ),

            // Position
            Text('Software Engineer'),
            Row(
              spacing: 4,
              children: [
                ChipWidget(label: 'Full Time'),
                ChipWidget(label: 'Remote'),
              ],
            ),

            // Salary
            Text('\$100k - \$150k / year'),

            // Button
            ElevatedButton(onPressed: () {}, child: Text('Apply')),
          ],
        ),
      ),
    );
  }
}
