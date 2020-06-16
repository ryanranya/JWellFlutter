
import 'dart:ui';

class RYSizeFit{

  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr;
  static double statusHeight;

  static double rpx;

  static double px;

  static void initialize(){

//    1、获取手机的物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
  print("分辨率：$physicalWidth * $physicalHeight");

//  2、获取dpr
   dpr = window.devicePixelRatio;

//  3、宽度和高度
   screenWidth = physicalWidth / dpr;
   screenHeight = physicalHeight / dpr;
  print("宽度和高度:$screenWidth * $screenHeight");

//  4、状态栏的高度
   statusHeight = window.padding.top / dpr;
  print("状态栏的高度:$statusHeight");

//  5、计算rpx
  rpx = screenWidth / 750;

  px = screenWidth / 750 * 2;

  }

  static double setRpx(double size){
    return rpx * size;
  }

  static double setPx(double size){
    return px * size;
  }

}


