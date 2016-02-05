//
//  ViewController.h
//  MathFacts2
//
//  Created by Jason Owen on 2/5/16.
//  Copyright © 2016 Jason Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *number1;
@property (weak, nonatomic) IBOutlet UILabel *number2;

@property (weak, nonatomic) IBOutlet UITextField *userGuess;
@property (weak, nonatomic) IBOutlet UILabel *guessResult;

@property (nonatomic, assign) NSInteger userScore;
@property (nonatomic, assign) NSInteger userTotalNumberGuesses;

@property (weak, nonatomic) IBOutlet UILabel *scoreResults;




// get ready to manage CORE DATA :)
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;

@end

