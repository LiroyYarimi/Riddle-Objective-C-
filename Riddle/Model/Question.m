//
//  Question.m
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import "Question.h"

@implementation Question

-(id) initWithQuestionText : (NSString*) text answer : (NSString*) correctAnswer{

    self.questionText = text;
    self.answer = correctAnswer;
    return self;
}

@end
 
