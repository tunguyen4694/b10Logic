//
//  bt8.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 15/04/2022.
//

import Foundation

// Bài 8: Nhập vào ngày, tháng, năm. In ra số ngày của tháng đó và in ra ngày tiếp theo và ngày trước đó của ngày nhập vào.

func dayDate() {
    
    var d = 0
    var m = 0
    var y = 0
    
    repeat {
    print("Nhập ngày: ", terminator: "")
    d = Int(readLine() ?? "") ?? 0
    print("Nhập tháng: ", terminator: "")
    m = Int(readLine() ?? "") ?? 0
    print("Nhập năm: ", terminator: "")
    y = Int(readLine() ?? "") ?? 0
    } while d < 0 || d > days(m: m, y: y) || m < 0 || m > 12 || y < 0
    
    var nd = d
    var nm = m
    var ny = y
    
    var pd = d
    var pm = m
    var py = y
    
    func days(m: Int, y: Int) -> Int {
        switch m {
        case 1, 3, 5, 7, 8, 10, 12:
            return 31
        case 2:
            if (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0) {
                return 29
            } else {
                return 28
            }
        default:
            return 30
        }
    }
    
    if y > 0 && m < 13 && 0 < m && d > 1 && d < days(m: m, y: y) {
        nd = d + 1
        
        pd = d - 1
    } else if y > 0 && m != 12 && d == days(m: m, y: y) {
        nd = 1
        nm = m + 1
        
        pd = d - 1
        
    } else if y > 0 && m != 1 && d == 1 {
        nd = d + 1
        
        pd = days(m: m, y: y)
        pm = m - 1
    } else if y > 0 && m == 12 && d == days(m: m, y: y) {
        nd = 1
        nm = 1
        ny = y + 1
        
        pd = d - 1
    } else {
//    if y > 0 && m == 1 && d == 1 {
        nd = d + 1
        
        pd = days(m: m, y: y)
        pm = 12
        py = y - 1
    }
    
    print("Ngày tiếp theo là \(nd)-\(nm)-\(ny)")
    print("Ngày trước đó là \(pd)-\(pm)-\(py)")
}

