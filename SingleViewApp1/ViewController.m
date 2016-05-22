//
//  ViewController.m
//  SingleViewApp1
//
//  Created by Surendra on 4/17/16.
//  Copyright © 2016 Surendra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myName;

@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;
@end

@implementation ViewController

- (NSString*) randomStory{
    int storyId = random() % 10;
    
    NSString* userStory;
    
    switch(storyId)
    {
        case 0:
            userStory = [NSString stringWithFormat:@"You are so lovable and dependable. You are a friend in need. \
                         You will get hurt time and again because not everyone reciprocates."];
            break;
        case 1:
            userStory = [NSString stringWithFormat:@"You are straight forward in nature. This will cause issues \
                         with friends and family at times. You give so much, But expect the same in return. "];
            break;
        case 2:
            userStory = [NSString stringWithFormat:@"You mingle with people very easily. Easy to get along. \
                         Very intelligent and talented at various stuff."];
            break;
        case 3:
            userStory = [NSString stringWithFormat:@"You are a very independent person. Like to hangout with friends \
                         and alone equally well. If given responsibility, you take it seriously and get things done"];
            break;
        case 4:
            userStory = [NSString stringWithFormat:@"You are sensitive person. You get angry when others comment about \
                         important people in your life. You give a lot of love."];
            break;
        case 5:
            userStory = [NSString stringWithFormat:@"You are a happy person in general. Gets serious when things go wrong\
                         .You expect everyone to follow rules with some minor exceptions. Live and let live is your motto"];
            break;
        case 6:
            userStory = [NSString stringWithFormat:@"You are a very responsible person. Helps friends and family whenever\
                         in need. You value relationships.A very good team player. Plans and maintains financials very good"];
            break;
        case 7:
            userStory = [NSString stringWithFormat:@"You are a intelligent person who also works hard. You will reach great heights in life and profession. values relationships and a good team leader."];
            break;
        case 8:
            userStory = [NSString stringWithFormat:@"You are a smart person who is very sensitive. Not very outgoing but \
                         very close to people you like and love. You excel in science, technology and service sectors"];
            break;
        case 9:
            userStory = [NSString stringWithFormat:@"You are a ambitious person who loves traveling. Likes to know \
                         new things. Dedicated and hard worker. People can rely upon you."];
            break;
        default:
            userStory = [NSString stringWithFormat:@"you are straight forward and get things done"];
            break;
            
    }
                         
    return userStory;
}
- (IBAction)generateStory:(id)sender {
    //Story of a person
    NSString* userName = [[self myName] text];
    
    NSMutableString* userStory = [NSMutableString stringWithFormat:@"Hello %@ ,", userName];
    NSString* randomPick = [self randomStory];
    
    NSString* finalStory = [userStory stringByAppendingString:randomPick];

    
    [self.simpleLabel setText:finalStory];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
