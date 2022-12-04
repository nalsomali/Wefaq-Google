// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:wefaq/AdminNavBar.dart';
import 'package:wefaq/AdminProjectDetailsAppBar.dart';
import 'package:wefaq/config/colors.dart';

class adminprojectDetailScreen extends StatefulWidget {
  adminprojectDetailScreen();

  @override
  State<adminprojectDetailScreen> createState() => _projectDetailScreenState();
}

class _projectDetailScreenState extends State<adminprojectDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: AdminCustomNavigationBar(
          currentHomeScreen: 0,
          updatePage: () {},
        ),
        body: Scrollbar(
          child: CustomScrollView(
            slivers: <Widget>[
              const adminDetailAppBar(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "تطوير موقع الكتروني",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 8.0),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 32.0,
                                width: 32.0,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.location_pin,
                                    color: Color.fromARGB(172, 136, 98, 146)),
                              ),
                              Text(
                                "جامعة الملك سعود",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Divider(color: kOutlineColor, height: 1.0),
                      const SizedBox(height: 16.0),
                      Text(
                        'وصف المشروع',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "تطوير موقع الكتروني للجامعة",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: kSecondaryTextColor),
                      ),
                      const SizedBox(height: 16.0),
                      const Divider(color: kOutlineColor, height: 1.0),
                      const SizedBox(height: 16.0),
                      Text(
                        'نبحث عن',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8.0),
                      Row(children: <Widget>[
                        Text(
                          "مطورين",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: kSecondaryTextColor),
                        ),
                      ]),
                      const Divider(color: kOutlineColor, height: 1.0),
                      const SizedBox(height: 16.0),
                      Text(
                        'مدة المشروع',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8.0),
                      Row(children: <Widget>[
                        const Icon(
                          Icons.timelapse_outlined,
                          color: Color.fromARGB(172, 136, 98, 146),
                          size: 21,
                        ),
                        Text(
                          "اربع اسابيع",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: kSecondaryTextColor),
                        ),
                      ]),
                      const SizedBox(height: 16.0),
                      const Divider(color: kOutlineColor, height: 1.0),
                      const SizedBox(height: 16.0),
                      Text(
                        "اعضاء الفريق",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 10.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35.0,
                                width: 35.0,
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage("images/team.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 4),
                                      blurRadius: 4.0,
                                      color: Colors.black.withOpacity(0.25),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "سارة الشثري ،ندى الصومالي",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildIngredientItem(
    BuildContext context,
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Container(
            height: 24.0,
            width: 24.0,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 229, 214, 237),
            ),
            child: const Icon(
              Icons.check,
              color: Color.fromARGB(172, 113, 60, 127),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
