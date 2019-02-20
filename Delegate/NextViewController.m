//
//  NextViewController.m
//  Delegate
//
//  Created by taylor Tian on 2019/2/20.
//  Copyright © 2019 taylor Tian. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)back:(id)sender {
    NSLog(@"====%@",self.textField.text);
    //t通过委托变量实现协议方法
    if (self.textField.text.length>0) {
        if ([self.NDelegate respondsToSelector:@selector(sendValue:)]) {
            [self.NDelegate sendValue:self.textField.text];
        }
          [self dismissViewControllerAnimated:YES completion:nil];
    }else{
        NSLog(@"请输入相应的value");
    }
  
}


@end
