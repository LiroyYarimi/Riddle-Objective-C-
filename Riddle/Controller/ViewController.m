//
//  ViewController.m
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    QuestionBank *ls = [[QuestionBank alloc]init];
    
    NSLog(@"number of questions:%d",[ls getNumberOfQuestions]);
    
    
    for (int i=0; i<15; i++) {
        NSLog(@"Question: %@ Answer:%d",[ls getQuestionWithIndex:i],[ls getAnswerWithIndex:i]);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
