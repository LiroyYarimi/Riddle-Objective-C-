//
//  Question.m
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import "Question.h"

@implementation Question

-(id) initWithQuestionText : (NSString*) text answer : (BOOL) correctAnswer{

    self.questionText = text;
    self.answer = correctAnswer;
    return self;
}
-(NSString*) getQuestion{
    return self.questionText;
}
-(BOOL) getAnswer{
    return self.answer;
}

@end
 
