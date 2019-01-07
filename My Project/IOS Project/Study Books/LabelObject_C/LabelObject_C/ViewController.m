//
//  ViewController.m
//  LabelObject_C
//
//  Created by An Nguyễn on 1/28/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] init];
    //UILabel *label = [UILabel new];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label];
    
    // add horizontal contraints with 5 left and right panding from the leading and training
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[labelName]-5-|" options:0 metrics:nil views:@{@"labelName":label}]];
    
    // vertical constraints that will use the height of the superView width no padding on top and bottom
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[labelName]|" options:0 metrics:nil views:@{@"labelName":label}]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
