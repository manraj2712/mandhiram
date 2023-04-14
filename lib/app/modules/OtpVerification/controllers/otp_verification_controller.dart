import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  void verifyOTP(String otp) async {
    // istDialogButtonLoading(true);
    // try {
    //   log(verrifyID);
    //   var credential = PhoneAuthProvider.credential(
    //     verificationId: verrifyID,
    //     smsCode: otp,
    //   );
    //   await phoneAuth.signInWithCredential(credential).then((value) {
    //     if (value.user != null) {
    //       istDialogButtonLoading(false);
    //       Navigator.of(Get.overlayContext!).pop();
    //       getBox.write(USER_NUMBER, "+$countryCode${phoneController.text}");
    //       getBox.write(USER_LOGGEDIN_WITH_NUMBER, true);
    //       getBox.write(IS_USER_LOGGED_IN, true);
    //       SHOW_SNACKBAR(message: "Number is verified");
    //       Get.offAll(const PersonalInfoView());
    //     } else {
    //       SHOW_SNACKBAR(message: "Login failed");
    //     }
    //   });
    // } on FirebaseException catch (e) {
    //   istDialogButtonLoading(false);
    //   SHOW_SNACKBAR(message: e.message, isSuccess: false);
    // }
  }

    
}
