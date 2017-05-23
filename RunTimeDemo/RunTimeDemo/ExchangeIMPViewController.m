//
//  ExchangeIMPViewController.m
//  RunTimeDemo
//
//  Created by GrayLeo on 17/3/4.
//  Copyright © 2017年 HT-SOFT. All rights reserved.
//

#import "ExchangeIMPViewController.h"
#include <objc/runtime.h>

@interface ExchangeIMPViewController ()

@end

@implementation ExchangeIMPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)exchangeIMP:(id)sender {
    Method m1 = class_getInstanceMethod(self.class, @selector(button1Action:));
    Method m2 = class_getInstanceMethod(self.class, @selector(button2Action:));
    method_exchangeImplementations(m1, m2);
}

- (IBAction)button1Action:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"你点击了button1" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)button2Action:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"你点击了button2" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
