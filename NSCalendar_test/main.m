//
//  main.m
//  NSCalendar_test
//
//  Created by Gregory Casamento on 4/6/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat: @"d MMM yyyy HH:mm:ss Z"];
        NSDate *date = [dateFormatter dateFromString:@"22 Nov 1969 08:15:00 Z"];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        
        NSLog(@"date = %@", date);
        NSLog(@"calendar = %@", calendar);
        
        NSInteger era = 0;
        NSInteger year = 0;
        NSInteger month = 0;
        NSInteger day = 0;
        NSInteger hour = 0;
        NSInteger min = 0;
        NSInteger sec = 0;
        NSInteger nano = 0;

        [calendar getEra:&era year:&year month:&month day:&day fromDate:date];
        
        NSLog(@"era = %ld", era);
        NSLog(@"year = %ld", year);
        NSLog(@"month = %ld", month);
        NSLog(@"day = %ld", day);
        
        [calendar getHour:&hour minute:&min second:&sec nanosecond:&nano fromDate:date];

        NSLog(@"hour = %ld", hour);
        NSLog(@"min = %ld", min);
        NSLog(@"sec = %ld", sec);
        NSLog(@"nano = %ld", nano);
    }
    return 0;
}
