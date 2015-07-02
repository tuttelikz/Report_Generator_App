//
//  PDFRenderer.h
//  PDFRenderer
//
//  Created by Ray Wenderlich on 12/5/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>

@interface PDFRenderer : NSObject

+(void)drawPDF:(NSString*)fileName;
+(void)drawText:(NSString*)pdfFileName;
+(void)drawLineFromPoint:(CGPoint)from toPoint:(CGPoint)to;

@end
