
# Création des fichiers dans home_three_screen
touch \
lib/presentation/home_three_screen/home_three_model.dart \
lib/presentation/home_three_screen/provider/home_three_provider.dart \
lib/presentation/home_three_screen/home_three_screen.dart

# Création des fichiers dans home_two_screen
touch \
lib/presentation/home_two_screen/models/sliderlike_one_item_model.dart

# Création des fichiers dans iphone_13_pro_max_seven_screen
touch \
lib/presentation/iphone_13_pro_max_seven_screen/models/iphone_13_pro_max_seven_model.dart \
lib/presentation/iphone_13_pro_max_seven_screen/provider/iphone_13_pro_max_seven_provider.dart \
lib/presentation/iphone_13_pro_max_seven_screen/iphone_13_pro_max_seven_screen.dart

# Création des fichiers dans iphone_13_pro_max_two_screen
touch \
lib/presentation/iphone_13_pro_max_two_screen/models/iphone_13_pro_max_two_model.dart \
lib/presentation/iphone_13_pro_max_two_screen/provider/iphone_13_pro_max_two_provider.dart \
lib/presentation/iphone_13_pro_max_two_screen/iphone_13_pro_max_two_screen.dart

# Création des fichiers dans landing_one_bottomsheet
touch \
lib/presentation/landing_one_bottomsheet/models/landing_one_model.dart \
lib/presentation/landing_one_bottomsheet/provider/landing_one_provider.dart \
lib/presentation/landing_one_bottomsheet/landing_one_bottomsheet.dart

# Création des fichiers dans landing_three_bottomsheet
touch \
lib/presentation/landing_three_bottomsheet/models/landing_three_model.dart \
lib/presentation/landing_three_bottomsheet/provider/landing_three_provider.dart \
lib/presentation/landing_three_bottomsheet/landing_three_bottomsheet.dart

# Création des fichiers dans landing_two_bottomsheet
touch \
lib/presentation/landing_two_bottomsheet/models/landing_two_model.dart \
lib/presentation/landing_two_bottomsheet/provider/landing_two_provider.dart \
lib/presentation/landing_two_bottomsheet/landing_two_bottomsheet.dart

# Création des fichiers dans log_in_one_screen
touch \
lib/presentation/log_in_one_screen/models/log_in_one_model.dart \
lib/presentation/log_in_one_screen/provider/log_in_one_provider.dart \
lib/presentation/log_in_one_screen/log_in_one_screen.dart

# Création des fichiers dans log_in_two_screen
touch \
lib/presentation/log_in_two_screen/models/log_in_two_model.dart \
lib/presentation/log_in_two_screen/provider/log_in_two_provider.dart \
lib/presentation/log_in_two_screen/log_in_two_screen.dart

# Création des fichiers dans messaging_eight_dialog
touch \
lib/presentation/messaging_eight_dialog/models/messaging_eight_model.dart \
lib/presentation/messaging_eight_dialog/provider/messaging_eight_provider.dart \
lib/presentation/messaging_eight_dialog/messaging_eight_dialog.dart

# Création des fichiers pour messaging_eleven_screen et autres similaires
for screen in \
    messaging_eleven \
    messaging_fifteen \
    messaging_five \
    messaging_four \
    messaging_fourteen \
    messaging_seven \
    messaging_seventeen \
    messaging_six \
    messaging_sixteen \
    messaging_thirteen \
    messaging_three \
    messaging_twelve \
    messaging_two; do
  touch \
    lib/presentation/${screen}_screen/models/${screen}_model.dart \
    lib/presentation/${screen}_screen/provider/${screen}_provider.dart \
    lib/presentation/${screen}_screen/${screen}_screen.dart
done

# Création des fichiers pour messaging_nine_dialog et messaging_ten_dialog
for dialog in messaging_nine messaging_ten; do
  touch \
    lib/presentation/${dialog}_dialog/models/${dialog}_model.dart \
    lib/presentation/${dialog}_dialog/provider/${dialog}_provider.dart \
    lib/presentation/${dialog}_dialog/${dialog}_dialog.dart
done

# Création des fichiers pour messaging_one_screen
touch \
lib/presentation/messaging_one_screen/models/messaging_one_item_model.dart \
lib/presentation/messaging_one_screen/models/messaging_one_model.dart \
lib/presentation/messaging_one_screen/provider/messaging_one_provider.dart \
lib/presentation/messaging_one_screen/widgets/messaging_one_item_widget.dart \
lib/presentation/messaging_one_screen/messaging_one_screen.dart

