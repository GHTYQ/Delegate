//
//  NextViewController.h
//  Delegate
//
//  Created by taylor Tian on 2019/2/20.
//  Copyright © 2019 taylor Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//协议只能定义公用的一套接口，类似于一个约束代理双方的作用。但不能提供具体的实现方法，实现方法需要代理对象去实现。协议可以继承其他协议，并且可以继承多个协议，在iOS中对象是不支持多继承的，而协议可以多继承
//定义协议与方法
@protocol NextViewDelegate <NSObject>

-(void)sendValue:(NSString *)value;

@end

@interface NextViewController : UIViewController
//生命委托变量
@property(nonatomic,weak) id<NextViewDelegate> NDelegate;
//weak和assign是一种“非拥有关系”的指针，通过这两种修饰符修饰的指针变量，都不会改变被引用对象的引用计数。但是在一个对象被释放后，weak会自动将指针指向nil，而assign则不会。在iOS中，向nil发送消息时不会导致崩溃的，所以assign就会导致野指针的错误unrecognized selector sent to instance。
@end

NS_ASSUME_NONNULL_END
