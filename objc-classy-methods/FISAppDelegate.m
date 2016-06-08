//  FISAppDelegate.m

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //Code-Along I
    // A) NSString
    NSString *katherine = @"Katherine";
    
    NSString *katherineHepburn = [ katherine stringByAppendingString:@" Hepburn" ] ;
    
    NSLog(@"%@", katherineHepburn) ;
    
    // B) Init Method
    NSString *james = @"James";
    NSString *jamesStewart = [ [ NSString alloc]initWithFormat:@"%@ %@", james, @"Stewart" ] ;
    NSLog(@"%@", jamesStewart );
    
    // C) Class Method
    NSString *queen = @"Queen" ;
    NSString *queenElizabethII = [ NSString stringWithFormat:@"%@ %@ %@", queen, @"Elizabeth", @"II" ] ;
    NSLog(@"%@", queenElizabethII);
    
    //Code-Along II
    // A) Array Literal
    NSArray *classyThings = @[ @"monocle", @"top hat", @"martini glass" ] ;
    NSLog(@"%@", classyThings) ;
    
    // B) Initializer Method
    NSArray *classyPeople = [ [ NSArray alloc ] initWithObjects:@"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II", nil] ;
    NSLog(@"%@", classyPeople);
    
    // C) Class Method
    NSArray *classyDrinks = [ NSArray arrayWithObjects:@"Old Fashioned", @"Churchill Martini", @"Prosecco", nil];
    NSLog(@"%@", classyDrinks);
    
    //Code-Along II
    // Dictionary Literal
    NSDictionary *classyByLiteral = @{@"classy things" : @[ @"monocle", @"top hat", @"martini glass" ],
                                      @"classy people" : @[ @"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II" ],
                                      @"classy drinks" : @[ @"Old Fashioned", @"Churchill Martini", @"Prosecco"]
                                      };
    NSLog(@"%@", classyByLiteral);
    
    // B) Initializer Method
    NSDictionary *classyByInit = [ [ NSDictionary alloc ] initWithObjectsAndKeys:classyThings, @"classy things", classyPeople, @"classy people", classyDrinks, @"classy drinks", nil ] ;
    NSLog(@"%@", classyByInit);
    
    // C) Class Method
    NSDictionary *classyByClass = [ NSDictionary dictionaryWithObjects:@[ classyThings, classyPeople, classyDrinks ] forKeys:@[ @"classy things", @"classy people", @"classy drinks" ] ];
    NSLog(@"%@", classyByClass);
    
    
    
    
    
    return YES;
}

@end
