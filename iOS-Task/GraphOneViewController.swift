//
//  GraphOneViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 05/08/21.
//

import UIKit
import SwiftCharts

class GraphOneViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chartConfig = ChartConfigXY(
            xAxisConfig: ChartAxisConfig(from: 0, to: 120, by: 10),
            yAxisConfig: ChartAxisConfig(from: 0, to: 120, by: 10)
        )
                
        let frame = CGRect(x: 40, y: 0, width: 300, height: 500)
                
        let chart = LineChart(
            frame: frame,
            chartConfig: chartConfig,
            xTitle: "X axis",
            yTitle: "Y axis",
            lines: [
                (chartPoints: [(10.0, 40.0), (30.0, 30.0), (50.0, 50.0), (60.0, 40.0), (70.0, 40.0), (80.0, 20.0), (100.0, 30.0)], color: UIColor.blue)
            ]
        )
                
        self.view.addSubview(chart.view)
        
    }
    
}   // #38
