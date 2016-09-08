//
//  Leap.swift
//  Leap
//
//  Created by Taylor Smith on 9/1/15.
//  Copyright (c) 2015 TaylorSmith. All rights reserved.
//

import Foundation

struct Year {
    let calendarYear: Int
    var isLeapYear: Bool {
        return calendarYear % 4 == 0 && (calendarYear % 400 == 0 || calendarYear % 100 != 0)
    }
}


