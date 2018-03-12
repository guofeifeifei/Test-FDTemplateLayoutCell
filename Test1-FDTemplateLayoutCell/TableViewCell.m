//
//  TableViewCell.m
//  Test1-FDTemplateLayoutCell
//
//  Created by ZZCN77 on 2018/3/12.
//  Copyright © 2018年 ZZCN77. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"
#import <UIImageView+WebCache.h>
@interface TableViewCell()
@property (nonatomic, strong) UIImageView *imgV;
@property (nonatomic, strong) UILabel *titleLB;
@end
@implementation TableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UIImageView *imgV = [[UIImageView alloc] init];
        imgV.image = [UIImage imageNamed:@"headImg"];
        [self.contentView addSubview:imgV];
        self.imgV = imgV;
        
        UILabel *titleLb = [[UILabel alloc] init];
        titleLb.numberOfLines = 0;
        [self.contentView addSubview:titleLb];
        self.titleLB = titleLb;
        
        UIView *lineView = [[UIView alloc] init];
        lineView.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:lineView];
        
        [imgV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(self.contentView).offset(10);
            make.height.width.mas_equalTo(40);
        }];
        [titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(imgV.mas_top).offset(10);
            make.left.equalTo(imgV.mas_right).offset(10);
            make.right.equalTo(self.contentView.mas_right).offset(-10);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
        }];
        
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.left.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(-2);
            make.height.mas_equalTo(1);
        }];
    }
    return self;
}

- (void)configUI:(NSString *)str imageName:(NSString *)imgName{

    [self.imgV sd_setImageWithURL:[NSURL URLWithString:imgName] placeholderImage:[UIImage imageNamed:@"headImg"] options:SDWebImageRefreshCached completed:nil];
    self.titleLB.text = str;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
