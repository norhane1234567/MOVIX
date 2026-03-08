import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Stack(
        children: [

          /// BACKGROUND
          Positioned.fill(
            child: Image.asset(
              "assets/images/authbackground.png",
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: 20),

                    /// TOP BAR
                    Row(
                      children: [

                        const CircleAvatar(
                          radius: 22,
                          backgroundImage:
                              AssetImage("assets/images/profile.png"),
                        ),

                        const SizedBox(width: 10),

                        const Text(
                          "Hi David",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),

                        const Spacer(),

                        Image.asset(
                          "assets/icons/bell.png",
                          width: 24,
                          color: const Color(0xffA6FF00),
                        ),

                        const SizedBox(width: 15),

                        Image.asset(
                          "assets/icons/chat.png",
                          width: 24,
                          color: const Color(0xffA6FF00),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    /// CATEGORIES
                    const Text(
                      "CATEGORIES",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: [
                        categoryButton("Fat Burn"),
                        categoryButton("Strength"),
                        categoryButton("Cardio"),
                      ],
                    ),

                    const SizedBox(height: 20),

                    /// HERO SECTION (MODEL + SUMMARY)
                    SizedBox(
                      height: 250,
                      child: Stack(
                        children: [

                          /// GREEN LINE
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 3,
                              color: const Color(0xffA6FF00),
                            ),
                          ),

                          /// MODEL
                          Positioned(
                            left: -20,
                            bottom: 0,
                            child: Image.asset(
                              "assets/images/model4.png",
                              height: 260,
                            ),
                          ),

                          /// DAILY SUMMARY
                          Positioned(
                            right: 0,
                            top: 40,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .6,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: const Color(0xffA6FF00),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "DAILY SUMMARY",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Today at a Glance",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 15),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [

                                      Column(
                                        children: [
                                          Text("Calories"),
                                          SizedBox(height: 4),
                                          Text("320 kcal"),
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Text("Active"),
                                          SizedBox(height: 4),
                                          Text("45 min"),
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Text("Workouts"),
                                          SizedBox(height: 4),
                                          Text("1 / 2"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// TODAY WORKOUT
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffA6FF00)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [

                          const Text(
                            "Today's Workout",
                            style: TextStyle(color: Colors.white),
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            "Full Body Burn",
                            style: TextStyle(color: Colors.white54),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "30 min • Intermediate",
                            style: TextStyle(
                              color: Color(0xffA6FF00),
                            ),
                          ),

                          const SizedBox(height: 20),

                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              outlineButton("Start Workout"),
                              outlineButton("Change Workout"),
                            ],
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    /// RECOMMENDED
                    const Text(
                      "RECOMMENDED FOR YOU",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const Text(
                              "Core Strength Blast",
                              style: TextStyle(color: Colors.white),
                            ),

                            const SizedBox(height: 10),

                            outlineButton("Start"),
                          ],
                        ),

                        const Spacer(),

                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Color(0xffA6FF00),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              "15 min\nBeginner",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      /// BOTTOM NAV
      bottomNavigationBar: Container(
        height: 70,
        color: const Color(0xffA6FF00),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            navIcon("assets/icons/profile.png", "Profile"),
            navIcon("assets/icons/programs.png", "Programs"),

            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/icons/home.png",
                  width: 28,
                ),
              ),
            ),

            navIcon("assets/icons/progress.png", "Progress"),
            navIcon("assets/icons/workout.png", "Workout"),
          ],
        ),
      ),
    );
  }

  /// CATEGORY BUTTON
  Widget categoryButton(String text) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffA6FF00),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(text),
      ),
    );
  }

  /// OUTLINE BUTTON
  Widget outlineButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffA6FF00)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xffA6FF00),
        ),
      ),
    );
  }

  /// NAV ICON
  Widget navIcon(String icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 24,
          color: Colors.black,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
