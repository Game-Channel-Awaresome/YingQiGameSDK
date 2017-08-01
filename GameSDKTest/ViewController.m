//
//  ViewController.m
//  GameSDKTest
//
//  Created by twksky on 2017/7/20.
//  Copyright © 2017年 twksky. All rights reserved.
//

#import "ViewController.h"
#import "YingQiSDK.h"
#import "LMJDropdownMenu.h"
#import "CustomTF.h"
#import "CustomTF_2.h"

#define Weakself __weak typeof(self) weakself = self;

@interface ViewController ()<LMJDropdownMenuDelegate>

@property (weak, nonatomic) IBOutlet UIView *YingQiBaseView;

@property (nonatomic, strong) UIView *YingQiView1;

@property (nonatomic, strong) UIView *YingQiView2;

@property (nonatomic, strong) UIView *YingQiView3;

@property (nonatomic, strong) UIView *YingQiView4;

@property (nonatomic, strong) UIView *YingQiView5;

@property (nonatomic, strong) UIView *YingQiView6;

@property (nonatomic, strong) UIView *YingQiView7;

@property (nonatomic, strong) UIView *YingQiView8;

@property (nonatomic, strong) UIView *YingQiView9;

@property (nonatomic, strong) UIView *YingQiView10;

@property (nonatomic, strong) UIView *YingQiView12;

@property (strong, nonatomic) IBOutlet CustomTF *tf_3_1;

@property (strong, nonatomic) IBOutlet CustomTF_2 *tf_4_1;

@property (strong, nonatomic) IBOutlet CustomTF *tf_4_2;

@property (strong, nonatomic) IBOutlet CustomTF *tf_5_1;

@property (strong, nonatomic) IBOutlet CustomTF *tf_5_2;

@property (strong, nonatomic) IBOutlet CustomTF *tf_6_1;

@property (strong, nonatomic) IBOutlet CustomTF *tf_10_1;

@property (strong, nonatomic) IBOutlet CustomTF_2 *tf_12_1;



/**
 *  下拉数组
 */
@property (nonatomic, strong) NSArray *downDropArr;

/**
 *  全局唯一成功回调数据
 */
@property (nonatomic, strong) NSDictionary *successDict;

@end

@implementation ViewController

#pragma mark  ================== lazy load ==================

- (NSDictionary *)successDict {
	if (_successDict == nil) {
        _successDict = [[NSDictionary alloc] init];
	}
	return _successDict;
}

- (NSArray *)downDropArr {
    
    if (_downDropArr == nil) {
        _downDropArr = [[NSArray alloc] init];
        _downDropArr = @[@"选项一",@"选项二",@"选项三",@"选项四"];
        
        // 本地化储存取值 todo
        
    }
    return _downDropArr;
}

#pragma mark  ================== life cycle ==================

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self onePic];//第一个图的UI
//    [self twoPic];//第二个图的UI
    
    
//    [YingQiSDK YingQiSDKRequst_loginWithNumberStr:@"wangyang1511" withPwd:@"123456" withLoginKey:@"fe57acddce774658b241b4b937fa4747" sB:^(NSDictionary *dic) {
//       
//        NSLog(@"成功");
//    } fB:^(NSDictionary *dic) {
//        NSLog(@"失败");
//    }];
    
//    [YingQiSDK YingQiSDKRequst_tempWithsB:^(NSDictionary *dic) {
//         NSLog(@"成功");
//    } fB:^(NSDictionary *dic) {
//         NSLog(@"失败");
//    }];
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

#pragma mark 第一个图的UI
-(void)onePic{
    
    [self.YingQiBaseView addSubview:self.YingQiView1];
}

/**
 *  添加下拉菜单
 */
- (void)addDropMenu {
    
    LMJDropdownMenu * dropdownMenu = [[LMJDropdownMenu alloc] init];
    [dropdownMenu setFrame:CGRectMake(360, 33, 30, 30)];
    
    [dropdownMenu setMenuTitles:self.downDropArr rowHeight:30];
    dropdownMenu.delegate = self;
    [self.YingQiView6 addSubview:dropdownMenu];
}

