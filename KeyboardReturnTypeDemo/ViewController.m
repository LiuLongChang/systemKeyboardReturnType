//
//  ViewController.m
//  KeyboardReturnTypeDemo
//
//  Created by 刘隆昌 on 15-3-29.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.textField.returnKeyType = UIReturnKeyDefault;
    self.textField.returnKeyType = UIReturnKeyGo;
    self.textField.returnKeyType = UIReturnKeyGoogle;
    self.textField.returnKeyType = UIReturnKeyDone;
    self.textField.returnKeyType = UIReturnKeyEmergencyCall;
    
    
    self.textField.returnKeyType = UIReturnKeyJoin;
    self.textField.returnKeyType = UIReturnKeyNext;
    self.textField.returnKeyType = UIReturnKeyRoute;
    self.textField.returnKeyType = UIReturnKeySearch;
    self.textField.returnKeyType = UIReturnKeySend;
    self.textField.returnKeyType = UIReturnKeyYahoo;
    
    
    self.textField.keyboardType = UIKeyboardTypeURL;
    self.textField.delegate = self;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    switch (self.textField.returnKeyType) {
        case UIReturnKeyDefault:
            NSLog(@"return");
            break;
        case UIReturnKeyGo:
            NSLog(@"GO");
            break;
        case UIReturnKeyGoogle:
            NSLog(@"Search");
            break;
            
        case UIReturnKeyJoin:
            NSLog(@"Join");
            break;
            
        case UIReturnKeyNext:
            NSLog(@"Next");
            break;
            
        case UIReturnKeyRoute:
            NSLog(@"Route");
            break;
            
        case UIReturnKeySearch:
            NSLog(@"Search");
            break;
            
        case UIReturnKeySend:
            NSLog(@"Send");
            break;
            
        case UIReturnKeyYahoo:
            NSLog(@"Search");
            break;
            
        case UIReturnKeyDone:
            NSLog(@"Done");
            break;
            
        case UIReturnKeyEmergencyCall:
            NSLog(@"Emergency Call");
            break;
            
        default:
            break;
    }
    
    
    NSLog(@"正在搜索");
    
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
