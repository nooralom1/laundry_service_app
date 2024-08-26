import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> userDetails = [
    "User Name",
    "Email",
    "Change Password",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                child: Center(
                  child: Image(
                      image: AssetImage(
                          "assets/images/profile_logo-removebg-preview.png")),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Change profile Photo",
                style: TextStyle(fontSize: 20, color: CommonColor.blue),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: userDetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 55,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: CommonColor.blue),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Text(
                                userDetails[index],
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}