#pragma mark 第一个图的Action
/**
 游客模式登录
 */
- (IBAction)youkeLogin:(id)sender {
    
    Weakself
    
    self.YingQiView2.hidden = NO;
    self.YingQiView1.hidden = YES;
    
    [YingQiSDK YingQiSDKRequst_tempWithsB:^(NSDictionary *dic) {
        NSLog(@"%@",dic);
//        if ([self.delegate respondsToSelector:@selector(YingQiLogin_Successed:)]) {
//            [self.delegate YingQiLogin_Successed:dic];
//        }
        weakself.successDict = dic;
        
    } fB:^(NSDictionary *dic) {
        if ([self.delegate respondsToSelector:@selector(YingQiLogin_Failed:)]) {
            [self.delegate YingQiLogin_Failed:dic];
        }
    }];
    
}
/**
 手机注册
 */
- (IBAction)phoneRegister:(id)sender {
    
    self.YingQiView3.hidden = NO;
    self.YingQiView1.hidden = YES;
    self.YingQiView3.tag = 1;
}
/**
 账号登陆
 */
- (IBAction)accountLogin:(id)sender {
    
    self.YingQiView6.hidden = NO;
    self.YingQiView1.hidden = YES;
}


#pragma mark  ================== lazy load ==================
#pragma mark 视图懒加载
-(UIView *)YingQiView1{
    if (!_YingQiView1) {
        _YingQiView1 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView1" owner:self options:nil] lastObject];
    }
    return _YingQiView1;
}

- (UIView *)YingQiView2 {
    if (_YingQiView2 == nil) {
        _YingQiView2 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView2" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView2];
    }
    return _YingQiView2;
}
- (UIView *)YingQiView3 {
    if (_YingQiView3 == nil) {
        _YingQiView3 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView3" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView3];
    }
    return _YingQiView3;
}
- (UIView *)YingQiView4 {
    if (_YingQiView4 == nil) {
        _YingQiView4 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView4" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView4];
    }
    return _YingQiView4;
}
- (UIView *)YingQiView5 {
    if (_YingQiView5 == nil) {
        _YingQiView5 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView5" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView5];
    }
    return _YingQiView5;
}
- (UIView *)YingQiView6 {
    if (_YingQiView6 == nil) {
        _YingQiView6 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView6" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView6];
    }
    return _YingQiView6;
}
- (UIView *)YingQiView7 {
    if (_YingQiView7 == nil) {
        _YingQiView7 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView7" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView7];
    }
    return _YingQiView7;
}

- (UIView *)YingQiView8 {
	if (_YingQiView8 == nil) {
        _YingQiView8 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView8" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView8];
	}
	return _YingQiView8;
}
- (UIView *)YingQiView9 {
	if (_YingQiView9 == nil) {
        _YingQiView9 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView9" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView9];
	}
	return _YingQiView9;
}

- (UIView *)YingQiView10 {
    
    if (_YingQiView10 == nil) {
        _YingQiView10 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView10" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView10];
    }
    return _YingQiView10;
}

- (UIView *)YingQiView12 {
    
    if (_YingQiView12 == nil) {
        _YingQiView12 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView12" owner:self options:nil] lastObject];
        [self.YingQiBaseView addSubview:_YingQiView12];
    }
    return _YingQiView12;
}


#pragma mark  ================== action ==================

#pragma mark  ================== 2 ==================
/**
 *  继续游戏模式
 *  @param sender <#sender description#>
 */
- (IBAction)continueGameMode:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(YingQiLogin_Successed:)]) {
        
        [self.delegate YingQiLogin_Successed:self.successDict];
        self.YingQiView2.hidden = YES;
    }
}

/**
 *  绑定手机
 *  @param sender <#sender description#>
 */
- (IBAction)bindingPhone:(id)sender {
    
    self.YingQiView2.hidden = YES;
    self.YingQiView10.hidden = NO;
//    self.YingQiView3.tag = 2;
}

/**
 *  返回按钮
 *  @param sender <#sender description#>
 */
- (IBAction)backBtnClick_2:(id)sender {
    
    self.YingQiView2.hidden = YES;
    self.YingQiView1.hidden = NO;
}

