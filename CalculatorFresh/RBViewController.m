//
//  RBViewController.m
//  CalculatorFresh
//
//  Created by Rashu Bhatnagar Bhatnagar on 1/15/14.
//  Copyright (c) 2014 Rashuapps.com. All rights reserved.
//

#import "RBViewController.h"

@interface RBViewController ()

@end

@implementation RBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.outPutLabel.text=@" ";
    
    self.result=0;
    self.equalCounter=0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)plusButtonPressed {
    if(self.equalCounter==0)
    {
    int value=[self.outPutLabel.text intValue];
    self.number1=value;
    [self Add];
    self.resultLabel.text=[NSString stringWithFormat:@"%d",self.result];
     self.operatorOutputLabel.text=@"+";
    self.outPutLabel.text=@"";
    }
    else{
        int value=[self.outPutLabel.text intValue];
        self.number1=value;
        self.operatorOutputLabel.text=@"+";
        self.outPutLabel.text=@"";
        self.equalCounter=0;
        self.outPutLabel.text=@"";
        }
    }

- (IBAction)equalsButtonPressed:(id)sender {
    int value=[self.outPutLabel.text intValue];
    self.number1=value;
    [self Add];
    self.outPutLabel.text=@"";
    self.resultLabel.text=[NSString stringWithFormat:@"%d",self.result];
    self.equalCounter=1;
    self.operatorOutputLabel.text=@"=";
    }

- (IBAction)clearButtonPressed {
    self.number1=0;
    self.result=0;
    self.outPutLabel.text=@"";
    self.resultLabel.text=@"";
    self.operatorOutputLabel.text=@"";
    self.equalCounter=0;
    }

- (IBAction)numberPressed:(id)sender {
    if(self.equalCounter==1)
    {
        [self clearButtonPressed];
        self.equalCounter=0;
    }
    
       UIButton *buttonName = (UIButton *) sender;
    self.outPutLabel.text=[self.outPutLabel.text stringByAppendingString:buttonName.currentTitle];
    
}

-(void) Add{
    self.result= self.number1+self.result;
}

@end
