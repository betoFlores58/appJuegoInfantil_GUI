//
//  Strings.h
//  appJuegoNiñosGUI
//
//  Created by Alberto Flores on 14/11/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>


NS_ASSUME_NONNULL_BEGIN

@interface Strings : NSObject

@property (retain) IBOutlet NSImageView *imageAnimal;
@property (retain) IBOutlet NSImageView *imageWrong1;
@property (retain) IBOutlet NSImageView *imageWrong2;

@property (weak) IBOutlet NSTextField *txtRespuesta;

- (IBAction)btnRespuesta:(id)sender;
- (IBAction)btnAdivina:(id)sender;
- (IBAction)btnSalir:(id)sender;
- (IBAction)btnRefresh:(id)sender;


@end

NS_ASSUME_NONNULL_END