#pragma mark  ================== 3 ==================
/**
 *  验证
 *  @param sender <#sender description#>
 */
- (IBAction)verifyBtnClick:(id)sender {
    
    [YingQiSDK YingQiSDKRequst_checkPhoneRegWithNumber:self.tf_3_1.text withCheckCode:0 sB:^(NSDictionary *dic) {
       
        self.YingQiView3.hidden = YES;
        self.YingQiView4.hidden = NO;
        
    } fB:^(NSDictionary *dic) {
        
    }];
}

/**
 *  注册帐号
 *  @param sender <#sender description#>
 */
- (IBAction)accountRegister:(id)sender {
    
    self.YingQiView3.hidden = YES;
    self.YingQiView5.hidden = NO;
}

- (IBAction)backBtnClick_3:(id)sender {
    
    if (self.YingQiView3.tag == 1) {
        
        self.YingQiView3.hidden = YES;
        self.YingQiView1.hidden = NO;
    } else if (self.YingQiView3.tag == 2) {
        
        self.YingQiView3.hidden = YES;
        self.YingQiView1.hidden = NO;
    } else if (self.YingQiView3.tag == 6) {
        
        self.YingQiView3.hidden = YES;
        self.YingQiView6.hidden = NO;
    }
}


#pragma mark  ================== 4 ==================
/**
 *  注册
 *  @param sender <#sender description#>
 */
- (IBAction)registerBtnClick:(id)sender {
    
    [YingQiSDK YingQiSDKRequst_registerWithNumber:self.tf_3_1.text withCheckCode:[self.tf_4_1.text integerValue] withPwd:self.tf_4_2.text sB:^(NSDictionary *dic) {
        
        self.YingQiView4.hidden = YES;
        
        if ([self.delegate respondsToSelector:@selector(YingQiLogin_Successed:)]) {
            [self.delegate YingQiLogin_Successed:dic];
        }
        
    } fB:^(NSDictionary *dic) {
        
    }];
}

/**
 *  发送验证码
 *  @param sender <#sender description#>
 */
- (IBAction)sendSMSCode:(id)sender {
    
    [YingQiSDK YingQiSDKRequst_sendCheckCodeWithNumber:self.tf_3_1.text sB:^(NSDictionary *dic) {
        
        
    } fB:^(NSDictionary *dic) {
        
    }];
}


- (IBAction)backBtnClick_4:(id)sender {
    
    self.YingQiView4.hidden = YES;
    self.YingQiView3.hidden = NO;
}


#pragma mark  ================== 5 ==================
- (IBAction)registerBtnClick_5:(id)sender {
    
    [YingQiSDK YingQiSDKRequst_registerAccountWithName:self.tf_5_1.text withPwd:self.tf_5_2.text sB:^(NSDictionary *dic) {
        
        self.YingQiView5.hidden = YES;
        
        if ([self.delegate respondsToSelector:@selector(YingQiLogin_Successed:)]) {
            [self.delegate YingQiLogin_Successed:dic];
        }
    } fB:^(NSDictionary *dic) {
        
    }];
}

- (IBAction)backBtnClick_5:(id)sender {
    
    self.YingQiView5.hidden = YES;
    self.YingQiView3.hidden = NO;
}


#pragma mark  ================== 6 ==================
/**
 *  登录
 *  @param sender <#sender description#>
 */
- (IBAction)loginBtnClick:(id)sender {
    
    
}

/**
 *  找回密码
 *  @param sender <#sender description#>
 */
- (IBAction)getbackPassWordBtnClick:(id)sender {
    
    self.YingQiView6.hidden = YES;
    self.YingQiView7.hidden = NO;
}

/**
 *  快速注册
 *  @param sender <#sender description#>
 */
- (IBAction)fastRegisterBtnClick:(id)sender {
    
    self.YingQiView6.hidden = YES;
    self.YingQiView3.hidden = NO;
    self.YingQiView3.tag = 6;
}


- (IBAction)backBtnClick_6:(id)sender {
    
    self.YingQiView6.hidden = YES;
    self.YingQiView1.hidden = NO;
}


