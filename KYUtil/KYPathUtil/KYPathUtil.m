//
//  KYPathUtil.m
//  Expecta
//
//  Created by kyleboy on 2020/4/1.
//

#import "KYPathUtil.h"

NSString* __nullable KYPathForFile(NSString* fileName, Class inBundleForClass)
{
    NSBundle* bundle = [NSBundle bundleForClass:inBundleForClass];
    return KYPathForFileInBundle(fileName, bundle);
}

NSString* __nullable KYPathForFileInBundle(NSString* fileName, NSBundle* bundle)
{
    return [bundle pathForResource:[fileName stringByDeletingPathExtension]
                            ofType:[fileName pathExtension]];
}

NSString* __nullable KYPathForFileInDocumentsDir(NSString* fileName)
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = (paths.count > 0) ? paths[0] : nil;
    return [basePath stringByAppendingPathComponent:fileName];
}

NSBundle* __nullable KYResourceBundle(NSString* bundleBasename, Class inBundleForClass)
{
    NSBundle* classBundle = [NSBundle bundleForClass:inBundleForClass];
    return [NSBundle bundleWithPath:[classBundle pathForResource:bundleBasename
                                                         ofType:@"bundle"]];
}

