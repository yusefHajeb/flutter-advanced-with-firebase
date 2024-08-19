import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/app_size.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_colors.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/logic/home_state.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/ui/widgets/doctors_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/widgets/animated_in_effect.dart';
import '../../../core/widgets/app_text_button.dart';
import '../logic/home_cubit.dart';
import 'widgets/doctor_speceialization_list_view.dart';

class HomeScreen extends StatelessWidget {
  static const homeScreen = '/homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Row buildHomeTopBar(BuildContext context) {
      return Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Yousef',
                style: context.theme.textTheme.headlineLarge,
              ),
              Text('How are you ? ',
                  style: context.theme.textTheme.headlineMedium),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.lighterGray,
            child: SvgPicture.asset('assets/svgs/notifications.svg'),
          )
        ],
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(
              20.0,
              16.0,
              20.0,
              28.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildHomeTopBar(context),
                AppSize.verticalSize(50),
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  width: double.infinity,
                  height: 180,
                  child: Stack(
                    fit: StackFit.loose,
                    textDirection: TextDirection.ltr,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -40,
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                            fit: BoxFit.fitWidth,
                            // width: 100,
                            // height: 200,
                            'assets/images/doctor_home_screen.jpg'),
                      ),
                      Positioned(
                        top: 5,
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              AnimateInEffect(
                                child: Text(
                                  'Book and ',
                                  style: context.theme.textTheme.headlineLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                              AppSize.verticalSize(3),
                              AnimateInEffect(
                                child: Text('Schedual with',
                                    style: context.theme.textTheme.headlineSmall
                                        ?.copyWith(color: Colors.white)),
                              ),
                              AppSize.verticalSize(3),
                              AnimateInEffect(
                                child: Text('nearset Doctor ',
                                    style: context.theme.textTheme.headlineSmall
                                        ?.copyWith(color: Colors.white)),
                              ),
                              AppSize.verticalSize(10),
                              AppTextButton(
                                buttonText: 'Find hestory',
                                onPressed: () {},
                                verticalPadding: 1,
                                horizontalPadding: 3,
                                backgroundColor: Colors.white,
                                borderRadius: 40,
                                buttonHeight: 50,
                                buttonWidth: 100,
                                textStyle: context.theme.textTheme.headlineSmall
                                    ?.copyWith(
                                        color: AppColors.darkPrimaryColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AppSize.verticalSize(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Doctors Specialty',
                      style: context.theme.textTheme.headlineMedium,
                    ),
                    Text('See All',
                        style: context.theme.textTheme.headlineSmall)
                  ],
                ),
                AppSize.verticalSize(10),
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is SpecializationLoading ||
                      current is SpecializationError ||
                      current is SpecializationSuccess,
                  builder: (context, state) {
                    return state.maybeWhen(specializationLoading: () {
                      return const SizedBox(
                          height: 100,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ));
                    }, specializationError: (error) {
                      return Center(
                        child: Text(ErrorHandler.handle(error.apiErrorModel)
                            .toString()),
                      );
                    }, specializationSuccess: (specializationDataModel) {
                      var specilizationData = specializationDataModel;
                      // print(specilizationData?.first?.doctors);
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpeceializationListView(
                                data:
                                    specilizationData.specializationDataList ??
                                        []),
                            DoctorsListView(
                                doctors: specilizationData
                                        .specializationDataList
                                        ?.first
                                        ?.doctorsList ??
                                    [])
                          ],
                        ),
                      );
                    }, orElse: () {
                      return const Center(
                        child: Text("defult"),
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
