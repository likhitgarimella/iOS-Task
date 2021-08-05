//
//  GraphTwoViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 05/08/21.
//

import UIKit
import SwiftCharts

class GraphTwoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chartConfig = ChartConfigXY(
            xAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 1),
            yAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 1)
        )
                
        let frame = CGRect(x: 40, y: 0, width: 300, height: 500)
                
        let chart = LineChart(
            frame: frame,
            chartConfig: chartConfig,
            xTitle: "X axis",
            yTitle: "Y axis",
            lines: [
                (chartPoints: [(1.0, 4.0), (5.0, 6.0)], color: UIColor.red),
                (chartPoints: [(6.0, 5.0), (7.0, 4.0), (9.0, 3.6), (11.0, 3.8), (13.0, 3.4)], color: UIColor.blue)
            ]
        )
                
        self.view.addSubview(chart.view)
        
    }
    
}   // #39
