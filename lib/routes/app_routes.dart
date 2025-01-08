import 'package:flutter/material.dart';
import '../presentation/messaging_three_screen/messaging_three_screen.dart';
import '../presentation/acc_settings_four_screen/acc_settings_four_screen.dart';
import '../presentation/acc_settings_one_screen/acc_settings_one_screen.dart';
import '../presentation/acc_settings_three_screen/acc_settings_three_screen.dart';
import '../presentation/acc_settings_two_screen/acc_settings_two_screen.dart';
import '../presentation/all_matches_three_screen/all_matches_three_screen.dart';
import '../presentation/all_matches_two_screen/all_matches_two_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_eight_screen/home_eight_screen.dart';
import '../presentation/home_five_screen/home_five_screen.dart';
import '../presentation/home_four_screen/home_four_screen.dart';
import '../presentation/home_one_screen/home_one_screen.dart';
import '../presentation/home_seven_screen/home_seven_screen.dart';
import '../presentation/home_six_screen/home_six_screen.dart';
import '../presentation/home_three_screen/home_three_screen.dart';
import '../presentation/home_two_screen/home_two_screen.dart';
import '../presentation/iphone_13_pro_max_seven_screen/iphone_13_pro_max_seven_screen.dart';
import '../presentation/iphone_13_pro_max_two_screen/iphone_13_pro_max_two_screen.dart';
import '../presentation/log_in_one_screen/log_in_one_screen.dart';
import '../presentation/log_in_two_screen/log_in_two_screen.dart';
import '../presentation/messaging_eleven_screen/messaging_eleven_screen.dart';
import '../presentation/messaging_fifteen_screen/messaging_fifteen_screen.dart';
import '../presentation/messaging_five_screen/messaging_five_screen.dart';
import '../presentation/messaging_four_screen/messaging_four_screen.dart';
import '../presentation/messaging_fourteen_screen/messaging_fourteen_screen.dart';
import '../presentation/messaging_one_screen/messaging_one_screen.dart';
import '../presentation/messaging_seven_screen/messaging_seven_screen.dart';
import '../presentation/messaging_seventeen_screen/messaging_seventeen_screen.dart';
import '../presentation/messaging_six_screen/messaging_six_screen.dart';
import '../presentation/messaging_sixteen_screen/messaging_sixteen_screen.dart';
import '../presentation/messaging_thirteen_screen/messaging_thirteen_screen.dart';
import '../presentation/messaging_twelve_screen/messaging_twelve_screen.dart';
import '../presentation/messaging_two_screen/messaging_two_screen.dart';
import '../presentation/nft_mkt_one_screen/nft_mkt_one_screen.dart';
import '../presentation/nft_mkt_two_screen/nft_mkt_two_screen.dart';
import '../presentation/sign_up_2_screen/sign_up_2_screen.dart';
import '../presentation/sign_up_one_screen/sign_up_one_screen.dart';
import '../presentation/start_log_in_screen/start_log_in_screen.dart';
import '../presentation/start_screen/start_screen.dart';
import '../presentation/user_details_2_screen/user_details_2_screen.dart';
import '../presentation/user_details_five_screen/user_details_five_screen.dart';
import '../presentation/user_details_four_screen/user_details_four_screen.dart';
import '../presentation/user_details_one_screen/user_details_one_screen.dart';
import '../presentation/user_details_three_screen/user_details_three_screen.dart';

