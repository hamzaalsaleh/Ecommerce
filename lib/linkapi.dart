class Applink {
  static const String server = "https://hamzaalsaleh.com/ecommerce";
  static const String imagestatic = "https://hamzaalsaleh.com/ecommerce/upload";
  static const String imagecategories = "$imagestatic/categories";
  static const String imageitems = "$imagestatic/items";

  static const String testlink = "$server/test.php";
  static const String signupdata = "$server/auth/signup.php";
  static const String logindata = "$server/auth/login.php";
  static const String resend = "$server/auth/resend.php";

  static const String verifycodesignup = "$server/auth/verifycode.php";

// ForgetPassword
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifypassword.php";
  static const String resetpasswordforget =
      "$server/forgetpassword/resetpassword.php";
//Home
  static const String homepage = "$server/home.php";
// items
  static const String items = "$server/items/items.php";
  static const String search = "$server/items/search.php";
// Favorite
  static const String addfavorite = "$server/favorite/add.php";
  static const String removefavorite = "$server/favorite/remove.php";
  static const String viewfavorite = "$server/favorite/view.php";
  static const String deletefromfav = "$server/favorite/deletefromfav.php";
// cart
  static const String cartview = "$server/cart/view.php";
  static const String addcart = "$server/cart/add.php";
  static const String deletecart = "$server/cart/delete.php";
  static const String getitemscount = "$server/cart/getcountitems.php";
}
