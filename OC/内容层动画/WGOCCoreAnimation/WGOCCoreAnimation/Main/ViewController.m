//
//  ViewController.m
//  WGOCAnimationPrimary
//
//  Created by wanggang on 2019/5/21.
//  Copyright © 2019 bozhong. All rights reserved.
//

#import "ViewController.h"
#import "WGCALayerAnimationViewController.h"
#import "WGWaterWaveBtnViewController.h"
#import "WGCircleBtnAniViewController.h"
#import "WGFireAniViewController.h"
#import "WGNeonAniViewController.h"
#import "WGSnowAniViewController.h"
#import "WGScanAniViewController.h"
#import "WGBeatAniViewController.h"
#import "WGChartAniViewController.h"
#import "WGEarthAniViewController.h"
#import "WGReplicatorViewController.h"
#import "WGCoverFlowViewController.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"列表";
    
    self.dataArr = @[@"基础和关键帧动画", @"水纹动画", @"渐进圆环效果", @"大火动画", @"霓虹效果", @"大雪效果", @"扫描动画", @"跳动动画", @"CAShapeLayer动画", @"地球公转", @"跳动的音符", @"CoverFlow效果"];
    [self.view addSubview:self.tableView];
    
}

#pragma mark --<UITableViewDelegate, UITableViewDataSource>方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:{
            
            WGCALayerAnimationViewController *vc = [[WGCALayerAnimationViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 1:{
            
            WGWaterWaveBtnViewController *vc = [[WGWaterWaveBtnViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 2:{
            
            WGCircleBtnAniViewController *vc = [[WGCircleBtnAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 3:{
            
            WGFireAniViewController *vc = [[WGFireAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 4:{
            
            WGNeonAniViewController *vc = [[WGNeonAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 5:{
            
            WGSnowAniViewController *vc = [[WGSnowAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 6:{
            
            WGScanAniViewController *vc = [[WGScanAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 7:{
            
            WGBeatAniViewController *vc = [[WGBeatAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 8:{
            
            WGChartAniViewController *vc = [[WGChartAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 9:{
            
            WGEarthAniViewController *vc = [[WGEarthAniViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 10:{
            
            WGReplicatorViewController *vc = [[WGReplicatorViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 11:{
            
            WGCoverFlowViewController *vc = [[WGCoverFlowViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        default:{
            
            break;
        }
    }
}

-(UITableView *)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, Height_NavBar, SCREEN_WIDTH, SCREEN_HEIGHT-Height_NavBar) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    }
    return _tableView;
}


@end
