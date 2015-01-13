//
//  ViewController.m
//  WeiboDemo
//
//  Created by choushayne on 15/1/13.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "ViewController.h"
#import "Weibo.h"
#import "WeiboTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>{
    UITableView *_tableView;
    NSMutableArray *_weibo;
    NSMutableArray *_weiboCells;//存储cell，用于计算高度
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化数据
    [self initData];
    
    //创建一个分组样式的UITableView
    _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //设置数据源，注意必须实现对应的UITableViewDataSource协议
    _tableView.dataSource = self;
    //设置代理
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
}

#pragma mark 加载数据
-(void)initData{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Weibo" ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    _weibo = [[NSMutableArray alloc]init];
    _weiboCells = [[NSMutableArray alloc]init];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [_weibo addObject:[Weibo weiboWithDictionary:obj]];
        WeiboTableViewCell *cell = [[WeiboTableViewCell alloc]init];
        [_weiboCells addObject:cell];
    }];
}

#pragma mark - 数据源方法
#pragma mark 返回分组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

#pragma mark 返回每组行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    NSLog(@"_weibo.count: %lu", (unsigned long)_weibo.count);
    return _weibo.count;
}

#pragma mark返回每行的单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier=@"UITableViewCellIdentifierKey1";
    WeiboTableViewCell *cell;
    cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell){
        cell=[[WeiboTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    //在此设置微博，以便重新布局
    Weibo *weibo = _weibo[indexPath.row];
    cell.weibo = weibo;
    return cell;
}

#pragma mark - 代理方法
#pragma mark 重新设置单元格高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //WeiboTableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    WeiboTableViewCell *cell= _weiboCells[indexPath.row];
    cell.weibo = _weibo[indexPath.row];
    return cell.height;
}

#pragma mark 重写状态样式方法
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
