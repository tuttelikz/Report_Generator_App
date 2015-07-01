//
//  PDFRenderer.h
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 7/1/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>

@interface PDFRenderer : NSObject

+(void)drawText:(NSString *)pdfFileName;

@end
