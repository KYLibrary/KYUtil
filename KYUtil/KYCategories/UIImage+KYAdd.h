//
//  UIImage+KYAdd.h
//  Expecta
//
//  Created by kyleboy on 2020/4/1.
//



NS_ASSUME_NONNULL_BEGIN

@interface UIImage (KYAdd)

+ (UIImage *)imageNamed:(NSString *)name inBundleForClass:(Class)inBundleForClass;
+ (UIImage *)imageNamed:(NSString *)name bundleName:(NSString *)bundleName inBundleForClass:(Class)inBundleForClass;
+ (UIImage *)imageForFileName:(NSString *)fileName inBundleForClass:(Class)inBundleForClass;
+ (UIImage *)imageForFileNameileName:(NSString *)fileName inBundle:(NSBundle *)bundle;

@end

NS_ASSUME_NONNULL_END
