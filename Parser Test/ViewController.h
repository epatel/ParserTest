//
//  ViewController.h
//  Parser Test
//
//  Created by Edward Patel on 2012-03-28.
//  Copyright (c) 2012 Memention AB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextView *textView;

- (IBAction)parseTextView:(id)sender;

@end
