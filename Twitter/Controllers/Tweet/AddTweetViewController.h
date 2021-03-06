//
//  AddTweetViewController.h
//  Twitter
//
//  Created by Дмитрий Матвеенко on 29/01/2019.
//  Copyright © 2019 GkFoxes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "TweetRealm.h"
#import <Realm/Realm.h>
@import Firebase;

NS_ASSUME_NONNULL_BEGIN

@interface AddTweetViewController : UIViewController

@property (strong, nonatomic) AppDelegate *appDelegate;

@end

NS_ASSUME_NONNULL_END
