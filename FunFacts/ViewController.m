//
//  ViewController.m
//  FunFacts
//
//  Created by Alex Valladares on 29/07/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factBook = [[FactBook alloc]init];
    self.funFactLabel.text = [self.factBook.facts objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    
    self.funFactLabel.text = [self.factBook.facts objectAtIndex:1];
    
    NSLog(@"You pressed me!");
}

@end
