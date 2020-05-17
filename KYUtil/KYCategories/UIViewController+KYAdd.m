//
//  UIViewController+KYAdd.m
//  AFNetworking
//
//  Created by kyleboy on 2020/5/17.
//

#import "UIViewController+KYAdd.h"

@implementation UIViewController (KYAdd)

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content {
    [self showAlertWithTitle:title content:content confirmBtnTitle:@"确认" confirmhandler:nil cancelBtnTitle:nil cancelhandler:nil];
}

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content
            confirmhandler:(void (^ __nullable)(UIAlertAction *action))confirmhandler {
    [self showAlertWithTitle:title content:content confirmBtnTitle:@"确认" confirmhandler:confirmhandler cancelBtnTitle:@"取消" cancelhandler:nil];
}

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content
           confirmBtnTitle:(nullable NSString *)confirmBtnTitle
            confirmhandler:(void (^ __nullable)(UIAlertAction *action))confirmhandler {
    [self showAlertWithTitle:title content:content confirmBtnTitle:confirmBtnTitle confirmhandler:confirmhandler cancelBtnTitle:@"取消" cancelhandler:nil];
}

- (void)showAlertWithTitle:(nullable NSString *)title
                   content:(nullable NSString *)content
           confirmBtnTitle:(nullable NSString *)confirmBtnTitle
            confirmhandler:(void (^ __nullable)(UIAlertAction *action))confirmhandler
            cancelBtnTitle:(nullable NSString *)cancelBtnTitle
             cancelhandler:(void (^ __nullable)(UIAlertAction *action))cancelhandler {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:content
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    if (cancelBtnTitle) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelBtnTitle
                                                               style:UIAlertActionStyleCancel
                                                             handler:cancelhandler];
        [alertController addAction:cancelAction];
    }
    
    if (confirmBtnTitle) {
        UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:confirmBtnTitle
                                                                style:UIAlertActionStyleDefault
                                                              handler:confirmhandler];
        
        [alertController addAction:confirmAction];
    }
    
    [self presentViewController:alertController animated:YES completion:nil];
}
@end
