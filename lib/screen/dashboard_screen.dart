import 'dart:developer';

import 'package:coach_marks/consts/color.dart';
import 'package:coach_marks/screen/widget/banner.dart';
import 'package:coach_marks/screen/widget/chip.dart';
import 'package:coach_marks/screen/widget/recommendation.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey _notificationKey = GlobalKey();
  final GlobalKey _dealsKey = GlobalKey();
  final GlobalKey _recommendedKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 1), () {
    _showCoachMarks();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              // Header
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue,
                            foregroundImage: NetworkImage(
                              'https://i.pravatar.cc/250?img=13',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome Back!'),
                              Text(
                                'Hello, John!',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: ElevatedButton(
                        key: _notificationKey,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.zero,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Icon(Icons.notifications_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: _inputDecoration(
                    hint: 'Search',
                    icon: Icons.search,
                  ),
                ),
              ),

              // Banner
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BannerWidget(globalKey: _dealsKey),
              ),

              // Browse Categories
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Browse By Category',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    const SizedBox(width: 16),
                    ChipWidget(label: 'See All', selected: true),
                    const SizedBox(width: 8),
                    ChipWidget(label: 'Full Time'),
                    const SizedBox(width: 8),
                    ChipWidget(label: 'Part Time'),
                    const SizedBox(width: 8),
                    ChipWidget(label: 'Contract'),
                    const SizedBox(width: 8),
                    ChipWidget(label: 'Freelance'),
                    const SizedBox(width: 8),
                  ],
                ),
              ),

              // Recommendded
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recommended', style: TextStyle(fontSize: 20)),
                    TextButton(onPressed: () {}, child: Text('See All')),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 16),
                    RecommendationWidget(
                      key: _recommendedKey,
                      logoUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/250px-Google_%22G%22_logo.svg.png',
                    ),
                    const SizedBox(width: 16),
                    RecommendationWidget(
                      logoUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/250px-Google_%22G%22_logo.svg.png',
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),

              // Saved
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Saved', style: TextStyle(fontSize: 20)),
                    TextButton(onPressed: () {}, child: Text('See All')),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 16),
                    RecommendationWidget(
                      logoUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/250px-Google_%22G%22_logo.svg.png',
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),

              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showCoachMarks() async {
    // TODO: Implement coach marks logic here
    log('Showing coach marks...');
    final targets = [
      TargetFocus(
        identify: 'notificationButton',
        keyTarget: _notificationKey,
        alignSkip: Alignment.topCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'This is the notification button',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),

      TargetFocus(
        identify: 'dealsButton',
        keyTarget: _dealsKey,
        alignSkip: Alignment.topCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'This is the deals button',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),

      TargetFocus(
        identify: 'recommendationButton',
        keyTarget: _recommendedKey,
        alignSkip: Alignment.topCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'This is the recommendation button',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    ];

    final tutorial = TutorialCoachMark(targets: targets);

    // Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        tutorial.show(context: context);
      }
    // });
  }

  InputDecoration _inputDecoration({required String hint, IconData? icon}) {
    return InputDecoration(
      isDense: true,
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      hintText: hint,
      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
      prefixIcon: icon != null
          ? Icon(icon, size: 20, color: Colors.grey)
          : null,
    );
  }
}
