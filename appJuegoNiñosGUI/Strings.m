//
//  Strings.m
//  appJuegoNiñosGUI
//
//  Created by Alberto Flores on 14/11/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import "Strings.h"

@implementation Strings{
    int rand,cont;
}
    /*
    NSImage *oso;
    NSImage *leon;
    NSImage *vaca;
    NSImage *rana;*/

/*oso = [NSImage imageNamed:@""];
leon = [NSImage imageNamed:@""];
vaca = [NSImage imageNamed:@""];
rana = [NSImage imageNamed:@""];*/
   // rand = arc4random_uniform(5)+1;

- (IBAction)btnRefresh:(id)sender {
    rand=0;
    cont=0;
    [_txtRespuesta setStringValue:@""];
    [_imageAnimal setImage:[NSImage imageNamed:@""]];
    [_imageWrong1 setImage:[NSImage imageNamed:@""]];
    [_imageWrong2 setImage:[NSImage imageNamed:@""]];
}

- (IBAction)btnSalir:(id)sender {
    [NSApp terminate:self];
}

- (IBAction)btnAdivina:(id)sender {
    /*NSImage *perro = [NSImage alloc];
    _imageAnimal = [NSImageView alloc];
    [_imageAnimal setImage:[NSImage imageNamed:@"perro.jpg"]];*/
    
    rand = arc4random_uniform(5)+1;
    NSImage *perro = [NSImage imageNamed:@"perro"];
    NSImage *oso = [NSImage imageNamed:@"oso"];
    NSImage *leon = [NSImage imageNamed:@"leon"];
    NSImage *vaca = [NSImage imageNamed:@"vaca"];
    NSImage *rana = [NSImage imageNamed:@"rana"];
    
    
    switch (rand) {
        case 1:
            [_imageAnimal setImage:perro];
                [_imageAnimal setImageScaling:NSImageScaleAxesIndependently];
                [_imageAnimal setImageAlignment:NSImageAlignCenter];
                [_imageAnimal addSubview:perro];
            break;
        case 2:
        [_imageAnimal setImage:oso];
            [_imageAnimal setImageScaling:NSImageScaleAxesIndependently];
            [_imageAnimal setImageAlignment:NSImageAlignCenter];
            [_imageAnimal addSubview:oso];
            break;
        case 3:
        [_imageAnimal setImage:leon];
            [_imageAnimal setImageScaling:NSImageScaleAxesIndependently];
            [_imageAnimal setImageAlignment:NSImageAlignCenter];
            [_imageAnimal addSubview:leon];
        break;
        case 4:
        [_imageAnimal setImage:vaca];
            [_imageAnimal setImageScaling:NSImageScaleAxesIndependently];
            [_imageAnimal setImageAlignment:NSImageAlignCenter];
            [_imageAnimal addSubview:vaca];
        break;
        case 5:
        [_imageAnimal setImage:rana];
            [_imageAnimal setImageScaling:NSImageScaleAxesIndependently];
            [_imageAnimal setImageAlignment:NSImageAlignCenter];
            [_imageAnimal addSubview:rana];
        break;
        default:
            break;
    }
    
    /*NSImage *perro = [NSImage imageNamed:@"perro"];
    
    
    [_imageAnimal setImage:perro];
    [_imageAnimal setImageScaling:NSImageScaleAxesIndependently];
    [_imageAnimal setImageAlignment:NSImageAlignCenter];
    [_imageAnimal addSubview:perro];*/
}

