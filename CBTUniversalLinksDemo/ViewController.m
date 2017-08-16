//
//  ViewController.m
//  CBTUniversalLinksDemo
//
//  Created by 陈波涛 on 2017/8/4.
//  Copyright © 2017年 microfastup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",[self getDataBaseFileDirectoryInSandBox]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *)getDataBaseFileDirectoryInSandBox
{
    NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentFolderPath = [searchPaths objectAtIndex:0];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isExist = [fileManager fileExistsAtPath:documentFolderPath];
    
    if (!isExist) {
        //创建路径.
        [fileManager createDirectoryAtPath:documentFolderPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    return documentFolderPath;
}

@end
