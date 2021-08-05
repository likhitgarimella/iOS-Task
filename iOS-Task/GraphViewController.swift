//
//  GraphViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 05/08/21.
//

import UIKit
import SwiftCharts

class GraphViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chartConfig1 = ChartConfigXY(
            xAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 1),
            yAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 1)
        )
        
        let frame1 = CGRect(x: 40, y: 0, width: 300, height: 500)
        
        let chart1 = LineChart(
            frame: frame1,
            chartConfig: chartConfig1,
            xTitle: "X axis",
            yTitle: "Y axis",
            lines: [
                (chartPoints: [(1.0, 4.0), (5.0, 6.0)], color: UIColor.red),
                (chartPoints: [(6.0, 5.0), (7.0, 4.0), (9.0, 3.6), (11.0, 3.8), (13.0, 3.4)], color: UIColor.blue)
            ]
        )
        
        self.view.addSubview(chart1.view)
        
        ///
        
        let chartConfig2 = ChartConfigXY(
            xAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 1),
            yAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 1)
        )
        
        let frame2 = CGRect(x: 40, y: 100, width: 300, height: 500)
        
        let chart2 = LineChart(
            frame: frame2,
            chartConfig: chartConfig2,
            xTitle: "X axis",
            yTitle: "Y axis",
            lines: [
                (chartPoints: [(100.0, 400.0), (300.0, 300.0), (500.0, 500.0), (600.0, 400.0), (700.0, 400.0), (800.0, 200.0), (1000.0, 300.0)], color: UIColor.blue)
            ]
        )
        
        self.view.addSubview(chart2.view)
        
    }
    
}   // #60
