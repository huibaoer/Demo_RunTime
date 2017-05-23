//
//  RootViewController.m
//  RunTimeDemo
//
//  Created by GrayLeo on 17/3/4.
//  Copyright © 2017年 HT-SOFT. All rights reserved.
//

#import "RootViewController.h"
#import "ExchangeIMPViewController.h"
#import "AssociatedViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"RunTimeDemo";
}


- (IBAction)changeIMPAction:(id)sender {
    ExchangeIMPViewController *vc = [[ExchangeIMPViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)categoryAddIvar:(id)sender {
    AssociatedViewController *vc = [[AssociatedViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)getClassAllIvar:(id)sender {
}

@end
