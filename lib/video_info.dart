import 'package:flutter/material.dart';
import 'constance/colors.dart' as colors;

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colors.AppColor.gradiantFirst.withOpacity(0.9),
                colors.AppColor.gradiantSecond,
              ],
              begin: const FractionalOffset(0.0, 0.4),
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: colors.AppColor.secondPageIconColor,
                        ),
                        Icon(
                          Icons.info_outline,
                          size: 20,
                          color: colors.AppColor.secondPageIconColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontSize: 25,
                        color: colors.AppColor.secondPageTitleColor,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 25,
                        color: colors.AppColor.secondPageTitleColor,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  colors.AppColor
                                      .secondPageContainerGradiant1stColor,
                                  colors.AppColor
                                      .secondPageContainerGradiant2ndColor,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                size: 20,
                                color: colors.AppColor.secondPageIconColor,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "68 min",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: colors.AppColor.secondPageIconColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    colors.AppColor
                                        .secondPageContainerGradiant1stColor,
                                    colors.AppColor
                                        .secondPageContainerGradiant2ndColor,
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.handyman_outlined,
                                  size: 20,
                                  color: colors.AppColor.secondPageIconColor,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "Ressitant band, Kettebell",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: colors.AppColor.secondPageIconColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
