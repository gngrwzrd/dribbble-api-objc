//
//  main.m
//  dribbble
//
//  Created by Aaron Smith on 10/22/13.
//  Copyright (c) 2013 Aaron Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dribbble.h"

int main(int argc, const char * argv[]) {

@autoreleasepool {
	
	NSLog(@"%@",[Dribbble everyoneShotsWithOptions:nil completion:NULL]);
	NSLog(@"%@",[Dribbble debutShotsWithOptions:nil completion:NULL]);
	NSLog(@"%@",[Dribbble popularShotsWithOptions:nil completion:NULL]);
	
}
	
    return 0;
}