- (IBAction)btnRespuesta:(id)sender {
    //int rand = arc4random_uniform(5)+1;
    NSAlert *alert = [[NSAlert alloc] init];
    NSImage *check = [NSImage imageNamed:@"check"];
    NSImage *wrong = [NSImage imageNamed:@"wrong"];
    NSBeep();
    //cont = 0;
    //char cadena[100];
    NSString *animal = [_txtRespuesta stringValue];
    //animal = [NSString stringWithCString:cadena encoding:NSASCIIStringEncoding];
         if(rand == 1){
                if ([animal isEqualToString:@"perro"] || [animal isEqualToString:@"PERRO"]){
                    [alert setMessageText:@"CORRECT.!"];
                    [alert setIcon:check];
                    [alert addButtonWithTitle:@"Continue..."];
                    [alert runModal];
                }else{
                    [alert setMessageText:@"INCORRECT.!"];
                    [alert setIcon:wrong];
                    [alert addButtonWithTitle:@"Continue.?"];
                    cont++;
                    [alert setInformativeText:[NSString stringWithFormat:@"You have %d errors. (You have max 3 attempts.)",cont]];
                    [alert runModal];
                }
            }
       else if (rand == 2){
                if ([animal isEqualToString:@"OSO"] || [animal isEqualToString:@"oso"]){
                    [alert setMessageText:@"CORRECT.!"];
                    [alert setIcon:check];
                    [alert addButtonWithTitle:@"Continue..."];
                    [alert runModal];
                }else{
                    [alert setMessageText:@"INCORRECT.!"];
                    [alert setIcon:wrong];
                    [alert addButtonWithTitle:@"Continue.?"];
                    cont++;
                    [alert setInformativeText:[NSString stringWithFormat:@"You have %d errors. (You have max 3 attempts.)",cont]];
                    [alert runModal];
                    
                }
            }
       else if (rand == 3){
            if ([animal isEqualToString:@"LEON"] || [animal isEqualToString:@"leon"]){
                [alert setMessageText:@"CORRECT.!"];
                [alert setIcon:check];
                [alert addButtonWithTitle:@"Continue..."];
                [alert runModal];
            }else{
                [alert setMessageText:@"INCORRECT.!"];
                [alert setIcon:wrong];
                [alert addButtonWithTitle:@"Continue..."];
                cont++;
                [alert setInformativeText:[NSString stringWithFormat:@"You have %d errors. (You have max 3 attempts.)",cont]];
                [alert runModal];
                }
        }
       else if (rand == 4){
            if ([animal isEqualToString:@"vaca"] || [animal isEqualToString:@"VACA"]){
                [alert setMessageText:@"CORRECT.!"];
                [alert setIcon:check];
                [alert addButtonWithTitle:@"Continue..."];
                [alert runModal];
            }else{
                [alert setMessageText:@"INCORRECT.!"];
                [alert setIcon:wrong];
                [alert addButtonWithTitle:@"Continue..."];
                cont++;
                [alert setInformativeText:[NSString stringWithFormat:@"You have %d errors. (You have max 3 attempts.)",cont]];
                [alert runModal];
                }
            }
       else if (rand == 5){
            if ([animal isEqualToString:@"rana"] || [animal isEqualToString:@"RANA"]){
                [alert setMessageText:@"CORRECT.!"];
                [alert setIcon:check];
                [alert addButtonWithTitle:@"Continue..."];
                [alert runModal];
            }else{
                [alert setMessageText:@"INCORRECT.!"];
                [alert setIcon:wrong];
                [alert addButtonWithTitle:@"Continue..."];
                cont++;
                [alert setInformativeText:[NSString stringWithFormat:@"You have %d errors. (You have max 3 attempts.)",cont]];
                [alert runModal];
            }
        }
        if (cont==1 && cont != 3)
            [_imageWrong1 setImage:[NSImage imageNamed:@"wrong"]];
        else if(cont==2 && cont != 3)
            [_imageWrong2 setImage:[NSImage imageNamed:@"wrong"]];
    

    if (cont == 3) {
        [alert setMessageText:@"GAME OVER.!!! ☠️"];
        [alert setInformativeText:@"LOSER"];
        [alert addButtonWithTitle:@"Quit"];
        [alert addButtonWithTitle:@"Play Again.?"];
        
        if ([alert runModal] == NSAlertSecondButtonReturn)
            [NSApp terminate:self];
        else if ([alert runModal] == NSAlertFirstButtonReturn)
            rand=0;
            cont=0;
            [_txtRespuesta setStringValue:@""];
            [_imageAnimal setImage:[NSImage imageNamed:@""]];
            [_imageWrong1 setImage:[NSImage imageNamed:@""]];
            [_imageWrong2 setImage:[NSImage imageNamed:@""]];
    }
}
@end
