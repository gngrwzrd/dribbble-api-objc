dribbble-api-objc is another dribbble API for objective-c. The difference is the flexibility and small amount of code. It's synchronous, and asynchronous.

Synchronous Example:

    DribbbleResponse * res = [Dribbble everyoneShotsWithOptions:nil completion:nil];
    NSLog(@"%@",[res.jsonData objectForKey:@"shots"]);

Asynchronous Example:

    [Dribbble everyoneShotsWithOptions:nil completion:(^DribbbleResponse * res){
	    NSLog(@"%@",[res.jsonData objectForKey:@"shots"]);
    }];

Handling Errors:

    [Dribbble everyoneShotsWithOptions:nil completion:(^DribbbleResponse * res){
	    if(res.error) {
		    NSLog(@"%@",res.error);
	    } else {
		    NSLog(@"%@",[res.jsonData objectForKey:@"shots"]);
	    }
    }];

Paging:

    Dribbble * everyone = [[Dribbble alloc] initEveryonePager];
    [everyone load:(^DribbbleResponse * res){
	    NSLog(@"got shots for everyone: %@",res.dribbble.shots);
    }];

    Dribbble * popular = [[Dribbble alloc] initPopularPager];
    [popular loadPages:4 completion:(^DribbbleResponse * res){
        NSLog(@"got 4 pages of shots: %@",res.dribbble.shots);
    }];

There are more features. Read the source ;)
