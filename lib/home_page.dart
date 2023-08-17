import 'package:flutter/material.dart';
import 'package:training_app_getx/constance/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.homePageBackground,
        body: Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 30,
            right: 30,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Training',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColor.homePageTitle,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: AppColor.homePageIcons,
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                    color: AppColor.homePageIcons,
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: AppColor.homePageIcons,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Your Program',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.homePageSubTitle,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.homePageDetails,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: AppColor.homePageIcons,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.gradiantFirst.withOpacity(0.8),
                      AppColor.gradiantSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(90),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(5, 10),
                      blurRadius: 10,
                      color: AppColor.gradiantSecond.withOpacity(0.2),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 25,
                    right: 20,
                    bottom: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Next Workout",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Legs Toning",
                        style: TextStyle(
                          fontSize: 27,
                          color: AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Text(
                        "and Glutes workouts",
                        style: TextStyle(
                          fontSize: 27,
                          color: AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 20,
                                color: AppColor.homePageContainerTextSmall,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "60 min",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.homePageContainerTextSmall,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                            shadows: [
                              BoxShadow(
                                color: AppColor.gradiantFirst,
                                offset: const Offset(5, 5),
                                blurRadius: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/decoration2.jpg"),
                            alignment: Alignment.centerLeft,
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(8, 10),
                                blurRadius: 40,
                                color:
                                    AppColor.gradiantSecond.withOpacity(0.3)),
                            BoxShadow(
                                offset: const Offset(-1, -5),
                                blurRadius: 40,
                                color:
                                    AppColor.gradiantSecond.withOpacity(0.3)),
                          ]),
                    ),
                    Positioned(
                      left: 1,
                      right: 140,
                      bottom: 2,
                      height: 170,
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(bottom: 30),
                        decoration: const BoxDecoration(
                          // color: Colors.red.withOpacity(0.2),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/run_girl.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 190,
                      right: 2,
                      bottom: 2,
                      child: Container(
                        height: 100,
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(top: 70),
                        // color: Colors.greenAccent.withOpacity(0.2),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You are doing Great",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.homePageDetails,
                              ),
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Keep it up \n ",
                                style: TextStyle(
                                  color: AppColor.homePagePlanColor,
                                  fontSize: 16,
                                ),
                                children: const [
                                  TextSpan(text: "stick to your plan")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
