//
//  MovieDetailViewController.m
//  rottenTomatoesDemo
//
//  Created by Sumeet Ungratwar on 10/19/14.
//  Copyright (c) 2014 Sumeet Ungratwar. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = self.movie[@"title"];
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    
    self.scrollView.delegate = self;
    
    self.scrollView.contentSize =  CGSizeMake(320, 1000);
    
    NSString *url = [self.movie valueForKeyPath:@"posters.thumbnail"];
    [self.posterView setImageWithURL:[NSURL URLWithString:url]];
    url = [url stringByReplacingOccurrencesOfString:@"_tmb.jpg" withString:@"_ori.jpg"];
    [self.posterView setImageWithURL:[NSURL URLWithString:url]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    // self.scrollView.contentSize =  CGSizeMake(320, 0);
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
