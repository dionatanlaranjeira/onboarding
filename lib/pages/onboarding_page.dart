import 'package:flutter/material.dart';
import 'package:onboarding_flutter/data/demo_data.dart';
import 'package:onboarding_flutter/widgets/animated_dots.dart';
import 'package:onboarding_flutter/widgets/onboard_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              SizedBox(
                height: 500,
                child: PageView.builder(
                  itemCount: DemoData.demoData.length,
                  onPageChanged: (value) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardContent(
                      illustration:  DemoData.demoData[index]['illustration'],
                      title:  DemoData.demoData[index]['title'],
                      text:  DemoData.demoData[index]['text'],
                    );
                  },
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                   DemoData.demoData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: AnimatedDots(isActive: _selectedIndex == index),
                  ),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
