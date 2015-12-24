//
//  QuizViewController.m
//  Quiz
//
//  Created by Richard Martin on 2015-12-23.
//  Copyright © 2015 richard martin. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.questions = @[@"From what is cognac made?",
                       @"What is 7+7?",
                       @"What is the capital of Vermont?"];
    
    self.answers = @[@"Grapes",
                     @"14",
                     @"Montpelier"];
}

-(IBAction)showQuestion:(id)sender {
    
    // step to the next question
    
    self.currentQuestionIndex++;
    
    // am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        
        // go back to the first question
        self.currentQuestionIndex = 0;
        
    }
    
    // get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // display the string in the question label
    self.questionLabel.text = question;
    
    // reset the answer label
    self.answerLabel.text = @"???";
    
    
}

-(IBAction)showAnswer:(id)sender {
    
    // what is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // display in the answer label
    self.answerLabel.text = answer;
    
    
}


@end
