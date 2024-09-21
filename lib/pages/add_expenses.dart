import 'package:flutter/material.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_icon.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_icon_text.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_text.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class AddExpenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 120,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.big),
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {},
                  iconSize: 30.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Add Expenses',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  const SizedBox(height: 20),
                  const CustomTextButton(  
                    iconType: AppIconType.awesome, 
                     title: 'd',
                     width: 300,
                     height: 60,
                     ),
          
                  const SizedBox(height: 40),
                  CustomIconTextButton(
                      iconName: "fas-check",
                      iconType: AppIconType.awesome,
                      title: "Category",
                      width: 350,
                      borderRadius: 10,
                      iconColor: Theme.of(context).colorScheme.tertiary,
                      height: 50),
                  const SizedBox(height: 20),
                  CustomIconTextButton(
                      iconName: "fas-check",
                      iconType: AppIconType.awesome,
                      title: "Note",
                      width: 350,
                      borderRadius: 10,
                      iconColor: Theme.of(context).colorScheme.tertiary,
                      height: 50),
                  const SizedBox(height: 20),
                  CustomIconTextButton(
                      iconName: "fas-check",
                      iconType: AppIconType.awesome,
                      title: "Today",
                      width: 350,
                      borderRadius: 10,
                      iconColor: Theme.of(context).colorScheme.tertiary,
                      height: 50),
                  const SizedBox(height: 100),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                    Colors.pink,
                    Colors.orange
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'SAVE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
