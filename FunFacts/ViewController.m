//
//  ViewController.m
//  FunFacts
//
//  Created by Alex Valladares on 29/07/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"
#import "ColorWheel.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factBook = [[FactBook alloc]init];
    self.funFactLabel.text = [self.factBook randomFact];
    
    self.colorWheel = [[ColorWheel alloc]init];
    self.view.backgroundColor = [self.colorWheel randomColor];
    self.funFactButton.tintColor = self.view.backgroundColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    
    self.funFactLabel.text = [self.factBook randomFact];
    self.view.backgroundColor = [self.colorWheel randomColor];
    self.funFactButton.tintColor = self.view.backgroundColor;
    
    NSLog(@"You pressed me!");
}

@end
