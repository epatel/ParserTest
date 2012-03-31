//
//  ViewController.m
//  Parser Test
//
//  Created by Edward Patel on 2012-03-28.
//  Copyright (c) 2012 Memention AB. All rights reserved.
//

#import "ViewController.h"

#import "y.tab.h"
#import "MessageBlocks.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)dealloc 
{
    [textView release];
    [super dealloc];
}

- (IBAction)parseTextView:(id)sender 
{
    YY_BUFFER_STATE buf;
    
    buf = yy_scan_string([self.textView.text cStringUsingEncoding:NSUTF8StringEncoding]);
    
    ParseTestSuccessBlock = ^(float value) {
        textView.text = [NSString stringWithFormat:@"%f", value];
    };

    ParseTestFailBlock = ^(NSString *msg) {
        textView.text = msg;
    };
        
    yyparse();
    
    yy_delete_buffer(buf);
}

@end
