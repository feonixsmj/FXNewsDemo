//
//  FXMainVCL.m
//  FXNewsDemo
//
//  Created by 苏敏杰 on 2017/10/25.
//  Copyright © 2017年 苏敏杰. All rights reserved.
//

#import "FXMainVCL.h"

@interface FXMainVCL ()

@end

@implementation FXMainVCL

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1Clicked:(id)sender {
    NSLog(@"button1");
}
- (IBAction)button2Clicked:(id)sender {
    NSLog(@"button2");
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
