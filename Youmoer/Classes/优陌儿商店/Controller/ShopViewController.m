//
//  ShopViewController.m
//  Youmoer
//
//  Created by QUAN on 16/5/20.
//  Copyright © 2016年 QUAN. All rights reserved.
//

#import "ShopViewController.h"
#import "ShopTableViewCell.h"

@interface ShopViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *shopTableView;

@end

@implementation ShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title = @"优陌儿商店";
    
    self.shopTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    [self.shopTableView registerNib:[UINib nibWithNibName:@"ShopTableViewCell" bundle:nil] forCellReuseIdentifier:@"ShopCell"];
}

#pragma mark UITableViewDelegate and UITableViewDataSource
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 150)];
    imageView.image = [UIImage imageNamed:@"store_bg"];
    
    return imageView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 150;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"ShopCell";
    
    ShopTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    return cell;
}


@end
