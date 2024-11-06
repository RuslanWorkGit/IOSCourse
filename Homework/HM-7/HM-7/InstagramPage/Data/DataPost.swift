//
//  DataPost.swift
//  HM-7
//
//  Created by Ruslan Liulka on 01.11.2024.
//

import UIKit

struct Post {
    var avatarImageName: String
    var postImageName: String
    var viewsCount: Int
    var description: String
    var countOfComents: String
    var postedAt: String
    var name: String
    
}

var arrayOfPosts: [Post] = [firstPost, secondPost, thirdPost]

let firstPost = Post(avatarImageName: "yanaAvatar", postImageName: "yana", viewsCount: 25781, description: "Zooming into those dreamy eyes and soft whiskers! Who could resist this face? 😍 #CatCloseUp #FelineBeauty #CatGaze", countOfComents: "21", postedAt: "2 september", name: "yana_oficcial")

let secondPost: Post = .init(avatarImageName: "ruslanAvatar", postImageName: "ruslan", viewsCount: 3, description: "Our little superstar knows how to strike a pose! From head to tail, all fluff and elegance. 🐈💫 #FullBodyCat #StrikeAPose #CatLife", countOfComents: "1", postedAt: "2 hours age", name: "ukrlanchik")

let thirdPost = Post(avatarImageName: "martinAvatar", postImageName: "martin", viewsCount: 432, description: "Nothing better than a cuddle puddle! Who's got the best lounge spot? 🛋️🐾 #CatFamily #SquadGoals #FurFamily", countOfComents: "43", postedAt: "1 day ago", name: "martin_cat")
