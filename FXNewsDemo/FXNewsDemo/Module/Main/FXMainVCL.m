//
//  FXMainVCL.m
//  FXNewsDemo
//
//  Created by 苏敏杰 on 2017/10/25.
//  Copyright © 2017年 苏敏杰. All rights reserved.
//

#import "FXMainVCL.h"

@interface FXMainVCL ()

@end

@implementation FXMainVCL

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    http://www.mobibounty.com/upload/uploadBase64
//    base64Data
//    fileType
    

    
//    NSURLSessionUploadTask *uploadTask = [session uploadTaskWithRequest:request fromData:<#(nullable NSData *)#> completionHandler:<#^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)completionHandler#>]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1Clicked:(id)sender {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:1];
//    [dict setObject:nil forKey:@"1"];
    NSLog(@"button1");
    
    NSURL *url = [NSURL URLWithString:@"http://www.mobibounty.com/upload/uploadBase64"];
    
    UIImage *image = [UIImage imageNamed:@"750x1334_01.jpg"];
    NSData *data = UIImageJPEGRepresentation(image, 0.8f);
    NSString *base64ImageStr = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    base64ImageStr = [base64ImageStr stringByReplacingOccurrencesOfString:@"+"withString:@"%2B"];
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    NSString *body = [NSString stringWithFormat:@"base64Data=%@&fileType=jpg",base64ImageStr];
    request.HTTPBody = [body dataUsingEncoding:NSUTF8StringEncoding];

    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"$=%@, resStr = %@",response,responseString);
    }];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
//    NSDictionary *parameter = @{@"base64Data":base64ImageStr,
//                                @"fileType":@"jpg"
//                                };
//    request.HTTPBody = [NSJSONSerialization dataWithJSONObject:parameter
//                                                       options:NSJSONWritingPrettyPrinted
//                                                         error:nil];
//
//    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
//        NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        NSLog(@"$=%@, resStr = %@",response,responseString);
//    }];
    [task resume];
    
}
- (IBAction)button2Clicked:(id)sender {
    NSLog(@"button2");
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
