import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_text_field.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';
import 'package:wallet_app/core/values/app_font.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';
import 'package:wallet_app/presentations/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff29b3e2),
                  Color(0xffb972fc),
                  Color(0xffe47cbb),
                  Color(0xfffd956f),
                ],
                tileMode: TileMode.clamp,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                AppIconHelper.getIcon("fas-coins", AppIconType.awesome),
                color: Theme.of(context).colorScheme.primary,
                size: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              // Text(
              //   "Wallet App",
              //   style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              //       color: Theme.of(context).colorScheme.primary,
              //       fontFamily: AppFonts.bold),
              // )
              SizedBox(
                width: 350,
                child: CustomTextField(
                  controller: controller.usernameController,
                  labelInput: 'Username',
                  isShowLable: false,
                  prefixIcon: Icon(
                    AppIconHelper.getIcon('fas-user', AppIconType.awesome),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  hintText: 'Tài khoản',
                  isRequired: true,
                  borderWidth: 0.2,
                  textColor: Theme.of(context).colorScheme.primary,
                  backgroundColor: Colors.transparent,
                  errorColor: Theme.of(context).colorScheme.onBackground,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        width: 1, color: Theme.of(context).colorScheme.primary),
                  ),
                  focusBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        width: 1, color: Theme.of(context).colorScheme.primary),
                  ),
                  enableBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        width: 1, color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: CustomTextField(
                  controller: controller.passwordController,
                  labelInput: 'Password',
                  isShowLable: false,
                  prefixIcon: Icon(
                    AppIconHelper.getIcon('fas-lock', AppIconType.awesome),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  obscureText: true,
                  hintText: 'Mật khẩu',
                  isRequired: true,
                  borderWidth: 0.2,
                  textColor: Theme.of(context).colorScheme.primary,
                  iconColor: Theme.of(context).colorScheme.primary,
                  backgroundColor: Colors.transparent,
                  errorColor: Theme.of(context).colorScheme.onBackground,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        width: 1, color: Theme.of(context).colorScheme.primary),
                  ),
                  focusBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        width: 1, color: Theme.of(context).colorScheme.primary),
                  ),
                  enableBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        width: 1, color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              Container(
                width: 350,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox.shrink(),
                      Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => {},
                            hoverColor:
                                Theme.of(context).colorScheme.onBackground,
                            child: Text(
                              'Quên mật khẩu ?',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontFamily: AppFonts.medium,
                                      fontWeight: FontWeight.normal),
                            ),
                          ))
                    ]),
              ),
              const SizedBox(
                height: 8,
              ),

              Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Theme.of(context).colorScheme.primary),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => controller.onLogin(),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      hoverColor:
                          Theme.of(context).colorScheme.onSecondaryContainer,
                      focusColor:
                          Theme.of(context).colorScheme.onSecondaryContainer,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 9, left: 21, right: 21),
                          child: Center(
                              child: Text(
                            'Đăng nhập',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontFamily: AppFonts.medium,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                          ))),
                    )),
              ),
            ],
          ),
        ));
  }
}