#pragma mark  ================== 7 ==================
/**
 *  确定
 *  @param sender <#sender description#>
 */
- (IBAction)confirmBtnClick:(id)sender {
    
    self.YingQiView7.hidden = YES;
    self.YingQiView8.hidden = NO;
}

/**
 *  其他方式
 *  @param sender <#sender description#>
 */
- (IBAction)otherWayBtnClick:(id)sender {
    
    self.YingQiView7.hidden = YES;
    self.YingQiView9.hidden = NO;
}

- (IBAction)backBtnClick_7:(id)sender {
    
    self.YingQiView7.hidden = YES;
    self.YingQiView6.hidden = NO;
}

#pragma mark  ================== 8 ==================
/**
 *  确定
 *  @param sender <#sender description#>
 */
- (IBAction)confirmBtnClick_8:(id)sender {
}

/**
 *  其他方式
 *  @param sender <#sender description#>
 */
- (IBAction)otherWayBtnClick_8:(id)sender {
    
    self.YingQiView8.hidden = YES;
    self.YingQiView7.hidden = NO;
}

- (IBAction)backBtnClick_8:(id)sender {
    
    self.YingQiView8.hidden = YES;
    self.YingQiView7.hidden = NO;
}

#pragma mark  ================== 9 ==================

- (IBAction)backBtnClick_9:(id)sender {
    
    self.YingQiView9.hidden = YES;
    self.YingQiView7.hidden = NO;
}

#pragma mark  ================== 10 ==================
/**
 *  点击验证
 *  @param sender <#sender description#>
 */
- (IBAction)clickVerifyBtn_10:(id)sender {
    
    Weakself
    
    if (self.tf_10_1.text.length) {
        
        NSInteger uid = [self.successDict[@"data"][@"tempUser"][@"uid"] integerValue];
        
        [YingQiSDK YingQiSDKRequst_checkBindPhoneWithNumber:self.tf_10_1.text withUid:uid sB:^(NSDictionary *dic) {
    
            // 发送验证码
            [weakself sendCheckCode:dic];
        } fB:^(NSDictionary *dic) {
            
        }];
    
    }
}

// 发送验证码
- (void)sendCheckCode:(NSDictionary *)dic {

    if (!dic[@"data"][@"tempUser"]) {
        
        return;
    }
    
    [YingQiSDK YingQiSDKRequst_bindSendCheckcode:dic[@"data"][@"tempUser"] andNumber:self.tf_10_1.text sB:^(NSDictionary *dic) {
           
        self.YingQiView10.hidden = YES;
        self.YingQiView12.hidden = NO;
        
    } fB:^(NSDictionary *dic) {
        
    }];
}

- (IBAction)backBtnClick_10:(id)sender {
    
    self.YingQiView10.hidden = YES;
    self.YingQiView2.hidden = NO;
}

#pragma mark  ================== 12 ==================

/**
 *  点击确定
 *  @param sender <#sender description#>
 */
- (IBAction)clickConfirmBtn_12:(id)sender {
    
    if (self.tf_12_1.text.length) {
        
        NSInteger uid = [self.successDict[@"data"][@"tempUser"][@"uid"] integerValue];
        
        [YingQiSDK YingQiSDKRequst_BindPhoneWithNumber:self.tf_10_1.text withCheckCode:[self.tf_12_1.text integerValue] withTempUser:self.successDict[@"data"] andUid:uid sB:^(NSDictionary *dic) {
            
            if ([self.delegate respondsToSelector:@selector(YingQiLogin_Successed:)]) {
                [self.delegate YingQiLogin_Successed:dic];
            }
            
            self.YingQiView12.hidden = YES;
        } fB:^(NSDictionary *dic) {
            
        }];
    }
}


- (IBAction)clickBackBtn_12:(id)sender {
    
    self.YingQiView12.hidden = YES;
    self.YingQiView10.hidden = NO;
}


#pragma mark  ================== delegate ==================

- (void)dropdownMenu:(LMJDropdownMenu *)menu selectedCellNumber:(NSInteger)number {
    
    self.tf_6_1.text = self.downDropArr[number];
}

@end
