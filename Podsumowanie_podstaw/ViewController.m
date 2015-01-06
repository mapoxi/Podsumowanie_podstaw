//
//  ViewController.m
//  Podsumowanie_podstaw
//
//  Created by Piotr Mlynarski on 02.01.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize dzialanie, wynik, ciag, czlon1, czlon2, znak;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ciag = [NSString stringWithFormat:@"%@",@""]; //do poprawy - albo już nie xD
    czlon1 = [NSString stringWithFormat:@"%@",@""];
    czlon2 = [NSString stringWithFormat:@"%@",@""];
    znak = [NSString stringWithFormat:@"%@",@""];
}

- (void)przyjecie_danych:(NSString *)przycisk{
    
    if([przycisk isEqualToString:@"1"] ||
       [przycisk isEqualToString:@"2"] ||
       [przycisk isEqualToString:@"3"] ||
       [przycisk isEqualToString:@"4"] ||
       [przycisk isEqualToString:@"5"] ||
       [przycisk isEqualToString:@"6"] ||
       [przycisk isEqualToString:@"7"] ||
       [przycisk isEqualToString:@"8"] ||
       [przycisk isEqualToString:@"9"] ||
       [przycisk isEqualToString:@"0"] ||
       [przycisk isEqualToString:@"."])
    {
        
        if ([znak isEqual:@""]) {
            czlon1 = [NSString stringWithFormat:@"%@%@", czlon1, przycisk];
            wynik.text = [NSString stringWithFormat:@"%@", @""];
        }
        else{
            czlon2 = [NSString stringWithFormat:@"%@%@", czlon2, przycisk];
        }
        
        ciag = [NSString stringWithFormat:@"%@%@%@", czlon1, znak, czlon2];
        dzialanie.text = ciag;
    }
    else if([przycisk isEqualToString:@"+"] ||
            [przycisk isEqualToString:@"-"] ||
            [przycisk isEqualToString:@"*"] ||
            [przycisk isEqualToString:@"/"] )
    {
        znak = [NSString stringWithFormat:@"%@",przycisk];
        ciag = [NSString stringWithFormat:@"%@%@%@", czlon1, znak, czlon2];
        dzialanie.text = ciag;
    }
    else if ([przycisk isEqualToString:@"c"]){
        wynik.text = [NSString stringWithFormat:@"%@",@""];
        dzialanie.text = [NSString stringWithFormat:@"%@", @""];
        ciag = [NSString stringWithFormat:@"%@",@""];
        czlon1 = [NSString stringWithFormat:@"%@",@""];
        czlon2 = [NSString stringWithFormat:@"%@",@""];
        znak = [NSString stringWithFormat:@"%@",@""];
    }
    
    else if ([przycisk isEqualToString:@"wstecz"]){
        if (![czlon2 isEqualToString:@""]) {
                //NSLog(@"%@", czlon2);
            czlon2 = [czlon2 substringToIndex:[czlon2 length]-1];
            ciag = [NSString stringWithFormat:@"%@%@%@", czlon1, znak, czlon2];
            dzialanie.text = ciag;
                //NSLog(@"Po zmianie: %@", czlon2);
                //NSLog(@"Długość ciągu: %lu", [czlon2 length]);
        }
        else if (![znak isEqualToString:@""]){
            znak = @"";
            ciag = [NSString stringWithFormat:@"%@%@%@", czlon1, znak, czlon2];
            dzialanie.text = ciag;
        }
        else if (![czlon1 isEqualToString:@""]){
            czlon1 = [czlon1 substringToIndex:[czlon1 length]-1];
            ciag = [NSString stringWithFormat:@"%@%@%@", czlon1, znak, czlon2];
            dzialanie.text = ciag;
            }
            
        else wynik.text = @"Już bardziej nie cofniesz xD";
    }
    
    else {
        if ([znak isEqual:@"+"])
            wynik.text =  [NSString stringWithFormat:@"%f",czlon1.doubleValue + czlon2.doubleValue];
        else if ([znak isEqual:@"-"])
            wynik.text =  [NSString stringWithFormat:@"%f",czlon1.doubleValue - czlon2.doubleValue];
        else if ([znak isEqual:@"/"]){
            if ([czlon2 isEqual:@"0"]) {
                wynik.text = @"Pamiętaj cholero nie dziel przez ZERO!";
            }
            else
                wynik.text =  [NSString stringWithFormat:@"%f",czlon1.doubleValue / czlon2.doubleValue];
        }
        else
            wynik.text =  [NSString stringWithFormat:@"%f",czlon1.doubleValue * czlon2.doubleValue];
        
        ciag = [NSString stringWithFormat:@"%@",@""];
        czlon1 = [NSString stringWithFormat:@"%@",@""];
        czlon2 = [NSString stringWithFormat:@"%@",@""];
        znak = [NSString stringWithFormat:@"%@",@""];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jeden{
    [self przyjecie_danych:@"1"];
}

- (IBAction)dwa{
    [self przyjecie_danych:@"2"];
}

- (IBAction)trzy{
    [self przyjecie_danych:@"3"];
}

- (IBAction)cztery{
    [self przyjecie_danych:@"4"];
}

- (IBAction)piec{
    [self przyjecie_danych:@"5"];
}

- (IBAction)szesc{
    [self przyjecie_danych:@"6"];
}

- (IBAction)siedem{
    [self przyjecie_danych:@"7"];
}

- (IBAction)osiem{
    [self przyjecie_danych:@"8"];
}

- (IBAction)dziewiec{
    [self przyjecie_danych:@"9"];
}

- (IBAction)zero{
    [self przyjecie_danych:@"0"];
}

- (IBAction)dodaj{
    [self przyjecie_danych:@"+"];
}

- (IBAction)odejmij{
    [self przyjecie_danych:@"-"];
}

- (IBAction)podziel{
    [self przyjecie_danych:@"/"];
}

- (IBAction)pomnoz{
    [self przyjecie_danych:@"*"];
}

- (IBAction)suma{
    [self przyjecie_danych:@"="];
}

-(IBAction)przecinek{
    [self przyjecie_danych:@"."];
}
-(IBAction)c{
    [self przyjecie_danych:@"c"];
}
-(IBAction)wstecz{
    [self przyjecie_danych:@"wstecz"];
}


@end
