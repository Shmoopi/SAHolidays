//
//  NSDate+SAHolidays.h
//  Holiday Alerts
//
//  Created by Nick Kramer on 11/12/13.
//  Copyright (c) 2013 Shmoopi LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

// Class to determine if a date is a holiday
@interface NSDate (SAHolidays)

// Holidays, Seasons, or regular days / weekends
typedef enum {
    /* Not holidays, just regular days or the weekend */
    kHolidayNone                           = 0, // Not a holiday or a weekend - boring regular day
    kHolidayJustWeekend                    = 1,  // Not a holiday, but it is a weekend
    /* Actual Holidays - some religious */
    kHolidayNewYearsDay                    = 2,  // New Years Day
    kHolidayMartinLutherKingJrBirthday     = 3,  // Martin Luther King Jr. Day
    kHolidayGroundhogDay                   = 4,  // Groundhog Day
    kHolidayValentinesDay                  = 5,  // Valentine's Day
    kHolidayPresidentsDay                  = 6,  // President's Day
    kHolidayStPatricksDay                  = 7,  // St. Patrick's Day
    kHolidayAprilFoolsDay                  = 8,  // April Fool's Day
    kHolidayGoodFriday                     = 9,  // Good Friday
    kHolidayEaster                         = 10, // Easter
    kHolidayEarthDay                       = 11, // Earth Day
    kHolidayMothersDay                     = 12, // Mother's Day
    kHolidayMemorialDay                    = 13, // Memorial Day
    kHolidayFlagDay                        = 14, // Flag Day
    kHolidayFathersDay                     = 15, // Father's Day
    kHolidayIndependenceDay                = 16, // Independence Day
    kHolidayLaborDay                       = 17, // Labor Day
    kHolidayColumbusDay                    = 18, // Columbus Day
    kHolidayHalloween                      = 19, // Halloween
    kHolidayVeteransDay                    = 20, // Veteran's Day
    kHolidayThanksgiving                   = 21, // Thanksgiving
    kHolidayPearlHarborDay                 = 22, // Pearl Harbor Day
    kHolidayChristmasEve                   = 23, // Christmas Eve
    kHolidayChristmas                      = 24, // Christmas
    kHolidayKwanzaa                        = 25, // Kwanzaa
    kHolidayNewYearsEve                    = 26, // New Years Eve
    /* Not quite holidays, but in the holiday season */
    kHolidaySeasonEaster                   = 27, // Month of Easter - March/April
    kHolidaySeasonHalloween                = 28, // Month of Halloween - October
    kHolidaySeasonThanksgiving             = 29, // Month of Thanksgiving - November
    kHolidaySeasonChristmas                = 30  // Month of Christmas - December
} kSAHoliday;

// Is the date a holiday?
- (kSAHoliday)isHoliday;

@end
