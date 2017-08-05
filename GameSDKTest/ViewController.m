//
//  ViewController.m
//  GameSDKTest
//
//  Created by twksky on 2017/7/20.
//  Copyright © 2017年 twksky. All rights reserved.
//

#import "ViewController.h"
#import "SDKViewController.h"

#define Weakself __weak typeof(self) weakself = self;

@interface ViewController ()<YingQiLoginDelegate>

@end

@implementation ViewController

#pragma mark  ================== lazy load ==================


#pragma mark  ================== life cycle ==================

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    SDKViewController *sdkVC = [[SDKViewController alloc] init];
    sdkVC.delegate = self;
    [sdkVC showInCustomVC:self];
}


-(void)YingQiLogin_Successed:(NSDictionary *)successDic {
    
    
}


- (void)YingQiLogin_Failed:(NSDictionary *)failDic {
    
    
}


@end
