import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kusala/src/core/resources/icons/app_icons.dart';

import '../../../../../configs/routes/routes.dart';
import '../../../../../configs/themes/color_palette.dart';
import '../../../../../core/strings/app_strings.dart';
import '../../../../../core/utils/app_values.dart';
import '../widgets/login_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BounceInUp(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: AppValues.s34,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontFamily,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontSize,
                            ),
                            text: AppStrings.wellcomeTo,
                          ),
                          TextSpan(
                            style: TextStyle(
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontFamily,
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                            text: AppStrings.kusala,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontFamily,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontSize,
                            ),
                            text: AppStrings.signInTokeepOn,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s16,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            text: AppStrings.dontHaveACount,
                          ),
                          TextSpan(
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .fontFamily,
                              fontWeight: FontWeight.bold,
                            ),
                            text: AppStrings.register,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s30,
                  ),
                  FormBuilder(
                    child: Column(
                      children: [
                        LoginFormWidget(
                          hintText: AppStrings.email,
                          name: "email",
                          controller: emailController,
                          icon: AppIcons.at,
                        ),
                        const SizedBox(
                          height: AppValues.s14,
                        ),
                        LoginFormWidget(
                          hintText: AppStrings.password,
                          name: "password",
                          controller: passwordController,
                          icon: AppIcons.lock,
                        ),
                        const SizedBox(
                          height: AppValues.s14,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(AppStrings.forgotYourPassword),
                          ],
                        ),
                        const SizedBox(
                          height: AppValues.s22,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.kuslaRoute);
                          },
                          child: const Text(AppStrings.login),
                        ),
                        const SizedBox(
                          height: AppValues.s22,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: AppValues.s3,
                                decoration: BoxDecoration(
                                  color: AppColors.strokeColor,
                                  borderRadius:
                                      BorderRadius.circular(AppValues.s50),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: AppValues.s22,
                            ),
                            const Text(AppStrings.or),
                            const SizedBox(
                              width: AppValues.s22,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: AppValues.s3,
                                decoration: BoxDecoration(
                                  color: AppColors.strokeColor,
                                  borderRadius:
                                      BorderRadius.circular(AppValues.s50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppValues.s22,
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: AppColors.apple,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       SvgPicture.asset(
                        //         AppIcons.apple,
                        //         color: AppColors.whiteColor,
                        //       ),
                        //       const SizedBox(
                        //         width: AppValues.s14,
                        //       ),
                        //       const Text(AppStrings.keepOnWithApple),
                        //     ],
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: AppValues.s14,
                        // ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                AppColors.google),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s50),
                                side: const BorderSide(
                                  color: AppColors.strokeColor,
                                  width: AppValues.s1_5,
                                ),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.google,
                                width: AppValues.s22,
                              ),
                              const SizedBox(
                                width: AppValues.s14,
                              ),
                              const Text(
                                AppStrings.keepOnWithGoogle,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   height: AppValues.s14,
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: AppColors.facebook,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       SvgPicture.asset(
                        //         AppIcons.facebook,
                        //         color: AppColors.whiteColor,
                        //       ),
                        //       const SizedBox(
                        //         width: AppValues.s14,
                        //       ),
                        //       const Text(AppStrings.keepOnWithFacebook),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
