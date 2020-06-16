import 'package:jwellflutter/other/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return RYSizeFit.setPx(this);
  }

  double get rpx {
    return RYSizeFit.setRpx(this);
  }
}