class AppRoutes {
  static const String iphone13ProMaxTwoScreen = '/iphone_13_pro_max_two_screen';
  static const String startScreen = '/start_screen';
  static const String iphone13ProMaxSevenScreen =
      '/iphone_13_pro_max_seven_screen';
  static const String logInOneScreen = '/log_in_one_screen';
  static const String logInTwoScreen = '/log_in_two_screen';
  static const String signUpOneScreen = '/sign_up_one_screen';
  static const String signUp2Screen = '/sign_up_2_screen';
  static const String userDetailsOneScreen = '/user_details_one_screen';
  static const String userDetails2Screen = '/user_details_2_screen';
  static const String userDetailsThreeScreen = '/user_details_three_screen';
  static const String userDetailsFourScreen = '/user_details_four_screen';
  static const String userDetailsFiveScreen = '/user_details_five_screen';
  static const String homeOneScreen = '/home_one_screen';
  static const String homeTwoScreen = '/home_two_screen';
  static const String homeThreeScreen = '/home_three_screen';
  static const String homeFourScreen = '/home_four_screen';
  static const String homeFiveScreen = '/home_five_screen';
  static const String homeSixScreen = '/home_six_screen';
  static const String homeSevenScreen = '/home_seven_screen';
  static const String homeEightScreen = '/home_eight_screen';
  static const String messagingOneScreen = '/messaging_one_screen';
  static const String messagingTwoScreen = '/messaging_two_screen';
  static const String messagingThreeScreen = '/messaging_three_screen';
  static const String messagingFourScreen = '/messaging_four_screen';
  static const String messagingFiveScreen = '/messaging_five_screen';
  static const String messagingSixScreen = '/messaging_six_screen';
  static const String messagingSevenScreen = '/messaging_seven_screen';
  static const String messagingElevenScreen = '/messaging_eleven_screen';
  static const String messagingTwelveScreen = '/messaging_twelve_screen';
  static const String messagingThirteenScreen = '/messaging_thirteen_screen';
  static const String messagingFourteenScreen = '/messaging_fourteen_screen';
  static const String messagingFifteenScreen = '/messaging_fifteen_screen';
  static const String messagingSixteenScreen = '/messaging_sixteen_screen';
  static const String messagingSeventeenScreen = '/messaging_seventeen_screen';
  static const String nftMktOneScreen = '/nft_mkt_one_screen';
  static const String nftMktTwoScreen = '/nft_mkt_two_screen';
  static const String allMatchesTwoScreen = '/all_matches_two_screen';
  static const String allMatchesThreeScreen = '/all_matches_three_screen';
  static const String accSettingsOneScreen = '/acc_settings_one_screen';
  static const String accSettingsTwoScreen = '/acc_settings_two_screen';
  static const String accSettingsThreeScreen = '/acc_settings_three_screen';
  static const String accSettingsFourScreen = '/acc_settings_four_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone13ProMaxTwoScreen: Iphone13ProMaxTwoScreen.builder,
        startScreen: StartScreen.builder,
        iphone13ProMaxSevenScreen: Iphone13ProMaxSevenScreen.builder,
        startLogInScreen: StartLogInScreen.builder,
        logInOneScreen: LogInOneScreen.builder,
        logInTwoScreen: LogInTwoScreen.builder,
        signUpOneScreen: SignUpOneScreen.builder,
        signUp2Screen: SignUp2Screen.builder,
        userDetailsOneScreen: UserDetailsOneScreen.builder,
        userDetails2Screen: UserDetails2Screen.builder,
        userDetailsThreeScreen: UserDetailsThreeScreen.builder,
        userDetailsFourScreen: UserDetailsFourScreen.builder,
        userDetailsFiveScreen: UserDetailsFiveScreen.builder,
        homeOneScreen: HomeOneScreen.builder,
        homeTwoScreen: HomeTwoScreen.builder,
        homeThreeScreen: HomeThreeScreen.builder,
        homeFourScreen: HomeFourScreen.builder,
        homeFiveScreen: HomeFiveScreen.builder,
        homeSixScreen: HomeSixScreen.builder,
        homeSevenScreen: HomeSevenScreen.builder,
        homeEightScreen: HomeEightScreen.builder,
        messagingOneScreen: MessagingOneScreen.builder,
        messagingTwoScreen: MessagingTwoScreen.builder,
        messagingThreeScreen: MessagingThreeScreen.builder,
        messagingFourScreen: MessagingFourScreen.builder,
        messagingFiveScreen: MessagingFiveScreen.builder,
        messagingSixScreen: MessagingSixScreen.builder,
        messagingSevenScreen: MessagingSevenScreen.builder,
        messagingElevenScreen: MessagingElevenScreen.builder,
        messagingTwelveScreen: MessagingTwelveScreen.builder,
        messagingThirteenScreen: MessagingThirteenScreen.builder,
        messagingFourteenScreen: MessagingFourteenScreen.builder,
        messagingFifteenScreen: MessagingFifteenScreen.builder,
        messagingSixteenScreen: MessagingSixteenScreen.builder,
        messagingSeventeenScreen: MessagingSeventeenScreen.builder,
        nftMktOneScreen: NftMktOneScreen.builder,
        nftMktTwoScreen: NftMktTwoScreen.builder,
        allMatchesTwoScreen: AllMatchesTwoScreen.builder,
        allMatchesThreeScreen: AllMatchesThreeScreen.builder,
        accSettingsOneScreen: AccSettingsOneScreen.builder,
        accSettingsTwoScreen: AccSettingsTwoScreen.builder,
        accSettingsThreeScreen: AccSettingsThreeScreen.builder,
        accSettingsFourScreen: AccSettingsFourScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone13ProMaxTwoScreen.builder,
      };
}
