import 'package:ecommerce/core/classes/statuserequest.dart';

handling(response) {
  if (response is StatuseRequest) {
    return response;
  } else {
    return StatuseRequest.success;
  }
}
