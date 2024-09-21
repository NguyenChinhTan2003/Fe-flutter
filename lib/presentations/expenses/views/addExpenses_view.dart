import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_button.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_icon_text.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_text.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';
import 'package:wallet_app/core/values/app_padding.dart';
import 'package:wallet_app/presentations/expenses/controller/addExpenses_controller.dart';

class AddexpensesView extends GetView<AddexpensesController> {
  const AddexpensesView({super.key});

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
                    onPressed: () {
                        Get.back();
                    },
                    iconSize: 30.0,
                    color: Theme.of(context).colorScheme.onSurface,
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
                     title: '0',
                     iconType: 'Đ', 
                     width: 300,
                     height: 60,
                     ),
                 
                  const SizedBox(height: 40),
                  CustomIconTextButton(
                     action: () => controller.onSelectCatetory(),
                      iconName: "fas-list",
                      iconType: AppIconType.awesome,
                      title: "Category",
                      width: 350,
                      borderRadius: 10,
                      iconColor: Theme.of(context).colorScheme.tertiary,
                      height: 50),
                  const SizedBox(height: 20),
                  CustomIconTextButton(
                      
                      iconName: "fas-clipboard",
                      iconType: AppIconType.awesome,
                      title: "Note",
                      width: 350,
                      borderRadius: 10,
                      iconColor: Theme.of(context).colorScheme.tertiary,
                      height: 50),
                  const SizedBox(height: 20),
                  
                CustomIconTextButton(
                  action: () => controller.onSelectDate(context),
                  iconName: "fas-calendar-day",
                  iconType: AppIconType.awesome,
                  title: "Today",
                  width: 350,
                  borderRadius: 10,
                  iconColor: Theme.of(context).colorScheme.tertiary,
                  height: 50,
                ),

                ]),
          ),
          const SizedBox(height: 40,),
           const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: CustomButton(
                width: 350,
                height: 60,
                title: 'SAVE',
              ),
            ),
        ],
      ),
    );
  }
}
