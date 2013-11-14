//
//  NSDate+SAHolidays.m
//  Holiday Alerts
//
//  Created by Nick Kramer on 11/12/13.
//  Copyright (c) 2013 Shmoopi LLC. All rights reserved.
//

#import "NSDate+SAHolidays.h"

/** All Holiday Dates **/
#define kDateofHolidayNewYearsDay @[@"01.01.2014", @"01.01.2015", @"01.01.2016", @"01.01.2017", @"01.01.2018", @"01.01.2019", @"01.01.2020"]
#define kDateofHolidayMartinLutherKingJrBirthday @[@"01.20.2014", @"01.19.2015", @"01.18.2016", @"01.16.2017", @"01.15.2018", @"01.21.19", @"01.20.2020"]
#define kDateofHolidayGroundhogDay @[@"02.02.2014", @"02.02.2015", @"02.02.2016", @"02.02.2017", @"02.02.2018", @"02.02.19", @"02.02.2020"]
#define kDateofHolidayValentinesDay @[@"02.14.2014", @"02.14.2015", @"02.14.2016", @"02.14.2017", @"02.14.2018", @"02.14.19", @"02.14.2020"]
#define kDateofHolidayPresidentsDay @[@"02.17.2014", @"02.16.2015", @"02.15.2016", @"02.20.2017", @"02.19.2018", @"02.18.19", @"02.17.2020"]
#define kDateofHolidayStPatricksDay @[@"03.17.2014", @"03.17.2015", @"03.17.2016", @"03.17.2017", @"03.17.2018", @"03.17.2019", @"03.17.2020"]
#define kDateofHolidayAprilFoolsDay @[@"04.01.2014", @"04.01.2015", @"04.01.2016", @"04.01.2017", @"04.01.2018", @"04.01.2019", @"04.01.2020"]
#define kDateofHolidayGoodFriday @[@"04.18.2014", @"04.03.2015", @"03.25.2016", @"04.14.2017", @"03.30.2018", @"04.19.2019", @"04.10.2020"]
#define kDateofHolidayEaster @[@"04.20.2014", @"04.05.2015", @"03.27.2016", @"04.16.2017", @"04.01.2018", @"04.21.2019", @"04.12.2020"]
#define kDateofHolidayEarthDay @[@"04.22.2014", @"04.22.2015", @"04.22.2016", @"04.22.2017", @"04.22.2018", @"04.22.2019", @"04.22.2020"]
#define kDateofHolidayMothersDay @[@"05.11.2014", @"05.10.2015", @"05.08.2016", @"05.14.2017", @"05.13.2018", @"05.12.2019", @"05.10.2020"]
#define kDateofHolidayMemorialDay @[@"05.26.2014", @"05.25.2015", @"05.30.2016", @"05.29.2017", @"05.28.2018", @"05.27.2019", @"05.25.2020"]
#define kDateofHolidayFlagDay @[@"06.14.2014", @"06.14.2015", @"06.14.2016", @"06.14.2017", @"06.14.2018", @"06.14.19", @"06.14.2020"]
#define kDateofHolidayFathersDay @[@"06.15.2014", @"06.21.2015", @"06.19.2016", @"06.18.2017", @"06.17.2018", @"06.16.19", @"06.21.2020"]
#define kDateofHolidayIndependenceDay @[@"07.04.2014", @"07.04.2015", @"07.04.2016", @"07.04.2017", @"07.04.2018", @"07.04.19", @"07.04.2020"]
#define kDateofHolidayLaborDay @[@"09.01.2014", @"09.07.2015", @"09.05.2016", @"09.04.2017", @"09.03.2018", @"09.02.19", @"09.07.2020"]
#define kDateofHolidayColumbusDay @[@"10.13.2014", @"10.12.2015", @"10.10.2016", @"10.09.2017", @"10.08.2018", @"10.14.19", @"10.12.2020"]
#define kDateofHolidayHalloween @[@"10.31.2014", @"10.31.2015", @"10.31.2016", @"10.31.2017", @"10.31.2018", @"10.31.19", @"10.31.2020"]
#define kDateofHolidayVeteransDay @[@"11.11.2014", @"11.11.2015", @"11.11.2016", @"11.11.2017", @"11.11.2018", @"11.11.19", @"11.11.2020"]
#define kDateofHolidayThanksgiving @[@"11.27.2014", @"11.26.2015", @"11.24.2016", @"11.23.2017", @"11.22.2018", @"11.28.19", @"11.26.2020"]
#define kDateofHolidayPearlHarborDay @[@"12.07.2014", @"12.07.2015", @"12.07.2016", @"12.07.2017", @"12.07.2018", @"12.07.19", @"12.07.2020"]
#define kDateofHolidayChristmasEve @[@"12.24.2014", @"12.24.2015", @"12.24.2016", @"12.24.2017", @"12.24.2018", @"12.24.19", @"12.24.2020"]
#define kDateofHolidayChristmasDay @[@"12.25.2014", @"12.25.2015", @"12.25.2016", @"12.25.2017", @"12.25.2018", @"12.25.19", @"12.25.2020"]
#define kDateofHolidayKwanzaa @[@"12.26.2014", @"12.26.2015", @"12.26.2016", @"12.26.2017", @"12.26.2018", @"12.26.19", @"12.26.2020"]
#define kDateofHolidayNewYearsEve @[@"12.31.2014", @"12.31.2015", @"12.31.2016", @"12.31.2017", @"12.31.2018", @"12.31.19", @"12.31.2020"]

@implementation NSDate (SAHolidays)

