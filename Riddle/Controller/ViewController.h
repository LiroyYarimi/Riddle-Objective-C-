//
//  ViewController.h
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionBank.h"
#import "ProgressHUD.h"

@interface ViewController : UIViewController

@property (nonatomic,strong) QuestionBank *allQuestion;
@property (nonatomic) BOOL pickedAnswer;
@property (nonatomic) int questionIndex;
@property (nonatomic) int score;
@property (nonatomic) int numberOfQuestions;

-(void) updateUI;
-(void) nextQuestion;
-(void) checkAnswer;
-(void) goToSecondScreen;
-(void) startOver;

@end

