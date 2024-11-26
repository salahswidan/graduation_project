import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/access2.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/private/home_private.dart';

import '../Drying/drying_levels.dart';
import '../Top_sources/Top_Sources.dart';
import '../constant/constant.dart';
import '../guide/armor_guide.dart';
import '../guide/back_guide.dart';
import '../guide/cardio_guide.dart';
import '../guide/chest_guide.dart';
import '../guide/legs_guide.dart';
import '../guide/shoulders_guide.dart';
import '../healthy_recipes/bulking_levels.dart';
import '../levels/Beginner/beginner_screen.dart';
import '../loss_weight/loss_wight_level_one.dart';
import '../payment/plan.dart';
import '../supplement/supplement_screen.dart';
import '../supplement/the_most_important_tips.dart';
import '../woman/woman_levels.dart';
import 'Nutrition_Program_see_all.dart';
import 'nutrition_guide_see_all.dart';
import 'training_programs_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = CacheHelper().getData(key: ApiKey.index) ?? 0;
    final String gender = CacheHelper().getData(key: ApiKey.gender);
    late bool ispayment = CacheHelper().getData(key: ApiKey.ispayment);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap: () {
                  if (ispayment = true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePrivate(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Access2(),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Private-Home',
                  style: TextStyle(color: Color(0xffD0FD3E), fontSize: 22),
                ),
              )),
        ],
      ),
      //!  singlechildScollview
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Common Questions',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 24),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TheMostImportantTips()),
                  );
                },
                child: Image.asset('assets/assets/images/questions.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Nutritional supplements',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 14),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SupplementScreen()),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SupplementScreen()),
                    );
                  },
                  child: Image.asset('assets/assets/images/supplements2.png')),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Exercise guide',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChestGuide()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/assets/images/small_chest.jpg'),
                        backgroundColor: Color(0xffD9D9D9),
                        maxRadius: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BackGuide()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/assets/images/samll_back.jpg'),
                        backgroundColor: Color(0xffD9D9D9),
                        maxRadius: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShouldersGuide()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/assets/images/small_sholder.png'),
                        backgroundColor: Color(0xffD9D9D9),
                        maxRadius: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LegsGuide()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/assets/images/samll_leg.jpg'),
                        backgroundColor: Color(0xffD9D9D9),
                        maxRadius: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ArmorGuide()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/assets/images/small_armor.jpg'),
                        backgroundColor: Color(0xffD9D9D9),
                        maxRadius: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CardioGuide()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/assets/images/small_cardio.jpg'),
                        backgroundColor: Color(0xffD9D9D9),
                        maxRadius: 45,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Training programs',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrainingPrograms()),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const LevelBeginnerScreen(initialIndex: 1)),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/learn_basic_of_drying.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Nutrition Programs',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const NutritionProgramSeeAll()),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              GestureDetector(
                  onTap: () {
                    //  print(gender);
                    if (gender == 'Male') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DryingLevels(
                            initialIndex: index,
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WomanLevels(
                            initialIndex: 2,
                          ),
                        ),
                      );
                    }
                  },
                  child: Image.asset('assets/assets/images/Dietart.jpg')),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    if (gender == 'Male') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HealthyRecipesBulkingUp1(
                            initialIndex: index,
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WomanLevels(
                            initialIndex: 0,
                          ),
                        ),
                      );
                    }
                  },
                  child: Image.asset('assets/assets/images/Nutritional.jpg')),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    if (gender == 'Male') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LossWightUp1(
                              // initialIndex: index,
                              ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WomanLevels(
                            initialIndex: 1,
                          ),
                        ),
                      );
                    }
                  },
                  child: Image.asset('assets/assets/images/weight loss.jpg')),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Nutrition Guide',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  const SizedBox(
                    width: 190,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Nutritionguide()),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopSources(
                                  initialIndex: 0,
                                )),
                      );
                    },
                    child: Image.asset(
                      'assets/assets/images/protein.png',
                      height: 189,
                      width: 182,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopSources(
                                  initialIndex: 1,
                                )),
                      );
                    },
                    child: Image.asset(
                      'assets/assets/images/carbs.png',
                      height: 189,
                      width: 182,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopSources(
                                  initialIndex: 3,
                                )),
                      );
                    },
                    child: Image.asset(
                      'assets/assets/images/Dariy.png',
                      height: 189,
                      width: 182,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopSources(
                                  initialIndex: 4,
                                )),
                      );
                    },
                    child: Image.asset(
                      'assets/assets/images/fat.png',
                      height: 189,
                      width: 182,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Nutrition supplements',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  )
                ],
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SupplementScreen()),
                    );
                  },
                  child: Image.asset('assets/assets/images/supplements.jpg')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SupplementScreen()),
                    );
                  },
                  child: Image.asset('assets/assets/images/supplements.jpg')),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
  }
}
