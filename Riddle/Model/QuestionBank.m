//
//  QuestionBank.m
//  Riddle
//
//  Created by liroy yarimi on 26.8.2018.
//  Copyright © 2018 Liroy Yarimi. All rights reserved.
//

#import "QuestionBank.h"

@implementation QuestionBank

-(id) init{
    
    self.list = [[NSMutableArray alloc] init];
    
    Question *q = [[Question alloc] initWithQuestionText:@"Valentine\'s day is banned in Saudi Arabia" answer:YES];
    [self.list addObject:q];
    
    [self.list addObject:[[Question alloc] initWithQuestionText:@"A slug\'s blood is green" answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"Approximately one quarter of human bones are in the feet" answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"The total surface area of two human lungs is approximately 70 square metres" answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat" answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place" answer:NO]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"It is illegal to pee in the Ocean in Portugal" answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"You can lead a cow down stairs but not up stairs" answer:NO]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"Google was originally called \"Backrub\"." answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"Buzz Aldrin\'s mother\'s maiden name was \"Moon\"." answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant." answer:NO]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"No piece of square dry paper can be folded in half more than 7 times." answer:NO]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog." answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"האם ישראל קבלה עצמאות מבריטניה?" answer:YES]];
    [self.list addObject:[[Question alloc] initWithQuestionText:@"האם שנת אור זה יחידת זמן?" answer:NO]];
     
    return self;
}
-(int) getNumberOfQuestions{
    return (int)self.list.count;
}
-(NSString*) getQuestionWithIndex:(int) index{
    return [self.list[index] getQuestion];
}
-(BOOL) getAnswerWithIndex:(int) index{
    return [self.list[index] getAnswer];
}


@end
