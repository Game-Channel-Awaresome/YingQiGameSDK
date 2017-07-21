//
//  ViewController.m
//  GameSDKTest
//
//  Created by twksky on 2017/7/20.
//  Copyright © 2017年 twksky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self onePic];//第一个图的UI
//    [self twoPic];//第二个图的UI
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

#pragma mark 第一个图的UI
-(void)onePic{
    [self.YingQiBaseView addSubview:self.YingQiView1];
}

#pragma mark 第一个图的Action
/**
 游客模式登录
 */
- (IBAction)youkeLogin:(id)sender {
    
    self.YingQiView2.hidden = NO;
    self.YingQiView1.hidden = YES;
}
/**
 手机注册
 */
- (IBAction)phoneRegister:(id)sender {
    
    self.YingQiView3.hidden = NO;
    self.YingQiView1.hidden = YES;
}
/**
 账号登陆
 */
- (IBAction)accountLogin:(id)sender {
    
    self.YingQiView6.hidden = NO;
    self.YingQiView1.hidden = YES;
}

#pragma mark 视图懒加载
-(UIView *)YingQiView1{
    if (!_YingQiView1) {
        _YingQiView1 = [[[NSBundle mainBundle] loadNibNamed:@"YingQiView1" owner:self options:nil] lastObject];
    }
    return _YingQiView1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark  ================== lazy load ==================
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

#pragma mark  ================== action ==================

#pragma mark  ================== 2 ==================
/**
 *  继续游戏模式
 *  @param sender <#sender description#>
 */
- (IBAction)continueGameMode:(id)sender {
}

/**
 *  绑定手机
 *  @param sender <#sender description#>
 */
- (IBAction)bindingPhone:(id)sender {
    
    self.YingQiView2.hidden = YES;
    self.YingQiView3.hidden = NO;
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
    
    self.YingQiView3.hidden = YES;
    self.YingQiView4.hidden = NO;
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
    
    self.YingQiView3.hidden = YES;
    self.YingQiView1.hidden = NO;
}


#pragma mark  ================== 4 ==================
/**
 *  注册
 *  @param sender <#sender description#>
 */
- (IBAction)registerBtnClick:(id)sender {
}

/**
 *  发送验证码
 *  @param sender <#sender description#>
 */
- (IBAction)sendSMSCode:(id)sender {
}


- (IBAction)backBtnClick_4:(id)sender {
}


#pragma mark  ================== 5 ==================
- (IBAction)registerBtnClick_5:(id)sender {
}

- (IBAction)backBtnClick_5:(id)sender {
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
}

- (IBAction)backBtnClick_8:(id)sender {
}

#pragma mark  ================== 9 ==================

- (IBAction)backBtnClick_9:(id)sender {
}



@end
