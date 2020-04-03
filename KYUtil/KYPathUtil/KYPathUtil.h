//
//  KYPathUtil.h
//  Expecta
//
//  Created by kyleboy on 2020/4/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *  Useful function to build a path given a file name and a class.
 *
 *  @param fileName The name of the file to get the path to, including file extension
 *  @param inBundleForClass The class of the caller, used to determine the current bundle
 *                          in which the file is supposed to be located.
 *                          You should typically pass `self.class` (ObjC) or
 *                          `self.dynamicType` (Swift < 3.0) or `type(of: self)` (Swift >= 3.0) when calling this function.
 *
 *  @return The path of the given file in the same bundle as the inBundleForClass class
 */
NSString* __nullable KYPathForFile(NSString* fileName, Class inBundleForClass);

/**
 *  Useful function to build a path given a file name and a bundle.
 *
 *  @param fileName The name of the file to get the path to, including file extension
 *  @param bundle The bundle in which the file is supposed to be located.
 *                This parameter can't be null.
 *
 *  @return The path of the given file in given bundle
 *
 *  @note You should avoid using `[NSBundle mainBundle]` for the `bundle` parameter,
 *        as in the context of Unit Tests, this points to the Simulator's bundle,
 *        not the bundle of the app under test. That's why `nil` is not an acceptable
 *        value (so you won't expect it to default to the `mainBundle`).
 *        You should use `[NSBundle bundleForClass:]` instead.
 */
NSString* __nullable KYPathForFileInBundle(NSString* fileName, NSBundle* bundle);

/**
 *  Useful function to build a path to a file in the Documents's directory in the
 *  app sandbox, used by iTunes File Sharing for example.
 *
 *  @param fileName The name of the file to get the path to, including file extension
 *
 *  @return The path of the file in the Documents directory in your App Sandbox
 */
NSString* __nullable KYPathForFileInDocumentsDir(NSString* fileName);



/**
 *  Useful function to build an NSBundle located in the application's resources simply from its name
 *
 *  @param bundleBasename The base name, without extension (extension is assumed to be ".bundle").
 *  @param inBundleForClass The class of the caller, used to determine the current bundle
 *                          in which the file is supposed to be located.
 *                          You should typically pass `self.class` (ObjC) or
 *                          `self.dynamicType` (Swift) when calling this function.
 *
 *  @return The NSBundle object representing the bundle with the given basename located in your application's resources.
 */
NSBundle* __nullable KYResourceBundle(NSString* bundleBasename, Class inBundleForClass);

NS_ASSUME_NONNULL_END
