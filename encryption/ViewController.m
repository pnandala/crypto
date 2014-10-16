//
//  ViewController.m
//  encryption
//
//  Created by Prashanth Nandala on 10/16/14.
//  Copyright (c) 2014 pgi. All rights reserved.
//

#import "ViewController.h"
#import "crypto/AESCrypt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    NSString *message = @"top secret message";
    NSString *password = @"p4ssw0rd";
    
    
    NSString *encryptedData = [AESCrypt encrypt:message password:password];
    NSLog(@"encrypted string %@", encryptedData);
    
    NSString *decryptedData = [AESCrypt decrypt:encryptedData password:password];
    NSLog(@"encrypted string %@", decryptedData);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
