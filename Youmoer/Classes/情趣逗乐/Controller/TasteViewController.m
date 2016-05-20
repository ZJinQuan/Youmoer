//
//  TasteViewController.m
//  Youmoer
//
//  Created by QUAN on 16/5/20.
//  Copyright © 2016年 QUAN. All rights reserved.
//

#import "TasteViewController.h"
#import "TasteCell.h"

@interface TasteViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *tasteCollView;

@end

@implementation TasteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"情趣逗乐";
    
    
    UICollectionViewFlowLayout *flowLayout= [[UICollectionViewFlowLayout alloc] init];
    
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;

    flowLayout.itemSize = CGSizeMake((kScreenWidth  - 40) / 4, 100);
    
    flowLayout.minimumLineSpacing = 8;
    flowLayout.minimumInteritemSpacing = 0;
    
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    self.tasteCollView.collectionViewLayout = flowLayout;
    
    self.tasteCollView.backgroundView.backgroundColor = [UIColor yellowColor];

    self.tasteCollView.backgroundColor = [UIColor whiteColor];
    
    [self.tasteCollView registerNib:[UINib nibWithNibName:@"TasteCell" bundle:nil] forCellWithReuseIdentifier:@"TasteCell"];
    
    self.tasteCollView.contentInset = UIEdgeInsetsMake(30, 20, 0, 20);

}

#pragma mark UICollectionViewDelegate and UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 9;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * CellIdentifier = @"TasteCell";
    
    TasteCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSArray *imageArr = [[NSArray alloc] initWithObjects:@"scene_sad",@"scene_tired",@"scene_grieved",@"scene_amuse",@"scene_cruel",@"scene_sing",@"scene_happy2",@"scene_angry",@"scene_confuse", nil];
    
    NSArray *nameArr = [[NSArray alloc] initWithObjects:@"悲伤",@"困乏",@"难过",@"逗比",@"酷",@"唱歌",@"开心",@"生气",@"疑惑", nil];
    
    cell.iconImage.image = [UIImage imageNamed:imageArr[indexPath.row]];
    cell.nameLab.text = nameArr[indexPath.row];
//    cell.backgroundColor = [UIColor yellowColor];
    
    return cell;
}

@end
