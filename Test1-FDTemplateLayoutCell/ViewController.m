//
//  ViewController.m
//  Test1-FDTemplateLayoutCell
//
//  Created by ZZCN77 on 2018/3/12.
//  Copyright © 2018年 ZZCN77. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.title = @"UITableView+FDTemplateLayoutCell";
    [self.titleArray addObject:@"UITableView"];
    

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titleArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = self.titleArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            
            [self.navigationController pushViewController:[[TableViewController alloc]init] animated:YES];
            break;
      
        default:
            break;
    }
}
- (NSMutableArray *)titleArray{
    if (_titleArray == nil) {
        self.titleArray = [NSMutableArray new];
    }
    return _titleArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
