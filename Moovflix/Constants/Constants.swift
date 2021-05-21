//
//  Constants.swift
//  Moovflix
//
//  Created by Benjamin Inemugha on 21/05/2021.
//

import Foundation

struct Constants {
    static let API_KEY = "325c3de89454b66a882038d3ca5fdbd3"
    static let BASE_URL = "https://api.themoviedb.org/3/movie/"
    static let MOVIE_SEARCH_BASE_URL = "https://api.themoviedb.org/3/search/movie"
    static let IMAGES_BASE_URL = "https://image.tmdb.org/t/p/"
    static let BACK_DROP_BASE_URL = IMAGES_BASE_URL + "w500"
    static let POSTER_BASE_URL = IMAGES_BASE_URL + "w185"
    static let KEY_POPULAR = "popular"
    static let KEY_UPCOMING = "upcoming"
    static let KEY_TOP_RATED = "top_rated"
    static let KEY_NOW_PLAYING = "now_playing"
}
