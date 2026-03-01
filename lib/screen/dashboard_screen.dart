import 'package:coach_marks/consts/color.dart';
import 'package:coach_marks/screen/widget/banner.dart';
import 'package:coach_marks/screen/widget/chip.dart';
import 'package:coach_marks/screen/widget/recommendation.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
                              'https://i.pravatar.cc/150?img=13',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome Back!'),
                              Text('Hello, John!'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined),
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
                child: BannerWidget(),
              ),

              // Browse Categories
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Browse By Category'),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    const SizedBox(width: 16),
                    ChipWidget(label: 'See All', selected: true),
                    const SizedBox(width: 16),
                    ChipWidget(label: 'Full Time'),
                    const SizedBox(width: 16),
                    ChipWidget(label: 'Part Time'),
                    const SizedBox(width: 16),
                    ChipWidget(label: 'Contract'),
                    const SizedBox(width: 16),
                    ChipWidget(label: 'Freelance'),
                    const SizedBox(width: 16),
                  ],
                ),
              ),

              // Recommendded
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recommended'),
                    TextButton(onPressed: () {}, child: Text('See All')),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecommendationWidget(
                        logoUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/250px-Google_%22G%22_logo.svg.png',
                      ),
                    ],
                  ),
                ),
              ),

              // Saved
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Saved'),
                    TextButton(onPressed: () {}, child: Text('See All')),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecommendationWidget(
                        logoUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/250px-Google_%22G%22_logo.svg.png',
                      ),
                    ],
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: SizedBox(
              //     width: screenWidth,
              //     child: ElevatedButton(
              //       onPressed: () {},
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: AppColors.buttonPrimary,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(24),
              //         ),
              //         elevation: 2,
              //       ),
              //       child: Text(
              //         "I'm feeling lucky",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: ElevatedButton(onPressed: () {}, child: Text('Search Jobs')),
      //   ),
      // ),
    );
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
