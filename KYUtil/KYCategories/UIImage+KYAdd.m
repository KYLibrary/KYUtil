//
//  UIImage+KYAdd.m
//  Expecta
//
//  Created by kyleboy on 2020/4/1.
//

#import "UIImage+KYAdd.h"
#import "KYPathUtil.h"

@implementation UIImage (KYAdd)

+ (UIImage *)imageNamed:(NSString *)name inBundleForClass:(Class)inBundleForClass {
    NSBundle* bundle = [NSBundle bundleForClass:inBundleForClass];
    NSString *bundleName = [bundle.bundlePath.lastPathComponent stringByReplacingOccurrencesOfString:bundle.bundlePath.pathExtension withString:@"bundle"];
    NSString *nameX = [NSString stringWithFormat:@"%@@%.0fx",name, [UIScreen mainScreen].scale];
    NSString *fileName = [NSString stringWithFormat:@"%@/%@.png", bundleName, nameX];
    return [self imageForFileName:fileName inBundleForClass:inBundleForClass];
}

+ (UIImage *)imageNamed:(NSString *)name bundleName:(NSString *)bundleName inBundleForClass:(Class)inBundleForClass {
    NSString *nameX = [NSString stringWithFormat:@"%@@%.0fx",name, [UIScreen mainScreen].scale];
    NSString *fileName = [NSString stringWithFormat:@"%@/%@.png", bundleName, nameX];
    return [self imageForFileName:fileName inBundleForClass:inBundleForClass];
}


+ (UIImage *)imageForFileName:(NSString *)fileName inBundleForClass:(Class)inBundleForClass {
    NSString *filePath = KYPathForFile(fileName, inBundleForClass);
    return [UIImage imageWithContentsOfFile:filePath];
}

+ (UIImage *)imageForFileNameileName:(NSString *)fileName inBundle:(NSBundle *)bundle {
    NSString *filePath = KYPathForFileInBundle(fileName, bundle);
    return [UIImage imageWithContentsOfFile:filePath];
}

@end
