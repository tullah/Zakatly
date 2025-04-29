// ExpenditureWidget.swift
//
// Widget extension for displaying expenditure information
// Created by Tariq Shafiq
//
// Copyright © 2025 Zakatly. All rights reserved.

import SwiftUI
import WidgetKit

@main
struct ZakatlyWidgets: WidgetBundle {
    var body: some Widget {
        RecentExpenditureWidget()
        InsightsWidget()
        BudgetWidget()
        LockBudgetWidget()
        MainBudgetWidget()
        NewExpenseWidget()
//        TemplateTransactionWidget()
    }
}
