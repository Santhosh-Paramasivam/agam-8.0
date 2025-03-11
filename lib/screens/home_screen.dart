import 'package:agam/screens/common_user_registration.dart';
import 'package:agam/screens/user_registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_button.dart';
import 'package:agam/widgets/cf_input.dart';
import 'package:agam/config/config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController referenceIdController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const Image(
                image: AssetImage('assets/portflow_logo.png'),
                width: 500,
              ),
              CampusFindInput(
                  labelText: "Enter reference id",
                  controller: referenceIdController,
                  width: Config.TEXT_INPUT_WIDTH,
                  height: Config.TEXT_INPUT_HEIGHT,
                  fontSize: Config.DEFAULT_FONT_SIZE),
              const SizedBox(
                height: 15,
              ),
              CampusFindInput(
                  labelText: "Enter password",
                  controller: referenceIdController,
                  width: Config.TEXT_INPUT_WIDTH,
                  height: Config.TEXT_INPUT_HEIGHT,
                  fontSize: Config.DEFAULT_FONT_SIZE),
              Container(
                  alignment: Alignment.centerRight,
                  child: const Row(children: [
                    Spacer(),
                    Text(
                      "Not Registered Yet?",
                      // textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      width: 50,
                    )
                  ])),
              const SizedBox(
                height: 15,
              ),
              CampusFindButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CommonUserRegistration()));
                  },
                  label: "User Registration")
            ])));
  }
}

/* 
class Solution {
public:
    bool checkInclusion(string s1, string s2) {
        int n1 = s1.length();
        int n2 = s2.length();

        if(n1 > n2) return false;

        vector<int> counts1(26,0);
        vector<int> counts2(26,0);

        for(int i = 0 ; i < n1 ; i++) {
            counts1[s1[i] - 'a']++;
            counts2[s2[i] - 'a']++;
        }

        if(counts1 == counts2) return true;

        for(int i = n1 ; i < n2 ; i++) {
            counts2[s1[i] - 'a']++;
            counts2[s[i-n1] - 'a']--;

            if(counts1 == counts2) return true;
        }

        return false;
    }
};
*/