# Création des fichiers pour nft_mkt_one_screen
touch \
lib/presentation/nft_mkt_one_screen/models/nft_mkt_one_model.dart \
lib/presentation/nft_mkt_one_screen/models/nft_mkt_one_one_item_model.dart \
lib/presentation/nft_mkt_one_screen/provider/nft_mkt_one_provider.dart \
lib/presentation/nft_mkt_one_screen/widgets/nft_mkt_one_one_item_widget.dart \
lib/presentation/nft_mkt_one_screen/nft_mkt_one_screen.dart

# Création des fichiers pour nft_mkt_two_screen
touch \
lib/presentation/nft_mkt_two_screen/models/nft_mkt_two_model.dart \
lib/presentation/nft_mkt_two_screen/provider/nft_mkt_two_provider.dart \
lib/presentation/nft_mkt_two_screen/nft_mkt_two_screen.dart

# Création des fichiers pour sign_up_2_screen et sign_up_one_screen
for screen in sign_up_2 sign_up_one; do
  touch \
    lib/presentation/${screen}_screen/models/${screen}_model.dart \
    lib/presentation/${screen}_screen/provider/${screen}_provider.dart \
    lib/presentation/${screen}_screen/${screen}_screen.dart
done

# Création des fichiers pour start_log_in_screen
touch \
lib/presentation/start_log_in_screen/models/gridtwo_item_model.dart \
lib/presentation/start_log_in_screen/models/start_log_in_model.dart \
lib/presentation/start_log_in_screen/provider/start_log_in_provider.dart \
lib/presentation/start_log_in_screen/widgets/gridtwo_item_widget.dart \
lib/presentation/start_log_in_screen/start_log_in_screen.dart

# Création des fichiers pour start_screen
touch \
lib/presentation/start_screen/models/start_model.dart \
lib/presentation/start_screen/provider/start_provider.dart \
lib/presentation/start_screen/start_screen.dart

# Création des fichiers pour user_details_*_screen et user_details_six_dialog
for details in \
    user_details_2 \
    user_details_five \
    user_details_four \
    user_details_one \
    user_details_three; do
  touch \
    lib/presentation/${details}_screen/models/${details}_model.dart \
    lib/presentation/${details}_screen/provider/${details}_provider.dart \
    lib/presentation/${details}_screen/${details}_screen.dart
done

# Ajout des widgets spécifiques
touch \
lib/presentation/user_details_five_screen/models/gridmarriage_item_model.dart \
lib/presentation/user_details_five_screen/widgets/gridmarriage_item_widget.dart \
lib/presentation/user_details_four_screen/models/user_details_item_model.dart \
lib/presentation/user_details_four_screen/widgets/user_details_item_widget.dart

# Création des fichiers pour user_details_six_dialog
touch \
lib/presentation/user_details_six_dialog/models/user_details_six_model.dart \
lib/presentation/user_details_six_dialog/provider/user_details_six_provider.dart \
lib/presentation/user_details_six_dialog/user_details_six_dialog.dart