// Is the date a holiday?
- (kSAHoliday)isHoliday {
    
    /* Returns the holiday (if it's a holiday), if it's a weekend (but not a holiday), or if it's just a regular day (not a holiday or a weekend) */
    
    // Create the date formatter and get the current date
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd.MM.YYYY"];
    NSString *currentDate = [dateFormat stringFromDate:self];
    
    // Go through each array of dates for each holiday and see if they match the date
    
    // New Years Day
    for (NSString *holidays in kDateofHolidayNewYearsDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is New Years Day!
            return kHolidayNewYearsDay;
        }
    }
    
    // Martin Luther King Jr. Day
    for (NSString *holidays in kDateofHolidayMartinLutherKingJrBirthday) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Martin Luther King Jr. Day!
            return kHolidayMartinLutherKingJrBirthday;
        }
    }
    
    // Ground Hog Day
    for (NSString *holidays in kDateofHolidayGroundhogDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Ground Hog Day!
            return kHolidayGroundhogDay;
        }
    }
    
    // Valentine's Day
    for (NSString *holidays in kDateofHolidayValentinesDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Valentine's Day!
            return kHolidayValentinesDay;
        }
    }
    
    // President's Day
    for (NSString *holidays in kDateofHolidayPresidentsDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is President's Day!
            return kHolidayPresidentsDay;
        }
    }
    
    // St. Patrick's Day
    for (NSString *holidays in kDateofHolidayStPatricksDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is St. Patrick's Day!
            return kHolidayStPatricksDay;
        }
    }
    
    // April Fool's Day
    for (NSString *holidays in kDateofHolidayAprilFoolsDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is April Fool's Day!
            return kHolidayAprilFoolsDay;
        }
    }
    
    // Good Friday
    for (NSString *holidays in kDateofHolidayGoodFriday) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Good Friday!
            return kHolidayGoodFriday;
        }
    }
    
    // Easter
    for (NSString *holidays in kDateofHolidayEaster) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Easter!
            return kHolidayEaster;
        }
    }
    
    // Earth Day
    for (NSString *holidays in kDateofHolidayEarthDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Earth Day!
            return kHolidayEarthDay;
        }
    }
    
    // Mother's Day
    for (NSString *holidays in kDateofHolidayMothersDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Mother's Day!
            return kHolidayMothersDay;
        }
    }
    
    // Memorial Day
    for (NSString *holidays in kDateofHolidayMemorialDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Memorial Day!
            return kHolidayMemorialDay;
        }
    }
    
    // Flag Day
    for (NSString *holidays in kDateofHolidayFlagDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Flag Day!
            return kHolidayFlagDay;
        }
    }
    
    // Father's Day
    for (NSString *holidays in kDateofHolidayFathersDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Father's Day!
            return kHolidayFathersDay;
        }
    }
    
    // Independence Day
    for (NSString *holidays in kDateofHolidayIndependenceDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Independence Day!
            return kHolidayIndependenceDay;
        }
    }
    
    // Labor Day
    for (NSString *holidays in kDateofHolidayLaborDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Labor Day!
            return kHolidayLaborDay;
        }
    }
    
    // Columbus Day
    for (NSString *holidays in kDateofHolidayColumbusDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Columbus Day!
            return kHolidayColumbusDay;
        }
    }
    
    // Halloween
    for (NSString *holidays in kDateofHolidayHalloween) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Halloween!
            return kHolidayHalloween;
        }
    }

    // Veteran's Day
    for (NSString *holidays in kDateofHolidayVeteransDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Veteran's Day!
            return kHolidayVeteransDay;
        }
    }

    // Thanksgiving
    for (NSString *holidays in kDateofHolidayThanksgiving) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Thanksgiving!
            return kHolidayThanksgiving;
        }
    }

    // Pearl Harbor Day
    for (NSString *holidays in kDateofHolidayPearlHarborDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Pearl Harbor Day!
            return kHolidayPearlHarborDay;
        }
    }
    
    // Christmas Eve
    for (NSString *holidays in kDateofHolidayChristmasEve) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Christmas Eve!
            return kHolidayChristmasEve;
        }
    }
    
    // Christmas
    for (NSString *holidays in kDateofHolidayChristmasDay) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Christmas!
            return kHolidayChristmas;
        }
    }
    
    // Kwanzaa
    for (NSString *holidays in kDateofHolidayKwanzaa) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is Kwanzaa!
            return kHolidayKwanzaa;
        }
    }
    
    // New Years Eve
    for (NSString *holidays in kDateofHolidayNewYearsEve) {
        if ([holidays isEqualToString:currentDate]) {
            // Today is New Years Eve!
            return kHolidayNewYearsEve;
        }
    }
    
    // Determine if today is one of the seasons
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *compareDate = [calendar components:(NSDayCalendarUnit | NSMonthCalendarUnit)
                                                fromDate:self];
    switch ([compareDate month]) {
        case 3:
            // Determine if it's late enough in the month to be considered Easter season - this allows enough time for the season in the variable range of dates during the next 7 years
            if ([compareDate day] > 20) {
                // Easter Season
                return kHolidaySeasonEaster;
            }
            break;
        case 10:
            // Month of October, Halloween is approaching!
            return kHolidaySeasonHalloween;
            break;
        case 11:
            // Month of November, Thanksgiving is approaching!
            return kHolidaySeasonThanksgiving;
            break;
        case 12:
            // Month of December, Christmas is approaching!
            return kHolidaySeasonChristmas;
            break;
        default:
            // None
            break;
    }
    
    // No other holidays match, check if it's a weekend
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [gregorianCalendar components:(NSWeekdayCalendarUnit) fromDate:self];
    if ([components weekday] == 1 || [components weekday] == 7) {
        // Weekend
        return kHolidayJustWeekend;
    }
    
    // Nothing, just a regular day
    return kHolidayNone;
}

@end
