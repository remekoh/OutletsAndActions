//
//  ViewController.m
//  OutletsAndActions
//
//  Created by rem{e}koh on 9/26/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *firstNameLabel;

@property (nonatomic, weak) IBOutlet UILabel *lastNameLabel;

@property (nonatomic, weak) IBOutlet UITextField *firstNameTextField;

@property (nonatomic, weak) IBOutlet UITextField *lastNameTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)submitButtonClicked {
    NSString *firstName = self.firstNameTextField.text;
    NSString *lastName = self.lastNameTextField.text;
    
    NSString *welcomeMessage = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Message" message:welcomeMessage preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
