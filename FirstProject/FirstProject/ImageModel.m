//
//  ImageModel.m
//  FirstProject
//
//  Created by Larry Yu on 9/5/23.
//

#import "ImageModel.h"
@interface ImageModel ()

@property (strong, nonatomic) NSArray* imageNames;
@property (strong, nonatomic) NSDictionary* imageNameDict;

@end

@implementation ImageModel;

@synthesize imageNames = _imageNames;
@synthesize imageNameDict = _imageNameDict;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    } );
    return _sharedInstance;
}

-(NSArray*) imageNames{
    if(!_imageNames)
        _imageNames = @[@"Bill",@"Eric",@"Jeff",@"jim",@"sam",@"phil"];
    
    return _imageNames;
}

-(NSDictionary*) imageNameDict{
    if(!_imageNameDict)
        _imageNameDict =  @{@"Bill": [UIImage imageNamed:@"Bill"],
                            @"Eric": [UIImage imageNamed:@"Eric"],
                            @"Jeff": [UIImage imageNamed:@"Jeff"],
                            @"jim": [UIImage imageNamed:@"jim"],
                            @"sam": [UIImage imageNamed:@"sam"],
                            @"phil": [UIImage imageNamed:@"phil"]
        };

    return _imageNameDict;
}


-(UIImage*)getImageWithName:(NSString*)name{
    return self.imageNameDict[name];
}

-(UIImage*)getImageWithIndex:(NSInteger)index{
    return self.imageNameDict[self.imageNames[index]];
}

-(NSInteger)numberOfImages{
    return self.imageNameDict.count;
}

-(NSString*)getImageNameForIndex:(NSInteger)index{
    return self.imageNames[index];
}

@end
