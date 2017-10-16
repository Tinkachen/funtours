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
        
        tourData = ModelManager.createPopularDummyData()
        
        self.dataSource = self
        
        self.setViewControllers([getViewControllerAtIndex(index: 0)] as? [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let pageContent = viewController as? PopularView else {
            return nil
        }
        
        let index = pageContent.pageIndex
        let previousIndex = abs((index - 1) % tourData.count)
        
        return getViewControllerAtIndex(index: previousIndex)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let pageContent = viewController as? PopularView else {
            return nil
        }
        
        let index = pageContent.pageIndex
        let nextIndex = abs((index + 1) % tourData.count)
        
        return getViewControllerAtIndex(index: nextIndex)
    }
    
    func getViewControllerAtIndex (index: NSInteger) -> PopularView? {
        guard let popularView = self.storyboard?.instantiateViewController(withIdentifier: "PopularView") as? PopularView else {
            return nil
        }
        
        let data = tourData[index]
        popularView.updateContent(data: data)
        popularView.pageIndex = index
    
        return popularView
    }
    
}
