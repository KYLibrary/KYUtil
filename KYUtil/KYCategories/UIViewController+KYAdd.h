//
//  UIViewController+KYAdd.h
//  AFNetworking
//
//  Created by kyleboy on 2020/5/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (KYAdd)

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content;

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content
            confirmhandler:(void (^ __nullable)(UIAlertAction *action))confirmhandler;

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content
           confirmBtnTitle:(nullable NSString *)confirmBtnTitle
            confirmhandler:(void (^ __nullable)(UIAlertAction *action))confirmhandler;

/// 系统alert弹框
/// @param title 标题
/// @param content 内容
/// @param confirmBtnTitle 确认按钮
/// @param confirmhandler 确认事件回调
/// @param cancelBtnTitle 取消
/// @param cancelhandler 取消事件回调
- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content
           confirmBtnTitle:(nullable NSString *)confirmBtnTitle
            confirmhandler:(void (^ __nullable)(UIAlertAction *action))confirmhandler
            cancelBtnTitle:(nullable NSString *)cancelBtnTitle
             cancelhandler:(void (^ __nullable)(UIAlertAction *action))cancelhandler;
@end

NS_ASSUME_NONNULL_END
