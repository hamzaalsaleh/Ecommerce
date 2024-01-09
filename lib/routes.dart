import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/middleware/mymiddleware.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screen/address/addresspage.dart';
import 'package:ecommerce/view/screen/auth/homescreen.dart';
import 'package:ecommerce/view/screen/auth/language.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/mybording.dart';
import 'package:ecommerce/view/screen/auth/sucssessignup.dart';
import 'package:ecommerce/view/screen/auth/verifysignup.dart';
import 'package:ecommerce/view/screen/cart.dart';
import 'package:ecommerce/view/screen/forgetpassword/forgetpassword.dart';
import 'package:ecommerce/view/screen/forgetpassword/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/forgetpassword/sucssesreset.dart';
import 'package:ecommerce/view/screen/forgetpassword/verfiypassword.dart';
import 'package:ecommerce/view/screen/items.dart';
import 'package:ecommerce/view/screen/myfavorite.dart';
import 'package:ecommerce/view/screen/productsdetales.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [Mymiddleware()]),
  GetPage(name: Approute.cart, page: () => const Cart()),
  // GetPage(
  //   name: "/",
  //   page: () => const Testview(),
  // ),
  GetPage(
    name: Approute.productdetales,
    page: () => const ProductsDetales(),
  ),
  GetPage(
    name: Approute.homepage,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: Approute.login,
    page: () => const Login(),
  ),
  GetPage(
    name: Approute.mybording,
    page: () => const Mybording(),
  ),
  GetPage(
    name: Approute.signup,
    page: () => const SignUP(),
  ),
  GetPage(
    name: Approute.forgetpassword,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: Approute.verfiyPassword,
    page: () => const VerfiyPassword(),
  ),
  GetPage(
    name: Approute.resetpassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: Approute.sucssesreset,
    page: () => const SucssesReset(),
  ),
  GetPage(
    name: Approute.sucssessignup,
    page: () => const SuccessSignup(),
  ),
  GetPage(
    name: Approute.verifysignup,
    page: () => const VerfiySignup(),
  ),
  GetPage(
    name: Approute.itemsscreen,
    page: () => const ItemsScreen(),
  ),
  GetPage(
    name: Approute.myfavorite,
    page: () => const Myfavorite(),
  ),
  GetPage(
    name: Approute.addressview,
    page: () => const AddressView(),
  ),
];
