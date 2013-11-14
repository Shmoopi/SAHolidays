//
//  SAHolidaysAppDelegate.m
//  SAHolidays
//
//  Created by Kramer on 11/14/13.
//  Copyright (c) 2013 Shmoopi LLC. All rights reserved.
//

#import "SAHolidaysAppDelegate.h"

// Import the NSDate+SAHolidays Category
#import "NSDate+SAHolidays.h"

@implementation SAHolidaysAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Setup the window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Check the current NSDate to determine if it's a holiday, a holiday season, or a weekend
    
    // Determine if we're being used on a holiday or during a season
    NSLog(@"Is today a holiday: %u\n\n", [[NSDate date] isHoliday]);
    
    // Use a switch statement to determine the holiday and change your code appropriately
    switch ([[NSDate date] isHoliday]) {
        case kHolidayNone:
            // Not a holiday or a weekend
            NSLog(@"Today is Not a holiday, weekend, or a season\n\n");
            break;
        case kHolidayJustWeekend:
            // Just a weekend, not a holiday or a season
            NSLog(@"Today is Just a weekend, not a holiday or a season\n\n");
            break;
        case kHolidayNewYearsDay:
            // New Years Day
            NSLog(@"Today is New Years Day\n\n");
            break;
        case kHolidayMartinLutherKingJrBirthday:
            // Martin Luther King Jr. Day
            NSLog(@"Today is Martin Luther King Jr. Day\n\n");
            break;
        case kHolidayGroundhogDay:
            // Groundhog Day
            NSLog(@"Today is Groundhog Day\n\n");
            break;
        case kHolidayValentinesDay:
            // Valentine's Day
            NSLog(@"Today is Valentine's Day\n\n");
            break;
        case kHolidayPresidentsDay:
            // President's Day
            NSLog(@"Today is President's Day\n\n");
            break;
        case kHolidayStPatricksDay:
            // St. Patrick's Day
            NSLog(@"Today is St. Patrick's Day\n\n");
            break;
        case kHolidayAprilFoolsDay:
            // April Fool's Day
            NSLog(@"Today is April Fool's Day\n\n");
            break;
        case kHolidayGoodFriday:
            // Good Friday
            NSLog(@"Today is Good Friday\n\n");
            break;
        case kHolidayEaster:
            // Easter
            NSLog(@"Today is Easter\n\n");
            break;
        case kHolidayEarthDay:
            // Earth Day
            NSLog(@"Today is Earth Day\n\n");
            break;
        case kHolidayMothersDay:
            // Mother's Day
            NSLog(@"Today is Mother's Day\n\n");
            break;
        case kHolidayMemorialDay:
            // Memorial Day
            NSLog(@"Today is Memorial Day\n\n");
            break;
        case kHolidayFlagDay:
            // Flag Day
            NSLog(@"Today is Flag Day\n\n");
            break;
        case kHolidayFathersDay:
            // Father's Day
            NSLog(@"Today is Father's Day\n\n");
            break;
        case kHolidayIndependenceDay:
            // Independence Day
            NSLog(@"Today is Independence Day\n\n");
            break;
        case kHolidayLaborDay:
            // Labor Day
            NSLog(@"Today is Labor Day\n\n");
            break;
        case kHolidayColumbusDay:
            // Columbus Day
            NSLog(@"Today is Columbus Day\n\n");
            break;
        case kHolidayHalloween:
            // Halloween
            NSLog(@"Today is Halloween\n\n");
            break;
        case kHolidayVeteransDay:
            // Veteran's Day
            NSLog(@"Today is Veteran's Day\n\n");
            break;
        case kHolidayThanksgiving:
            // Thanksgiving
            NSLog(@"Today is Thanksgiving\n\n");
            break;
        case kHolidayPearlHarborDay:
            // Pearl Harbor Day
            NSLog(@"Today is Pearl Harbor Day\n\n");
            break;
        case kHolidayChristmasEve:
            // Christmas Eve
            NSLog(@"Today is Christmas Eve\n\n");
            break;
        case kHolidayChristmas:
            // Christmas
            NSLog(@"Today is Christmas\n\n");
            break;
        case kHolidayKwanzaa:
            // Kwanzaa
            NSLog(@"Today is Kwanzaa\n\n");
            break;
        case kHolidayNewYearsEve:
            // New Years Eve
            NSLog(@"Today is New Years Eve\n\n");
            break;
        case kHolidaySeasonEaster:
            // Month of Easter - March/April
            NSLog(@"It's Easter Season\n\n");
            break;
        case kHolidaySeasonHalloween:
            // Month of Halloween - October
            NSLog(@"It's Halloween Season\n\n");
            break;
        case kHolidaySeasonThanksgiving:
            // Month of Thanksgiving - November
            NSLog(@"It's Thanksgiving Season\n\n");
            break;
        case kHolidaySeasonChristmas:
            // Month of Christmas - December
            NSLog(@"It's Christmas Season\n\n");
            break;
        default:
            // Not a holiday
            NSLog(@"Today is Not a holiday, season, or weekend\n\n");
            break;
    }
    
    // Return YES
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
