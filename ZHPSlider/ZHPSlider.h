//
//  ZHPSlider.h
//  ZHPSlider
//
//  Created by 朱慧平 on 16/7/29.
//  Copyright © 2016年 Crystal. All rights reserved.
//

#import <UIKit/UIKit.h>
//slider的方向
typedef NS_ENUM(NSInteger,DirectionType) {
    DirectionHorizontal = 0,
    DirectionVertical = 1,
};
//slider的排序
typedef NS_ENUM(NSInteger,SortType) {
    SortPositive = 0,
    SortReverse = 1,
};

@interface ZHPSlider : UIControl{
    BOOL _thumbOn; //bool值用于表示是否选中滑块，也可以根据个人需求删除该设置
}
@property(nonatomic) float value; //当前值
@property(nonatomic) float minimumValue; //最小值
@property(nonatomic) float maximumValue; //最大值
@property(nonatomic) SortType sortType; //排序方式
@property(nonatomic) DirectionType directionType; //显示方向
@property(nonatomic,strong)UIImageView *backgroundImageView; //背景
@property(nonatomic,strong)UIImageView *thumbImageView; //用来滑动的imageView
@property(nonatomic) UILabel *labelOnThumb; //滑块上的label
@property(nonatomic) UILabel *labelAboveThumb; //滑块上方或右边的label
@property(nonatomic) int decimalPlaces;//设置显示当前值小数点后几位
@end
