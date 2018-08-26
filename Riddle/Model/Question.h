//
//  Question.h
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic,strong) NSString *questionText;
@property (nonatomic) BOOL answer;
-(id) initWithQuestionText : (NSString*) text answer : (BOOL) correctAnswer;
-(NSString*) getQuestion;
-(BOOL) getAnswer;

@end

