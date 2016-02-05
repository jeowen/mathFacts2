//
//  ViewController.m
//  MathFacts2
//
//  Created by Jason Owen on 2/5/16.
//  Copyright © 2016 Jason Owen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//manage CORE DATA :)
@synthesize managedObjectContext;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // self.loginButton.layer.cornerRadius = 10;
    // assign keyboard type
    [self.userGuess setKeyboardType:UIKeyboardTypeNumberPad];
    
    // assign button size of submit button
//    // Keep the same font but change its size to 24 points.
//    UIFont *font = self..font;
//    userText.font = [font fontWithSize:24];
}
- (IBAction)textfieldUpdated:(UITextField *)sender {
    NSLog(@"TEXT FIELD UPDATED \n\n *** \n\n *** \n\n *** \n");
    NSLog(@"TEXT FIELD RECEIVED %@", self.userGuess.text);
}
- (IBAction)textfieldCompleted:(UITextField *)sender {
    [self.userGuess resignFirstResponder];
    NSLog(@"**completed text entry with value %@", self.userGuess.text);
}
- (IBAction)guessSubmitted:(UIButton *)sender {
    // resign keyboard
    // BELOW WORKS FOR REMOVING KEYBOARD FROM VIEW
    // [self.view endEditing:YES];
    
    
    // update # of guesses
    self.userTotalNumberGuesses++;
    
    // get value of userGuess and compare with actual product
    
    int i = self.number1.text.intValue;
    int j = self.number2.text.intValue;
    int product = i*j;
    
    int userProduct = self.userGuess.text.intValue;
    
    if (product == userProduct){
        // NEXT STEP:  generate SUCCESS result from array of possible values
        self.guessResult.textColor = [UIColor greenColor];
        self.guessResult.text = @"CORRECT!!";
        // update # of guesses correct
        self.userScore++;
        self.scoreResults.textColor = [UIColor whiteColor];
        self.scoreResults.text = [NSString stringWithFormat: @"Your score: %d, numGuesses = %d", self.userScore, self.userTotalNumberGuesses];
    }
    else{
        // NEXT STEP: generate incorrect result from array of possible values
        self.guessResult.textColor = [UIColor redColor];
        self.guessResult.text = @"Nope :( ";
        self.scoreResults.textColor = [UIColor whiteColor];
        self.scoreResults.text = [NSString stringWithFormat: @"Your score: %d, numGuesses = %d", self.userScore, self.userTotalNumberGuesses];
    }
    
    // clear previous text entry
    self.userGuess.text = @"";
    
    
    NSLog(@"BUTTON PRESS RECEIVED \n\n");
    int r = arc4random_uniform(12); // number in parens is max value of 0 through max value
    NSLog(@"random = %i", r);
    NSString *numToDisplay = [NSString stringWithFormat:@"%d",r];
    self.number1.text = numToDisplay;
    
    int r2 = arc4random_uniform(13);
    NSLog(@"2nd random = %i", r2);
    NSString *secondNumToDisplay = [NSString stringWithFormat:@"%d", r2];
    self.number2.text = secondNumToDisplay;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
