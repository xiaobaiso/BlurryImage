# BlurryImage
初始化并设置蒙版的颜色

    -(ANBlurredImageView *)initWithBlurAmount:(CGFloat)amount withTintColor:(UIColor *)color;
默认的模糊化设置

    -(void)blurredImageViewDefault;
默认的清晰化的设置

    -(void)blurredImageViewOutConfigDefault;
带配置的模糊化配置

    -(void)blurredImageViewInConfigWithBlurAmount:(NSInteger)blurAmount showTime:(CGFloat)time;

清除模糊化过程中带来的动画渐变图片

    -(void)blurredImageFinishAnimation;
不产生渐变过程，直接生产模糊后的图片

    -(UIImage *)blurredLastestImage;


示例图片：

![image](http://7xr0og.com1.z0.glb.clouddn.com/ios%E6%A8%A1%E7%B3%8A%E5%8C%96.gif)
