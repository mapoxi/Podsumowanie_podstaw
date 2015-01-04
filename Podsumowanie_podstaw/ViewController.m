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
@synthesize dzialanie, wynik, ciag;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ciag = @""; //do poprawy
     
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
       [przycisk isEqualToString:@","])
    {NSLog(@"Kliknęliśny cyfrę");
    //ciag = [ciag stringByAppendingString:przycisk];
    //NSLog(@"%@", ciag);
    }
    else if([przycisk isEqualToString:@"+"] ||
            [przycisk isEqualToString:@"-"] ||
            [przycisk isEqualToString:@"*"] ||
            [przycisk isEqualToString:@"/"] )
    {
        NSLog(@"Wybrano działanie");
    }
    else {NSLog(@"Wybrano równa sie");
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
    [self przyjecie_danych:@","];
}


@end
