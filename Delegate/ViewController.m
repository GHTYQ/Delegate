//
//  ViewController.m
//  Delegate
//
//  Created by taylor Tian on 2019/2/20.
//  Copyright © 2019 taylor Tian. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()<NextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *showLab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.showLab.text=@"点击进入下一界面";
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NextViewController *nvc=[[NextViewController alloc]init];
    //遵守协议
    nvc.NDelegate=self;
    [self presentViewController:nvc animated:YES completion:nil];
}
//实现委托方法
-(void)sendValue:(NSString *)value{
    NSLog(@"上一界面传过来的value:%@",value);
    self.showLab.text=value;
}

@end
