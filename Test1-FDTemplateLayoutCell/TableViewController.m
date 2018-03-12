//
//  TableViewController.m
//  Test1-FDTemplateLayoutCell
//
//  Created by ZZCN77 on 2018/3/12.
//  Copyright © 2018年 ZZCN77. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import <UITableView+FDTemplateLayoutCell.h>

@interface TableViewController ()
@property (nonatomic, strong) NSArray *strAry;
@property (nonatomic, strong) NSArray *imgAry;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.fd_debugLogEnabled = YES;
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cellIdentifier"];
    self.strAry = @[
                        @"《白夜行》是日本作家东野圭吾创作的长篇小说，也是其代表作。该小说于1997年1月至1999年1月间连载于期刊，单行本1999年8月在日本发行。故事围绕着一对有着不同寻常情愫的小学生展开。1973年，大阪的一栋废弃建筑内发现了一具男尸，此后19年，嫌疑人之女雪穗与被害者之子桐原亮司走上截然不同的人生道路，一个跻身上流社会，一个却在底层游走，而他们身边的人，却接二连三地离奇死去，警察经过19年的艰苦追踪，终于使真相大白。",
                        @"《放学后》是日本作家东野圭吾早期创作的推理小说，是他的成名作。1985年，《放学后》以绝对优势摘得日本推理小说界最重要的新人奖——江户川乱步奖。同年，日版单行本由讲谈社出版发行。[1]  1988年由讲谈社出版文库本。[1]  正是《放学后》的成功，使他决心走上专职写作的道路。",
                        @"“砰！”一声枪响……深夜里，一个男子侵入了一个16岁少女的房间。少女的母亲察觉到了异常，端起猎枪连开了数枪。男子后来被捕，他坚持说自己17年前就梦到将和少女结婚。他的证据，是他小学四年级时写的作文，这究竟是偶然、幻想、还是……一个已经被杀死的女子却鲜活地出现在了情人面前，真的是幽灵出现了吗？如果世间没有鬼魂，那她是……丈夫失踪了，妻子执著地寻找着，与此同时，有一处房子每天会在固定的时间里闹鬼，丈夫还活着吗？是他在……宾馆的一位房客死了，明显是被谋杀的。他的妻子很像是凶手，然而警方经过排查，却又发现了其他的线索，案件变得扑簌迷离……望着情人的尸体，各种想法在他脑海里翻腾。他见证了女子因绝望而上吊自杀的整个过程。简单的案件在警方介入后错综复杂起来，这个两天前就死过女人怎么又死了一回？浮出水面的远不止这些……让天才物理学家——汤川，来带领我们解开这些谜团吧！",
                        @"1958年2月，东野圭吾出生于日本大阪生野区。东野圭吾家里经营着一东野圭吾,东野圭吾个生意萧条，卖钟表、眼镜、贵金属等饰物的小店，他是姐弟三人中最小的一个",
                        @"东野有过一次婚史，1983年结婚，1997年离婚。《放学后》中女主人公的女高兼职教师身份即来源于其妻子",
                        @"在刑警学院任职的物理教授唐川（王凯饰）与中学数学教师石泓（张鲁一饰），年少时因对数学感兴趣而惺惺相惜，多年后唐川在协助警方调查一桩案件时，石泓的邻居陈婧（林心如饰）被警方列入嫌疑人之中，而唐川在调查此案件中发现了更大的秘密，被迫站在对立面的唐川和石泓展开了一场高智商对决，一步步推动故事走向既震撼人心的扼腕结局。",
                        @"《白夜行》是日本作家东野圭吾创作的长篇小说，也是其代表作。该小说于1997年1月至1999年1月间连载于期刊，单行本1999年8月在日本发行。故事围绕着一对有着不同寻常情愫的小学生展开。1973年，大阪的一栋废弃建筑内发现了一具男尸，此后19年，嫌疑人之女雪穗与被害者之子桐原亮司走上截然不同的人生道路，一个跻身上流社会，一个却在底层游走，而他们身边的人，却接二连三地离奇死去，警察经过19年的艰苦追踪，终于使真相大白。",
                        @"《放学后》是日本作家东野圭吾早期创作的推理小说，是他的成名作。1985年，《放学后》以绝对优势摘得日本推理小说界最重要的新人奖——江户川乱步奖。同年，日版单行本由讲谈社出版发行。[1]  1988年由讲谈社出版文库本。[1]  正是《放学后》的成功，使他决心走上专职写作的道路。",
                        @"“砰！”一声枪响……深夜里，一个男子侵入了一个16岁少女的房间。少女的母亲察觉到了异常，端起猎枪连开了数枪。男子后来被捕，他坚持说自己17年前就梦到将和少女结婚。他的证据，是他小学四年级时写的作文，这究竟是偶然、幻想、还是……一个已经被杀死的女子却鲜活地出现在了情人面前，真的是幽灵出现了吗？如果世间没有鬼魂，那她是……丈夫失踪了，妻子执著地寻找着，与此同时，有一处房子每天会在固定的时间里闹鬼，丈夫还活着吗？是他在……宾馆的一位房客死了，明显是被谋杀的。他的妻子很像是凶手，然而警方经过排查，却又发现了其他的线索，案件变得扑簌迷离……望着情人的尸体，各种想法在他脑海里翻腾。他见证了女子因绝望而上吊自杀的整个过程。简单的案件在警方介入后错综复杂起来，这个两天前就死过女人怎么又死了一回？浮出水面的远不止这些……让天才物理学家——汤川，来带领我们解开这些谜团吧！",
                        @"1958年2月，东野圭吾出生于日本大阪生野区。东野圭吾家里经营着一东野圭吾,东野圭吾个生意萧条，卖钟表、眼镜、贵金属等饰物的小店，他是姐弟三人中最小的一个",
                        @"东野有过一次婚史，1983年结婚，1997年离婚。《放学后》中女主人公的女高兼职教师身份即来源于其妻子",
                        @"在刑警学院任职的物理教授唐川（王凯饰）与中学数学教师石泓（张鲁一饰），年少时因对数学感兴趣而惺惺相惜，多年后唐川在协助警方调查一桩案件时，石泓的邻居陈婧（林心如饰）被警方列入嫌疑人之中，而唐川在调查此案件中发现了更大的秘密，被迫站在对立面的唐川和石泓展开了一场高智商对决，一步步推动故事走向既震撼人心的扼腕结局。",
                        ];
    self.imgAry = @[
                    @"http://img4.duitang.com/uploads/item/201411/12/20141112115936_zYyEc.jpeg",
                    @"http://img4.duitang.com/uploads/item/201507/14/20150714232532_HKfAV.jpeg",
                    @"http://img3.duitang.com/uploads/item/201408/25/20140825095530_Y8jdc.jpeg",
                    @"http://cdn.duitang.com/uploads/item/201509/27/20150927110109_FYMts.thumb.700_0.jpeg",
                    @"http://img3.duitang.com/uploads/item/201507/07/20150707192657_ekaGd.jpeg",
                    @"http://img4.duitang.com/uploads/item/201411/12/20141112115936_zYyEc.jpeg",
                    @"http://img4.duitang.com/uploads/item/201507/14/20150714232532_HKfAV.jpeg",
                    @"http://img3.duitang.com/uploads/item/201408/25/20140825095530_Y8jdc.jpeg",
                    @"http://cdn.duitang.com/uploads/item/201509/27/20150927110109_FYMts.thumb.700_0.jpeg",
                    @"http://img3.duitang.com/uploads/item/201507/07/20150707192657_ekaGd.jpeg",
                    @"http://img4.duitang.com/uploads/item/201411/12/20141112115936_zYyEc.jpeg",
                    @"http://img4.duitang.com/uploads/item/201507/14/20150714232532_HKfAV.jpeg",
                    @"http://img3.duitang.com/uploads/item/201408/25/20140825095530_Y8jdc.jpeg",
                    @"http://cdn.duitang.com/uploads/item/201509/27/20150927110109_FYMts.thumb.700_0.jpeg",
                    @"http://img3.duitang.com/uploads/item/201507/07/20150707192657_ekaGd.jpeg",
                    @"http://img4.duitang.com/uploads/item/201411/12/20141112115936_zYyEc.jpeg",
                    @"http://img4.duitang.com/uploads/item/201507/14/20150714232532_HKfAV.jpeg",
                    @"http://img3.duitang.com/uploads/item/201408/25/20140825095530_Y8jdc.jpeg",
                    @"http://cdn.duitang.com/uploads/item/201509/27/20150927110109_FYMts.thumb.700_0.jpeg",
                    @"http://img3.duitang.com/uploads/item/201507/07/20150707192657_ekaGd.jpeg"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.strAry.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
     [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return [tableView fd_heightForCellWithIdentifier:@"cellIdentifier" configuration:^(TableViewCell *cell) {
          [self configureCell:cell atIndexPath:indexPath];
    }];
}
- (void)configureCell:(TableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    //使用Masonry进行布局的话，这里要设置为NO
    cell.fd_enforceFrameLayout = NO;
    [cell configUI:self.strAry[indexPath.row] imageName:self.imgAry[indexPath.row]];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
