//
//  ViewController.h
//  Podsumowanie_podstaw
//
//  Created by Piotr Mlynarski on 02.01.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    UILabel *dzialanie;
    UILabel *wynik;
    NSMutableString *ciag;
    
}

@property (nonatomic, retain) IBOutlet UILabel *dzialanie;
@property (nonatomic, retain) IBOutlet UILabel *wynik;
@property (nonatomic) NSMutableString *ciag;

-(IBAction)jeden;
-(IBAction)dwa;
-(IBAction)trzy;
-(IBAction)cztery;
-(IBAction)piec;
-(IBAction)szesc;
-(IBAction)siedem;
-(IBAction)osiem;
-(IBAction)dziewiec;
-(IBAction)zero;
-(IBAction)dodaj;
-(IBAction)odejmij;
-(IBAction)podziel;
-(IBAction)pomnoz;
-(IBAction)suma;
-(IBAction)przecinek;

@end

