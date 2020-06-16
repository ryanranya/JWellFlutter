import 'package:jwellflutter/other/size_fit.dart';

extension IntFit on int {
  double get px {
    return RYSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return RYSizeFit.setRpx(this.toDouble());
  }
}