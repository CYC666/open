//
//  ViewController.m
//  解密
//
//  Created by CYC on 2020/6/19.
//  Copyright © 2020 oig. All rights reserved.
//

#import "ViewController.h"
#import "EncryptForInterface.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *t1;
@property (weak, nonatomic) IBOutlet UITextView *t2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)open:(id)sender {
    
    NSString *text = [EncryptForInterface decryptWithText:_t1.text];
    _t2.text = text;
}

- (IBAction)pa:(id)sender {
    
    _t1.text = [UIPasteboard generalPasteboard].string;
    
}
- (IBAction)du:(id)sender {
    
    [UIPasteboard generalPasteboard].string = _t2.text;
}

@end
