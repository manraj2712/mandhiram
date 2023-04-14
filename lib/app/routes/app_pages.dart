import 'package:get/get.dart';

import '../modules/Bookmark/bindings/bookmark_binding.dart';
import '../modules/Bookmark/views/bookmark_view.dart';
import '../modules/BottomTabBar/bindings/bottom_tab_bar_binding.dart';
import '../modules/BottomTabBar/views/bottom_tab_bar_view.dart';
import '../modules/ContactUs/bindings/contact_us_binding.dart';
import '../modules/ContactUs/views/contact_us_view.dart';
import '../modules/DailyInfomation/bindings/daily_infomation_binding.dart';
import '../modules/DailyInfomation/views/daily_infomation_view.dart';
import '../modules/DeleteWishlist/bindings/delete_wishlist_binding.dart';
import '../modules/DeleteWishlist/views/delete_wishlist_view.dart';
import '../modules/DeviTempleDetails/bindings/devi_temple_details_binding.dart';
import '../modules/DeviTempleDetails/views/devi_temple_details_view.dart';
import '../modules/EditYourDetails/bindings/edit_your_details_binding.dart';
import '../modules/EditYourDetails/views/edit_your_details_view.dart';
import '../modules/FullScreenImage/bindings/full_screen_image_binding.dart';
import '../modules/FullScreenImage/views/full_screen_image_view.dart';
import '../modules/GalleryDeviTemple/bindings/gallery_devi_temple_binding.dart';
import '../modules/GalleryDeviTemple/views/gallery_devi_temple_view.dart';
import '../modules/InviteFriends/bindings/invite_friends_binding.dart';
import '../modules/InviteFriends/views/invite_friends_view.dart';
import '../modules/Language/bindings/language_binding.dart';
import '../modules/Language/views/language_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/OtpVerification/bindings/otp_verification_binding.dart';
import '../modules/OtpVerification/views/otp_verification_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/SearchMandhiram/bindings/search_mandhiram_binding.dart';
import '../modules/SearchMandhiram/views/search_mandhiram_view.dart';
import '../modules/SettingScreen/bindings/setting_screen_binding.dart';
import '../modules/SettingScreen/views/setting_screen_view.dart';
import '../modules/Signup/bindings/signup_binding.dart';
import '../modules/Signup/views/signup_view.dart';
import '../modules/Slash/bindings/slash_binding.dart';
import '../modules/Slash/views/slash_view.dart';
import '../modules/Started/bindings/started_binding.dart';
import '../modules/Started/views/started_view.dart';
import '../modules/TermsConditions/bindings/terms_conditions_binding.dart';
import '../modules/TermsConditions/views/terms_conditions_view.dart';
import '../modules/WishListProfile/bindings/wish_list_profile_binding.dart';
import '../modules/WishListProfile/views/wish_list_profile_view.dart';
import '../modules/Wishlist/bindings/wishlist_binding.dart';
import '../modules/Wishlist/views/wishlist_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SLASH,
      page: () => const SlashView(),
      binding: SlashBinding(),
    ),
    GetPage(
      name: _Paths.STARTED,
      page: () => const StartedView(),
      binding: StartedBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION,
      page: () => const OtpVerificationView(),
      binding: OtpVerificationBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.DEVI_TEMPLE_DETAILS,
      page: () => const DeviTempleDetailsView(),
      binding: DeviTempleDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_MANDHIRAM,
      page: () => const SearchMandhiramView(),
      binding: SearchMandhiramBinding(),
    ),
    GetPage(
      name: _Paths.GALLERY_DEVI_TEMPLE,
      page: () => const GalleryDeviTempleView(),
      binding: GalleryDeviTempleBinding(),
    ),
    GetPage(
      name: _Paths.FULL_SCREEN_IMAGE,
      page: () => const FullScreenImageView(),
      binding: FullScreenImageBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.DAILY_INFOMATION,
      page: () => const DailyInfomationView(),
      binding: DailyInfomationBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_TAB_BAR,
      page: () => BottomTabBarView(),
      binding: BottomTabBarBinding(),
    ),
    GetPage(
      name: _Paths.BOOKMARK,
      page: () => const BookmarkView(),
      binding: BookmarkBinding(),
    ),
    GetPage(
      name: _Paths.Wishlist,
      page: () => const WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DELETE_WISHLIST,
      page: () => const DeleteWishlistView(),
      binding: DeleteWishlistBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_YOUR_DETAILS,
      page: () => const EditYourDetailsView(),
      binding: EditYourDetailsBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGE,
      page: () => const LanguageView(),
      binding: LanguageBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_SCREEN,
      page: () => const SettingScreenView(),
      binding: SettingScreenBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_CONDITIONS,
      page: () => const TermsConditionsView(),
      binding: TermsConditionsBinding(),
    ),
    GetPage(
      name: _Paths.INVITE_FRIENDS,
      page: () => const InviteFriendsView(),
      binding: InviteFriendsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => const ContactUsView(),
      binding: ContactUsBinding(),
    ),
    GetPage(
      name: _Paths.WISH_LIST_PROFILE,
      page: () => const WishListProfileView(),
      binding: WishListProfileBinding(),
    ),
  ];
}
