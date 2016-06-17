//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by GraceLilac on 2016. 6. 15..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@property (nonatomic) int currnetQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        self.questions = @[@"From what is congnac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    return self;
}

- (IBAction)showQuisetion:(id)sender
{
    self.currnetQuestionIndex++;
    
    if(self.currnetQuestionIndex == [self.questions count]) {
        self.currnetQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currnetQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currnetQuestionIndex];
    self.answerLabel.text = answer;
}

@end
