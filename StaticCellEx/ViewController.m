//
//  ViewController.m
//  StaticCellEx
//
//  Created by SDT-1 on 2014. 1. 8..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "ProductCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate> {
	NSArray *data;
}

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
	
	Product *item = data[indexPath.row];
	[cell setProductInfo:item];
	
	return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	data = @[[Product product:@"Ball1" price:@"100" image:@"ball1.png"],
			[Product product:@"Ball2" price:@"200" image:@"ball2.png"],
			 [Product product:@"Ball3" price:@"300" image:@"ball3.png"],
			 [Product product:@"IUImage" price:@"1000" image:@"002.jpg"],
			 ];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
