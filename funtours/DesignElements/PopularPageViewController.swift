//
//  PopularPageViewController.swift
//  funtours
//
//  Created by Catharina Herchert on 29.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

class PopularPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var tourData: [TourData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tourData = TourData.createPopularDummyData()
        
        self.dataSource = self
        
        self.setViewControllers([getViewControllerAtIndex(index: 0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let pageContent: PopularView = viewController as! PopularView
        let index = pageContent.pageIndex
        let previousIndex = abs((index! - 1) % tourData.count)
        
        return getViewControllerAtIndex(index: previousIndex)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let pageContent: PopularView = viewController as! PopularView
        let index = pageContent.pageIndex
        let nextIndex = abs((index! + 1) % tourData.count)
        
        return getViewControllerAtIndex(index: nextIndex)
    }
    
    func getViewControllerAtIndex (index: NSInteger) -> PopularView {
        let popularView = self.storyboard?.instantiateViewController(withIdentifier: "PopularView") as! PopularView
        
        let data = tourData[index]
        popularView.updateContent(data: data)
        popularView.pageIndex = index
    
        return popularView
    }
    
}
