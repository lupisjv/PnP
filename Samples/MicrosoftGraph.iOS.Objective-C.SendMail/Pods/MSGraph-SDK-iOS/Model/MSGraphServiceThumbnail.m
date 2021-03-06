/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceThumbnail
 *
 */
@implementation MSGraphServiceThumbnail


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"content", @"content", @"height", @"height", @"url", @"url", @"width", @"width", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.thumbnail";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_content = (![dic objectForKey: @"content"] || [ [dic objectForKey: @"content"] isKindOfClass:[NSNull class]] )?_content:nil/*NSStream*/;
		_height = (![dic objectForKey: @"height"] || [ [dic objectForKey: @"height"] isKindOfClass:[NSNull class]] )?_height:[[dic objectForKey: @"height"] intValue];
		_url = (![dic objectForKey: @"url"] || [ [dic objectForKey: @"url"] isKindOfClass:[NSNull class]] )?_url:[[dic objectForKey: @"url"] copy];
		_width = (![dic objectForKey: @"width"] || [ [dic objectForKey: @"width"] isKindOfClass:[NSNull class]] )?_width:[[dic objectForKey: @"width"] intValue];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = nil/*NSStream*/;if (curVal!=nil) [dic setValue: curVal forKey: @"content"];}
	{[dic setValue: [NSNumber numberWithInt: self.height] forKey: @"height"];}
	{id curVal = [self.url copy];if (curVal!=nil) [dic setValue: curVal forKey: @"url"];}
	{[dic setValue: [NSNumber numberWithInt: self.width] forKey: @"width"];}
    [dic setValue: @"#microsoft.graph.thumbnail" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.content;
    if([self.updatedValues containsObject:@"content"])
    {
                [dic setValue: curVal==nil?[NSNull null]:nil/*NSStream*/ forKey: @"content"];
            }
    }
 if([self.updatedValues containsObject:@"height"])
            { [dic setValue: [NSNumber numberWithInt: self.height] forKey: @"height"];
}	{id curVal = self.url;
    if([self.updatedValues containsObject:@"url"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"url"];
            }
    }
 if([self.updatedValues containsObject:@"width"])
            { [dic setValue: [NSNumber numberWithInt: self.width] forKey: @"width"];
}    return dic;
}


/** Setter implementation for property content
 *
 */
- (void) setContent: (NSStream *) value {
    _content = value;
    [self valueChangedFor:@"content"];
}
       
/** Setter implementation for property height
 *
 */
- (void) setHeight: (int) value {
    _height = value;
    [self valueChangedFor:@"height"];
}
       
/** Setter implementation for property url
 *
 */
- (void) setUrl: (NSString *) value {
    _url = value;
    [self valueChangedFor:@"url"];
}
       
/** Setter implementation for property width
 *
 */
- (void) setWidth: (int) value {
    _width = value;
    [self valueChangedFor:@"width"];
}
       

@end
