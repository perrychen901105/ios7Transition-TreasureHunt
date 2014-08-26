
#import "InstructionsViewController.h"

@interface InstructionsViewController ()
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UITextView *instructionsTextView;
@end

@implementation InstructionsViewController

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

	self.nameLabel.text = self.name;
	self.instructionsTextView.text = self.instructions;
	
	#if CUSTOM_APPEARANCE
	self.view.backgroundColor = TableColor;
	self.nameLabel.textColor = DarkTextColor;
	self.instructionsTextView.backgroundColor = [UIColor clearColor];
	self.instructionsTextView.textColor = DarkTextColor;
	#endif
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.instructionsTextView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, 44.0f, 0.0f);
}

@end
