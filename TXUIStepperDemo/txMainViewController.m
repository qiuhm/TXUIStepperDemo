//
//  txMainViewController.m
//  TXUIStepperDemo
//
//  Created by tingxuan.qhm on 13-12-20.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txMainViewController.h"

@interface txMainViewController ()

@end

@implementation txMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    stepper = [[UIStepper alloc]initWithFrame:CGRectMake(140, 230, 10, 10)];
    stepper.minimumValue = 0.5;
    stepper.maximumValue = 10;
    stepper.stepValue = 0.5f;
    [stepper addTarget:self action:@selector(stepperTap) forControlEvents:UIControlEventValueChanged];
    stepper.tintColor = [UIColor blueColor];
    [self.view addSubview:stepper];
    numberLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 20)];
    numberLabel.text = [NSString stringWithFormat:@"初始值为0"];
    numberLabel.textColor = [UIColor redColor];
    [self.view addSubview:numberLabel];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIStepper
- (void)stepperTap
{
    numberLabel.text = [NSString stringWithFormat:@"stepValue的值为:%2f",stepper.value];
}

@end
