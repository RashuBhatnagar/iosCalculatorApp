//
//  RBViewController.h
//  CalculatorFresh
//
//  Created by Ankit Bhatnagar on 1/15/14.
//  Copyright (c) 2014 Rashuapps.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RBViewController : UIViewController
@property int number1,result,equalCounter;
@property char opPressed;
@property NSString *numberCheck;
@property (strong, nonatomic) IBOutlet UILabel *operatorOutputLabel;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@property (strong, nonatomic) IBOutlet UILabel *outPutLabel;
- (IBAction)plusButtonPressed;
- (IBAction)equalsButtonPressed:(id)sender;
- (IBAction)clearButtonPressed;

- (IBAction)numberPressed:(id)sender;
-(void) Add;
@end
