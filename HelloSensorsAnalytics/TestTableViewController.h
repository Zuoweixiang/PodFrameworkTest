//
//  TestTableViewController.h
//  HelloSensorsAnalytics
//
//  Created by ziven.mac on 2017/10/16.
//  Copyright © 2017年 SensorsData. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSMutableArray *dataArray;

@end
