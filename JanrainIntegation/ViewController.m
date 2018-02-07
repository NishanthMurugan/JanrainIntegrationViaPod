//
//  ViewController.m
//  JanrainIntegation
//
//  Created by Nishanth on 06/02/18.
//

#import "ViewController.h"
#import <AppAuth/AppAuth.h>
#import <Janrain/JRCapture.h>
#import <Janrain/JRCaptureConfig.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"view appear");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    JRCaptureConfig *config = [JRCaptureConfig emptyCaptureConfig];
    config.engageAppId =  @"appcfamhnpkagijaeinl";
    config.captureDomain = @"mobile-dev.janraincapture.com";
    config.captureClientId = @"9vt2ej43mxyftkf68c3xthkm2rtweg8w";
    config.captureLocale = @"en-US";
    config.captureFlowName = @"standard";
    config.captureFlowVersion = @"HEAD";
    config.captureSignInFormName = @"signInForm";
    config.captureTraditionalSignInType = JRTraditionalSignInEmailPassword;
    config.enableThinRegistration = NO;
    config.customProviders = nil;
    config.captureSocialRegistrationFormName = @"socialRegistrationForm";
    config.captureAppId = @"rz47skmnm48jpcv3bh4eguv4b8";
    
    static dispatch_once_t once;
    dispatch_once(&once, ^ {
        [JRCapture setCaptureConfig:config];
    });
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)facebook:(id)sender {
    [JRCapture startEngageSignInDialogOnProvider:@"facebook" forDelegate:nil];
}

- (IBAction)twitter:(id)sender {
    [JRCapture startEngageSignInDialogOnProvider:@"twitter" forDelegate:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
