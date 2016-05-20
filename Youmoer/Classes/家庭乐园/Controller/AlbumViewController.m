//
//  AlbumViewController.m
//  Youmoer
//
//  Created by QUAN on 16/5/20.
//  Copyright © 2016年 QUAN. All rights reserved.
//

#import "AlbumViewController.h"

@interface AlbumViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (nonatomic, strong) UISegmentedControl *segmented;

@end

@implementation AlbumViewController

-(UISegmentedControl *)segmented{
    
    if (_segmented == nil) {
        
        NSArray *arr = [[NSArray alloc] initWithObjects:@"图片",@"视频", nil];
        
        _segmented = [[UISegmentedControl alloc] initWithItems:arr];
        _segmented.frame = CGRectMake(0, 0, 150, 30);
        
        _segmented.selectedSegmentIndex = 0;
        
        [_segmented addTarget:self action:@selector(clickSwitch:) forControlEvents:UIControlEventValueChanged];
    }
    
    return _segmented;
}

-(void) clickSwitch:(UISegmentedControl *)sender{
    
    switch (sender.selectedSegmentIndex) {
        case 0:{
            
            self.label1.text = @"没有相片...";
            
        }
            break;
        case 1:{
            
            self.label1.text = @"没有视频...";
            
        }
            break;
            
        default:
            break;
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.titleView = self.segmented;
}

@end
