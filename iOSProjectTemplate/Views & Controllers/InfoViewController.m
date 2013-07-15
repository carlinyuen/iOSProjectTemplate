/**
	@file	InfoViewController.m
	@author	Carlin
	@date	7/12/13
	@brief	iOSProjectTemplate
*/
//  Copyright (c) 2013 Carlin. All rights reserved.


#import "InfoViewController.h"

	#define UI_SIZE_TABLE_FOOTER_HEIGHT 54

@interface InfoViewController ()
@property (nonatomic, strong) UITableView* tableView;
@property (nonatomic, strong) UIView* tableFooterView;
@end


#pragma mark - Implementation

@implementation InfoViewController

/** @brief Initialize data-related properties */
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.title = NSLocalizedString(@"INFO_VIEW_TITLE", nil);
    }
    return self;
}


#pragma mark - View Lifecycle

/** @brief Setup UI elements for viewing. */
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self createTableView];
	[self createTableFooterView];
}

/** @brief Last-minute setup before view appears. */
- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	[self setupTableView];
	[self setupTableFooterView];
}

/** @brief Dispose of any resources that can be recreated. */
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/** @brief Return supported orientations */
- (NSUInteger)supportedInterfaceOrientations
{
	return UIInterfaceOrientationMaskAllButUpsideDown;
}


#pragma mark - UI Setup

/** @brief Create tableview */
- (void)createTableView
{
	self.tableView = [[UITableView alloc] initWithFrame:CGRectZero
		style:UITableViewStyleGrouped];
		
	self.tableView.dataSource = self;
	self.tableView.delegate = self;
}

/** @brief Setup tableview */
- (void)setupTableView
{
	self.tableView.frame = self.view.bounds;
	[self.view addSubview:self.tableView];
}

/** @brief Create tableFooterView */
- (void)createTableFooterView
{
	self.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
	
	self.tableFooterView.backgroundColor = self.tableView.backgroundColor;
	
	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(
		0, 0, self.view.bounds.size.width, UI_SIZE_TABLE_FOOTER_HEIGHT)];
	button.backgroundColor = [UIColor clearColor];
	button.titleLabel.textAlignment = NSTextAlignmentCenter;
	button.titleLabel.font = [UIFont fontWithName:FONT_NAME_BRANDING
		size:FONT_SIZE_BRANDING];
	[button setTitle:NSLocalizedString(@"INFO_VIEW_BRANDING_TEXT", nil)
		forState:UIControlStateNormal];
	[button setTitleColor:UIColorFromHex(COLOR_HEX_COPY_LIGHT)
		forState:UIControlStateNormal];
	[button setTitleColor:UIColorFromHex(COLOR_HEX_COPY_DARK)
		forState:UIControlStateHighlighted];
	[button addTarget:self action:@selector(brandingPressed:)
		forControlEvents:UIControlEventTouchUpInside];
	
	[self.tableFooterView addSubview:button];
}

/** @brief Setup tableFooterView */
- (void)setupTableFooterView
{
	self.tableFooterView.frame = CGRectMake(
		0, 0, self.view.bounds.size.width, UI_SIZE_TABLE_FOOTER_HEIGHT);
	self.tableView.tableFooterView = self.tableFooterView;
}


#pragma mark - Class Functions

/** @brief When branding is pressed */
- (void)brandingPressed:(UIButton*)sender
{
	debugFunc(nil);

	if (self.delegate
		&& [self.delegate respondsToSelector:@selector(infoViewController:willCloseAnimated:)]) {
		[self.delegate infoViewController:self willCloseAnimated:true];
	}
}


#pragma mark - UI Event Handlers


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return section + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailedTableViewCell"];
	
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"DetailedTableViewCell"];
		cell.selectionStyle = UITableViewCellSelectionStyleGray;
	}
	
	return cell;
}



@end
