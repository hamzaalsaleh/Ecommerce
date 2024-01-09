import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/imageurl.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingView extends StatelessWidget {
  final StatuseRequest statuseRequest;
  final Widget widget;
  const HandlingView(
      {super.key, required this.statuseRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statuseRequest == StatuseRequest.loading
        ? Center(
            child: Lottie.asset(Assetimage.loading, width: 250, height: 250))
        : statuseRequest == StatuseRequest.serverfaild
            ? Center(
                child: Lottie.asset(Assetimage.server, width: 250, height: 250))
            : statuseRequest == StatuseRequest.offline
                ? Center(
                    child: Lottie.asset(Assetimage.offline,
                        width: 250, height: 250))
                : statuseRequest == StatuseRequest.failure
                    ? Center(
                        child: Lottie.asset(Assetimage.nodata,
                            width: 250, height: 250))
                    : widget;
  }
}

class HandlingRequest extends StatelessWidget {
  final StatuseRequest statuseRequest;
  final Widget widget;
  const HandlingRequest(
      {super.key, required this.statuseRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statuseRequest == StatuseRequest.loading
        ? Center(
            child: Lottie.asset(Assetimage.loading, width: 250, height: 250))
        : statuseRequest == StatuseRequest.serverfaild
            ? Center(
                child: Lottie.asset(Assetimage.server, width: 250, height: 250))
            : statuseRequest == StatuseRequest.offline
                ? Center(
                    child: Lottie.asset(Assetimage.offline,
                        width: 250, height: 250))
                : widget;
  }
}
