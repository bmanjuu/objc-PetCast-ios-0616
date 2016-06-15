//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISPet.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *mochiTheDog = [[FISDog alloc] init];
    NSLog(@"Mochi the dog goes: %@", [mochiTheDog makeASound]);
    NSLog(@"Go fetch the mail Mochi!\nMochi: %@", [mochiTheDog assaultTheMailman]);
    
    //casting FISDog from previous example as FISPet
    FISPet *mochi = mochiTheDog;
    NSLog(@"Pseudo Mochi (casted) sounds like: %@", ((FISPet *) mochi).makeASound); // "Woof!"
    
    //casting new instance of FISPet to FISDog
    FISPet *otherPet = [[FISPet alloc] init];
    otherPet = (FISDog *)otherPet;
    NSLog(@"other Pet sounds like: %@", otherPet.makeASound); // "Pet me!"
    // NSLog(@"otherPet casted as dog: %@", ((FISDog *) otherPet).assaultTheMailman); this causes an error: "unrecognized selector sent to instance"
    
    NSLog(@"Pseudo Mochi (casted) assaults the mailman: %@", ((FISDog *) mochi).assaultTheMailman); 
    
    
    
    return YES;
}

@end
