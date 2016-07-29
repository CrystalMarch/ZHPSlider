//
//  ViewController.m
//  ZHPSlider
//
//  Created by 朱慧平 on 16/7/29.
//  Copyright © 2016年 Crystal. All rights reserved.
//

#import "ViewController.h"
#import "ZHPSlider.h"
@interface ViewController ()
@property (nonatomic,strong)UILabel *textLable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    [self addVerticalReverseSlider];
    [self addVerticalPositiveSlider];
    [self addHorizontalReverseSlider];
    [self addHorizontalPositiverSlider];
    
    _textLable = [[UILabel alloc] initWithFrame:CGRectMake(100, 0, 100, 100)];
    [self.view addSubview:_textLable];
}
- (void)addVerticalReverseSlider{
     ZHPSlider *slider = [[ZHPSlider alloc] initWithFrame:CGRectMake(100, 100, 30, 300)];
    slider.directionType = DirectionVertical;
    slider.sortType = SortReverse;
    slider.decimalPlaces = 2;
    slider.minimumValue = 50.0f;
    slider.maximumValue = 100.0f;
    slider.value = 60.0f;// 此处注意value要在设置好decimalPlaces，maximumValue和minimumValue以后设置哦！
    slider.labelOnThumb.font = [UIFont systemFontOfSize:12];
    
    slider.backgroundImageView.image = [UIImage imageNamed:@"11"];
   
    slider.thumbImageView.image = [UIImage imageNamed:@"thumb"];
    [self.view addSubview:slider];
    [slider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
}
- (void)addVerticalPositiveSlider{
    ZHPSlider *slider = [[ZHPSlider alloc] initWithFrame:CGRectMake(200, 100, 30, 300)];
    slider.directionType = DirectionVertical;
    slider.sortType = SortPositive;
   
    slider.minimumValue = 50.0f;
    slider.maximumValue = 100.0f;
    slider.value = 60.0f;
    slider.backgroundImageView.image = [UIImage imageNamed:@"11"];
    slider.thumbImageView.image = [UIImage imageNamed:@"thumb"];
    [self.view addSubview:slider];
}
- (void)addHorizontalPositiverSlider{
    ZHPSlider *slider = [[ZHPSlider alloc] initWithFrame:CGRectMake(10, 450, 300, 30)];
//    slider.directionType = DirectionVertical;
//    slider.sortType = SortReverse;
   
    slider.minimumValue = 50.0f;
    slider.maximumValue = 100.0f;
    slider.value = 60.0f;
    slider.backgroundImageView.image = [UIImage imageNamed:@"11"];
    slider.thumbImageView.image = [UIImage imageNamed:@"thumb"];
    [self.view addSubview:slider];
}
- (void)addHorizontalReverseSlider{
    ZHPSlider *slider = [[ZHPSlider alloc] initWithFrame:CGRectMake(10, 550, 300, 30)];
//    slider.directionType = DirectionVertical;
    slider.sortType = SortReverse;
  
    slider.minimumValue = 50.0f;
    slider.maximumValue = 100.0f;
    slider.value = 60.0f;
    slider.backgroundImageView.image = [UIImage imageNamed:@"11"];
    slider.thumbImageView.image = [UIImage imageNamed:@"thumb"];
    [self.view addSubview:slider];
}
- (void)sliderValueChange:(ZHPSlider *)slider{
//    NSLog(@"%.2f",slider.value);
    _textLable.text = [NSString stringWithFormat:@"%.2f",slider.value];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
