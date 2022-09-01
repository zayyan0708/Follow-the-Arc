import 'package:get/get.dart';
import 'package:thearc/app/modules/settings/views/add_card_view.dart';
import 'package:thearc/app/modules/settings/views/change_password_view.dart';
import 'package:thearc/app/modules/settings/views/faqs_view.dart';
import 'package:thearc/app/modules/settings/views/payment_management_view.dart';
import 'package:thearc/app/modules/settings/views/subscription_view.dart';
import 'package:thearc/app/modules/settings/views/termscondition_view.dart';

import '../modules/currentanalysis/bindings/currentanalysis_binding.dart';
import '../modules/currentanalysis/views/currentanalysis_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/edit_profile_view.dart';
import '../modules/home/views/facialscan_view.dart';
import '../modules/home/views/fitclub_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/scanresult_view.dart';
import '../modules/meals_plan/bindings/meals_plan_binding.dart';
import '../modules/meals_plan/views/meal_detail_view.dart';
import '../modules/meals_plan/views/meals_plan_view.dart';
import '../modules/monthly_report/bindings/monthly_report_binding.dart';
import '../modules/monthly_report/views/monthly_report_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/get_started_view.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/membership_view.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/report_history/bindings/report_history_binding.dart';
import '../modules/report_history/views/report_history_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/forgotpassword_view.dart';
import '../modules/signin/views/resetpassword_view.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signin/views/signinotp_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/accountsetup_view.dart';
import '../modules/signup/views/moreinfo_view.dart';
import '../modules/signup/views/otpverify_view.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/tips/bindings/tips_binding.dart';
import '../modules/tips/views/tips_detail_view.dart';
import '../modules/tips/views/tips_view.dart';

// ignore_for_file: prefer_const_constructors

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.GETSTARTED,
      page: () => GetStartedView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.OTPVERIFY,
      page: () => OtpverifyView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTSETUP,
      page: () => AccountsetupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.MOREINFO,
      page: () => MoreinfoView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => ForgotpasswordView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNINOTP,
      page: () => SigninotpView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.RESETPASSWORD,
      page: () => ResetpasswordView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP,
      page: () => MembershipView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.FACIALSCAN,
      page: () => FacialscanView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FITCLUB,
      page: () => FitclubView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SCANRESULT,
      page: () => ScanresultView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CURRENTANALYSIS,
      page: () => const CurrentanalysisView(),
      binding: CurrentanalysisBinding(),
    ),
    GetPage(
      name: _Paths.MONTHLY_REPORT,
      page: () => const MonthlyReportView(),
      binding: MonthlyReportBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_HISTORY,
      page: () => const ReportHistoryView(),
      binding: ReportHistoryBinding(),
    ),
    GetPage(
      name: _Paths.MEALS_PLAN,
      page: () => const MealsPlanView(),
      binding: MealsPlanBinding(),
    ),
    GetPage(
      name: _Paths.MEAL_DETAIL,
      page: () => MealDetailView(),
      binding: MealsPlanBinding(),
    ),
    GetPage(
      name: _Paths.TIPS,
      page: () => TipsView(),
      binding: TipsBinding(),
    ),
    GetPage(
      name: _Paths.TIPS_DETAIL,
      page: () => TipsDetailView(),
      binding: TipsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_MANAGEMENT,
      page: () => PaymentManagementView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.TERMSCONDITION,
      page: () => TermsconditionView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.FAQS,
      page: () => FaqsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTION,
      page: () => SubscriptionView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CARD,
      page: () => AddCardView(),
      binding: SettingsBinding(),
    ),
  ];
}
