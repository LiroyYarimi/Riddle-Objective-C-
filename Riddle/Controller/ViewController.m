//
//  ViewController.m
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIView *progressBar;
@property (strong, nonatomic) IBOutlet UILabel *progressLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //init property
    _allQuestion = [[QuestionBank alloc] init];
    _pickedAnswer = NO;
    _questionIndex = 0;
    _score = 0;
    _numberOfQuestions = 0;
    
    
    _numberOfQuestions = [_allQuestion getNumberOfQuestions];
    [self nextQuestion];
    self.progressLabel.text = [NSString stringWithFormat:@"1/%d",_numberOfQuestions];
    self.scoreLabel.text = @"Score: 0";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)answerPressed:(id)sender {
    
    if ([sender tag] == 1)
        _pickedAnswer = true;
    else if ([sender tag] == 2)
        _pickedAnswer = false;
    
    [self checkAnswer];
    _questionIndex ++;
    [self nextQuestion];
}

-(void) updateUI{
    
    _scoreLabel.text = [NSString stringWithFormat:@"Score: %d",_score];
    _progressLabel.text = [NSString stringWithFormat:@"%d/%d",_questionIndex+1,_numberOfQuestions];
    
    //progressBar.frame.size.width = (view.frame.size.width) / CGFloat(numberOfQuestions) * CGFloat(questionIndex + 1)
    
}
-(void) nextQuestion{
    
    if (_questionIndex <= (_numberOfQuestions - 1)) {
        _questionLabel.text = [_allQuestion getQuestionWithIndex:_questionIndex];
        //[_questionLabel sizeToFit];
        [self updateUI];
    }
    else{
        
        // here we want pop up message to the user. Ask him if he want to start over.
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Awesome" message:@"You've finished all the questions, do you want to start over?" preferredStyle: UIAlertControllerStyleAlert]; // the message
        
        UIAlertAction *restartAction = [UIAlertAction actionWithTitle:@"Restart" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self startOver];
        }];
        UIAlertAction *infoAction = [UIAlertAction actionWithTitle:@"Questions source" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self goToSecondScreen];
            [self startOver];
        }];
        
        [alert addAction:restartAction];
        [alert addAction:infoAction];
        
        [self presentViewController:alert animated:YES completion:nil ]; // present the message
 
    }
}
-(void) checkAnswer{
    
    BOOL correctAnswer = [_allQuestion getAnswerWithIndex:_questionIndex];
    
    if (_pickedAnswer == correctAnswer){
        //print("you got it!")
        [ProgressHUD showSuccess:@"Correct"];
        _score++;
    }
    else{
        //print("wrong!")
        [ProgressHUD showError:@"Wrong!"];
    }
    
}
-(void) goToSecondScreen{
    
    [self performSegueWithIdentifier:@"goToInfoView" sender:self];
    
}
-(void) startOver{
    _questionIndex = 0;
    _score = 0;
    [self nextQuestion];
    
}


@end
