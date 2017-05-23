//
//  AssociatedViewController.m
//  RunTimeDemo
//
//  Created by GrayLeo on 17/3/4.
//  Copyright © 2017年 HT-SOFT. All rights reserved.
//

#import "AssociatedViewController.h"
#import "UIView+Associated.h"

@interface AssociatedViewController ()
@property (weak, nonatomic) IBOutlet UIView *v;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation AssociatedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    int num = arc4random()%100;
    self.v.name = [NSString stringWithFormat:@"view%d", num];
    self.label.text = [NSString stringWithFormat:@"我是UIView的实例，但我有name属性，我的name是%@。（快去看看我的代码吧）", self.v.name];
}


@end
