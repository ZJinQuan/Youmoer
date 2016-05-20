//
//  ShopTableViewCell.m
//  Youmoer
//
//  Created by QUAN on 16/5/20.
//  Copyright © 2016年 QUAN. All rights reserved.
//

#import "ShopTableViewCell.h"

@interface ShopTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end

@implementation ShopTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.iconImage.image = [UIImage imageNamed:@"Snip20160520_2"];
    
    self.nameLabel.text = @"优陌儿智能机器人";
    
    self.detailLabel.text = @"优陌儿智能机器人, 陪伴孩子的好帮手。";
    
}

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
     
        self.iconImage.image = [UIImage imageNamed:@"Snip20160520_2"];
        
        self.nameLabel.text = @"优陌儿智能机器人";
        
        self.detailLabel.text = @"优陌儿智能机器人, 陪伴孩子的好帮手。";
    }
    
    return self;
}

@end