# Création des fichiers dans presentation
touch \
lib/presentation/acc_settings_five_bottomsheet/acc_settings_five_bottomsheet.dart \
lib/presentation/acc_settings_five_bottomsheet/models/acc_settings_five_model.dart \
lib/presentation/acc_settings_five_bottomsheet/provider/acc_settings_five_provider.dart \
lib/presentation/acc_settings_four_screen/acc_settings_four_screen.dart \
lib/presentation/acc_settings_four_screen/models/acc_settings_four_model.dart \
lib/presentation/acc_settings_four_screen/provider/acc_settings_four_provider.dart \
lib/presentation/acc_settings_one_screen/acc_settings_one_screen.dart \
lib/presentation/acc_settings_one_screen/models/acc_settings_one_model.dart \
lib/presentation/acc_settings_one_screen/provider/acc_settings_one_provider.dart \
lib/presentation/acc_settings_three_screen/acc_settings_three_screen.dart \
lib/presentation/acc_settings_three_screen/models/acc_settings_three_model.dart \
lib/presentation/acc_settings_three_screen/provider/acc_settings_three_provider.dart \
lib/presentation/acc_settings_two_screen/acc_settings_two_screen.dart \
lib/presentation/acc_settings_two_screen/models/acc_settings_two_model.dart \
lib/presentation/acc_settings_two_screen/provider/acc_settings_two_provider.dart \
lib/presentation/all_matches_one_page/all_matches_one_page.dart \
lib/presentation/all_matches_one_page/models/all_matches_one_model.dart \
lib/presentation/all_matches_one_page/models/listdannytwenty_item_model.dart \
lib/presentation/all_matches_one_page/models/listpetetwentys_item_model.dart \
lib/presentation/all_matches_one_page/provider/all_matches_one_provider.dart \
lib/presentation/all_matches_one_page/widgets/listdannytwenty_item_widget.dart \
lib/presentation/all_matches_one_page/widgets/listpetetwentys_item_widget.dart \
lib/presentation/all_matches_three_screen/all_matches_three_screen.dart \
lib/presentation/all_matches_three_screen/models/all_matches_three_model.dart \
lib/presentation/all_matches_three_screen/provider/all_matches_three_provider.dart \
lib/presentation/all_matches_two_screen/all_matches_two_screen.dart \
lib/presentation/all_matches_two_screen/models/all_matches_two_model.dart \
lib/presentation/all_matches_two_screen/provider/all_matches_two_provider.dart \
lib/presentation/app_navigation_screen/app_navigation_screen.dart \
lib/presentation/app_navigation_screen/models/app_navigation_model.dart \
lib/presentation/app_navigation_screen/provider/app_navigation_provider.dart \
lib/presentation/home_eight_screen/home_eight_screen.dart \
lib/presentation/home_eight_screen/models/home_eight_model.dart \
lib/presentation/home_eight_screen/models/slidericon_one_item_model.dart \
lib/presentation/home_eight_screen/provider/home_eight_provider.dart \
lib/presentation/home_eight_screen/widgets/slidericon_one_item_widget.dart \
lib/presentation/home_five_screen/home_five_screen.dart \
lib/presentation/home_five_screen/models/home_five_model.dart \
lib/presentation/home_five_screen/provider/home_five_provider.dart \
lib/presentation/home_four_screen/home_four_screen.dart \
lib/presentation/home_four_screen/models/home_four_model.dart \
lib/presentation/home_four_screen/provider/home_four_provider.dart \
lib/presentation/home_nine_page/home_nine_page.dart \
lib/presentation/home_nine_page/models/home_nine_model.dart \
lib/presentation/home_nine_page/provider/home_nine_provider.dart \
lib/presentation/home_one_screen/home_one_screen.dart \
lib/presentation/home_one_screen/home_one_initial_page.dart \
lib/presentation/home_one_screen/models/home_one_model.dart \
lib/presentation/home_one_screen/models/home_one_initial_model.dart \
lib/presentation/home_one_screen/models/sliderimfunand_item_model.dart \
lib/presentation/home_one_screen/provider/home_one_provider.dart \
lib/presentation/home_one_screen/widgets/sliderimfunand_item_widget.dart \
lib/presentation/home_seven_screen/home_seven_screen.dart \
lib/presentation/home_seven_screen/models/home_seven_model.dart \
lib/presentation/home_seven_screen/models/sliderlike_one_item_model.dart \
lib/presentation/home_seven_screen/widgets/sliderlike_one_item_widget.dart \
lib/presentation/home_six_screen/home_six_screen.dart \
lib/presentation/home_six_screen/models/home_six_model.dart \
lib/presentation/home_six_screen/provider/home_six_provider.dart \
lib/presentation/home_two_screen/home_two_screen.dart \
lib/presentation/home_two_screen/models/home_two_model.dart \
lib/presentation/home_two_screen/provider/home_two_provider.dart \
lib/presentation/home_two_screen/widgets/sliderlike_one_item_widget.dart

# Création des fichiers dans theme
touch \
lib/theme/provider/theme_provider.dart \
lib/theme/app_decoration.dart \
lib/theme/custom_button_style.dart \
lib/theme/custom_text_style.dart \
lib/theme/theme_helper.dart

# Création des fichiers dans widgets/app_bar
touch \
lib/widgets/app_bar/appbar_leading_iconbutton.dart \
lib/widgets/app_bar/appbar_leading_iconbutton_one.dart \
lib/widgets/app_bar/appbar_subtitle.dart \
lib/widgets/app_bar/appbar_subtitle_one.dart \
lib/widgets/app_bar/appbar_title.dart \
lib/widgets/app_bar/appbar_title_image.dart \
lib/widgets/app_bar/appbar_trailing_iconbutton.dart \
lib/widgets/app_bar/appbar_trailing_iconbutton_one.dart \
lib/widgets/app_bar/custom_app_bar.dart

# Création des fichiers dans widgets généraux
touch \
lib/widgets/base_button.dart \
lib/widgets/custom_bottom_bar.dart \
lib/widgets/custom_checkbox_button.dart \
lib/widgets/custom_drop_down.dart \
lib/widgets/custom_icon_button.dart \
lib/widgets/custom_image_view.dart \
lib/widgets/custom_outlined_button.dart \
lib/widgets/custom_phone_number.dart \
lib/widgets/custom_search_view.dart \
lib/widgets/custom_switch.dart \
lib/widgets/custom_text_form_field.dart
