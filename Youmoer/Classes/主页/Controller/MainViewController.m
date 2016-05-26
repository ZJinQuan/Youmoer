//
//  MainViewController.m
//  Youmoer
//
//  Created by QUAN on 16/5/19.
//  Copyright © 2016年 QUAN. All rights reserved.
//

#import "MainViewController.h"
#import "WalkViewController.h"
#import "AlbumViewController.h"
#import "ShopViewController.h"
#import "TasteViewController.h"
#import "FurnitureViewController.h"

@interface MainViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *mainScrollView;

@end

@implementation MainViewController

-(UIScrollView *)mainScrollView{
    
    if (_mainScrollView == nil) {
        
        
        _mainScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        
        CGFloat BtnW = _mainScrollView.bounds.size.width / 2;
        CGFloat BtnH = _mainScrollView.bounds.size.width / 2 - 13;
        
        for (int i = 0; i < 3; i ++) {
            
            UIView *line = [[UIView alloc] initWithFrame:CGRectZero];
            
            line.backgroundColor = RGBA(170, 170, 170, 0.5);
            
            switch (i) {
                case 0:
                    line.frame = CGRectMake(0, 0, 1, _mainScrollView.height / 4 * 3);
                    line.centerX = _mainScrollView.centerX;
                    line.y = 50;
                    break;
                case 1: case 2: 
                    
                    line.frame = CGRectMake( 20, (BtnH + 20) * i, _mainScrollView.width - 40, 1);
                    
                    break;
                    
                default:
                    break;
            }

            [_mainScrollView addSubview:line];
        }
        
        NSArray *nameArr = [[NSArray alloc] initWithObjects:@"行走控制",@"视频监控",@"情景逗乐",@"家庭乐园",@"智能家居",@"优陌儿商店", nil];
        
        for (int i = 0; i < 6; i++) {
            
            UIButton *btn = [[UIButton alloc] init];
            
            UILabel *lab = [[UILabel alloc] init];
            lab.textAlignment = NSTextAlignmentCenter;
            lab.textColor = [UIColor blackColor];
            lab.font = [UIFont systemFontOfSize:18];
            
            switch (i) {
                case 0:{
                    btn.frame = CGRectMake(0, 0, BtnW, BtnH);
                    [btn setImage:[UIImage imageNamed:@"home_walk"] forState:UIControlStateNormal];
                    btn.tag = 1000;
                    
                }
                    break;
                case 1:{
                    btn.frame = CGRectMake(BtnW, 0, BtnW, BtnH);
                    [btn setImage:[UIImage imageNamed:@"home_camera"] forState:UIControlStateNormal];
                    btn.tag = 1001;
                    
                }
                    break;
                case 2:{
                    btn.frame = CGRectMake(0, BtnW, BtnW, BtnH);
                    [btn setImage:[UIImage imageNamed:@"home_amuse"] forState:UIControlStateNormal];
                    btn.tag = 1002;
                    
                }
                    break;
                case 3:{
                    btn.frame = CGRectMake(BtnW, BtnW, BtnW, BtnH);
                    [btn setImage:[UIImage imageNamed:@"home_fairyland"] forState:UIControlStateNormal];
                    btn.tag = 1003;
                    
                }
                    break;
                case 4:{
                    btn.frame = CGRectMake(0, BtnW * 2, BtnW, BtnH);
                    btn.tag = 1004;
                    [btn setImage:[UIImage imageNamed:@"home_smart"] forState:UIControlStateNormal];
                    
                }
                    break;
                case 5:{
                    btn.frame = CGRectMake(BtnW, BtnW * 2, BtnW, BtnH);
                    btn.tag = 1005;
                    [btn setImage:[UIImage imageNamed:@"home_store"] forState:UIControlStateNormal];
                    
                }
                    break;
                    
                default:
                    break;
            }
            
            lab.text = nameArr[i];
            
            lab.frame = CGRectMake(0, btn.height - 30, btn.width, 40);
            
            [btn addSubview:lab];
            
            [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            
            [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
            
            
            [_mainScrollView addSubview:btn];
            
        }
        
        _mainScrollView.contentSize = CGSizeMake(0, BtnH * 3);
        
    }

    return _mainScrollView;
}


-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.view addSubview:self.mainScrollView];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主页";
    
    
    
}

-(void) clickBtn: (UIButton *)sender {
    
    NSLog(@"%ld",sender.tag);
    
    switch (sender.tag) {
        case 1000:{ //行走控制
            
            WalkViewController *walkVC = [[WalkViewController alloc] init];
            
            [self.navigationController pushViewController:walkVC animated:YES];
            
        }
                break;
            
        case 1001:{ //视频控制
            
            WalkViewController *walkVC = [[WalkViewController alloc] init];
            
            [self.navigationController pushViewController:walkVC animated:YES];
            
        }
                break;
            
        case 1002:{ //情趣逗乐
            
            TasteViewController *tasteVC = [[TasteViewController alloc] init];
            
            [self.navigationController pushViewController:tasteVC animated:YES];
            
        }
                break;
            
        case 1003:{ //家庭乐园
            
            AlbumViewController *albumVC = [[AlbumViewController alloc] init];
            
            [self.navigationController pushViewController:albumVC animated:YES];
        }
                break;
            
        case 1004:{ //智能家具
            
            FurnitureViewController *furntureVC = [[FurnitureViewController alloc] init];
            
            [self.navigationController pushViewController:furntureVC animated:YES];
        }
            
                break;
            
        case 1005:{ //优陌儿商店
            
            ShopViewController *shopVC = [[ShopViewController alloc] init];
            
            [self.navigationController pushViewController:shopVC animated:YES];
        }
                break;
            
        default:
            break;
    }
    
}

@end
