class EndPoint {
  static String baseUrl =
      "https://graduation-project-2q7g.onrender.com/api/v1/";
  static String signIn = "auth/login";
  static String signUp = "auth/signup";
  static String sendCode = "auth/sendcode";
  static String forgotPassword = "auth/forgotPassword";
  static String verifyCode = "auth/verifyemail";
  static String getUserIdUploadimage(id) {
    return "user/uploadimage/$id";
  }

  static String getUserData(id) {
    return "user/$id";
  }

  static String getMbodyId(id) {
    return "user/$id/mbody";
  }

  static String changePassword(id) {
    return "user/changePassword/$id";
  }

  static String payment(id) {
    return "user/payment/$id";
  }
}

class ApiKey {
  static String index = "index";
  static String plane = "plane";
  static String ispayment = "ispayment";
  static String mBodyId = "mBodyId";
  static String error = "errors";
  static String age = "age";
  static String height = "height";
  static String gender = "gender";
  static String weight = "weight";
  static String name = "name";
  static String email = "email";
  static String password = "password";
  static String confirmPassword = "passwordConfirm";
  static String status = "status";
  static String errorMessage = "msg";
  static String token = "token";
  static String message = "message";
  static String userId = "userId";
  static String phone = "phone";
  static String location = "location";
  static String profilePic = "profileImage";
}
