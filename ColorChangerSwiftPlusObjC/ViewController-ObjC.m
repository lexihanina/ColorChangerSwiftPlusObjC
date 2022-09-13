//
//  ViewController-ObjC.m
//  ColorChangerSwiftPlusObjC
//
//  Created by Lexi Hanina on 2/4/22.
//

#import "ViewController-ObjC.h"

@interface ViewController_ObjC ()

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UILabel *redLable;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLable;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@end

@implementation ViewController_ObjC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) changeBackroundColorWithRed:(CGFloat)red
                               green:(CGFloat)green
                                blue:(CGFloat)blue {
    _colorView.backgroundColor = [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:1];
}

- (IBAction)sliderChanged:(id)sender {
    CGFloat red = _redSlider.value;
    CGFloat green = _greenSlider.value;
    CGFloat blue = _blueSlider.value;
    
    int redRounded = (int)roundf(red);
    int greenRounded = (int)roundf(green);
    int blueRounded = (int)roundf(blue);
    
    _redLable.text = [NSString stringWithFormat:@"%i", redRounded];
    _greenLabel.text = [NSString stringWithFormat:@"%i", greenRounded];
    _blueLable.text = [NSString stringWithFormat:@"%i", blueRounded];
    
    [self changeBackroundColorWithRed:red green:green blue:blue];
}

@end
