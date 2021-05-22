//
//  MoviesTabBarContorller.swift
//  Moovflix
//
//  Created by Benjamin Inemugha on 21/05/2021.
//

import UIKit

class MoviesTabBarContorller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create three navigation controllers to serve as the root screen controllers for this tabBarcontroller
        let upcomingNavigationController = geGenericNavigationViewController()
        let nowPlayingNavigationController  = geGenericNavigationViewController()
        let topRatedNavigationController = geGenericNavigationViewController()
        let popularNavigationController = geGenericNavigationViewController()
        
        //Try to set the moviesType for all the moviesListView controllers
        let upcomingMoviesViewController  = upcomingNavigationController.topViewController as! MovieListViewController
        let topRatedMoviesViewController  = topRatedNavigationController.topViewController as! MovieListViewController
        let nowPlayingMoviesController  = nowPlayingNavigationController.topViewController as! MovieListViewController
        let popularMoviesViewController  = popularNavigationController.topViewController as! MovieListViewController
    
        upcomingMoviesViewController.moviesType =  MoviesType.upcoming
        topRatedMoviesViewController.moviesType =  MoviesType.topRated
        nowPlayingMoviesController.moviesType   =  MoviesType.nowPlaying
        popularMoviesViewController.moviesType  =  MoviesType.popular
        
        //customize tab items based on moviesType
        upcomingMoviesViewController.prepareTabItem()
        topRatedMoviesViewController.prepareTabItem()
        nowPlayingMoviesController.prepareTabItem()
        popularMoviesViewController.prepareTabItem()
        
        //set the root view controllers
        viewControllers = [topRatedNavigationController, nowPlayingNavigationController, popularNavigationController,  upcomingNavigationController]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func geGenericNavigationViewController() -> UINavigationController {
        let storyboard = self.storyboard!
        return storyboard.instantiateViewController(withIdentifier: "NavigationController") as! UINavigationController
    }
}

