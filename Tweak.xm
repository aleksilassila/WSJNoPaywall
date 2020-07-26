@interface Uiv : UIViewController

@end

%hook ViewController

- (void)viewDidLoad {
    %orig;
    
    Uiv *s = self;
    s.view.hidden = YES;
}

%end

%ctor {
    %init(ViewController = objc_getClass("WSJ.RoadblockSubscriptionViewController"));
}