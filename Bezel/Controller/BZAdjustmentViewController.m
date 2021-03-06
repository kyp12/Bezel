//
//  BZAdjustmentViewController.m
//  Bezel
//
//  Created by John Clem on 12/4/12.
//  Copyright (c) 2012 Mind Diaper. All rights reserved.
//

#import "BZAdjustmentViewController.h"
#import "GPUImageExposure+Contrast.h"

@interface BZAdjustmentViewController ()
@property (strong, nonatomic) NSArray *adjustmentButtons;
@end

@implementation BZAdjustmentViewController

@synthesize scrollHeight = _scrollHeight;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGFloat width       = self.view.frame.size.width;
    CGFloat height       = self.view.frame.size.height;
    CGFloat btnOffset   = (height-100.f)/2.f;
    CGFloat btnWidth    = width/2.f;
    CGFloat btnHeight   = height/2.f;
    
    BZButton *leftBar  = [[BZButton alloc] initWithFrame:CGRectMake(0, btnOffset, btnWidth, btnHeight)];
    BZButton *rightBar = [[BZButton alloc] initWithFrame:CGRectMake(160, btnOffset, btnWidth, btnHeight)];
    BZButton *expUp    = [[BZButton alloc] initWithFrame:CGRectMake(leftBar.center.x-80, leftBar.center.y-(btnOffset+22), btnWidth, 44)];
    BZButton *expDown  = [[BZButton alloc] initWithFrame:CGRectMake(leftBar.center.x-80, leftBar.center.y+22, btnWidth, 44)];
    BZButton *contUp   = [[BZButton alloc] initWithFrame:CGRectMake(rightBar.center.x-80, rightBar.center.y-(btnOffset+22), btnWidth, 44)];
    BZButton *contDown = [[BZButton alloc] initWithFrame:CGRectMake(rightBar.center.x-80, rightBar.center.y+22, btnWidth, 44)];
    
    self.adjustmentButtons = [NSArray arrayWithObjects: expUp, expDown, contUp, contDown, nil];
    
    expUp.buttonIdentifier = kButtonIdentifierBrightnessUp;
    expDown.buttonIdentifier = kButtonIdentifierBrightnessDown;
    contUp.buttonIdentifier = kButtonIdentifierContrastUp;
    contDown.buttonIdentifier = kButtonIdentifierContrastDown;
    
    [expUp setTag:17];
    [expDown setTag:18];
    [contUp setTag:19];
    [contDown setTag:20];
    [leftBar setTag:21];
    [rightBar setTag:22];
    
    [leftBar setEnabled:NO];
    [leftBar setShowsTouchWhenHighlighted:NO];
    [rightBar setEnabled:NO];
    [rightBar setShowsTouchWhenHighlighted:NO];
    
    [self.view addSubview:expUp];
    [self.view addSubview:expDown];
    [self.view addSubview:contUp];
    [self.view addSubview:contDown];
    [self.view addSubview:leftBar];
    [self.view addSubview:rightBar];
}

@end
