//
//  QuestionBank.h
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionBank : NSObject

@property (nonatomic,strong) NSMutableArray *list; //array of questions.
-(id) init;
-(int) getNumberOfQuestions;
-(NSString*) getQuestionWithIndex:(int) index;
-(BOOL) getAnswerWithIndex:(int) index;

@end
