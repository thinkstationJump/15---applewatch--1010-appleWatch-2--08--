//
//  InterfaceController.m
//  08-动画 WatchKit Extension
//
//  Created by xiaomage on 15/10/10.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *ima;

@end


@implementation InterfaceController
- (IBAction)startAnimation {
    
    [self animateWithDuration:2.0 animations:^{
        [self.ima setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentRight];
    }];
    
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    [self.ima setImage:[UIImage imageNamed:@"minion.jpg"]];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



