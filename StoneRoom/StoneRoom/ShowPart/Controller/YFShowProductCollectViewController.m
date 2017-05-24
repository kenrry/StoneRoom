//
//  YFShowProductCollectViewController.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFShowProductCollectViewController.h"
//view
#import "YFShowPartListCollectionViewCell.h"
#import "YFScrollerBannerCollectionReusableView.h"

@interface YFShowProductCollectViewController ()
<
UICollectionViewDelegate,
UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout
>
@property (nonatomic, strong) UICollectionView *collectView;

@end

@implementation YFShowProductCollectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initCollectView];
}

#pragma mark - 初始化collect
- (void)initCollectView{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.itemSize = CGSizeMake((kScreenWidth - 30)/2.0, 210);
    flowLayout.minimumLineSpacing = 10;
    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
    
    _collectView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 49) collectionViewLayout:flowLayout];
    _collectView.delegate = self;
    _collectView.dataSource = self;
    _collectView.backgroundColor = [UIColor colorWithHexString:@"e8e8e8"];
    [_collectView registerClass:[YFShowPartListCollectionViewCell class] forCellWithReuseIdentifier:@"YFShowPartListCollectionViewCell"];
    [_collectView registerClass:[YFScrollerBannerCollectionReusableView class]
     forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
            withReuseIdentifier:@"YFScrollerBannerCollectionReusableView"];
    [self.view addSubview:_collectView];
}

#pragma mark - collectDelegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 15;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    YFShowPartListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"YFShowPartListCollectionViewCell" forIndexPath:indexPath];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (_delegate && [_delegate respondsToSelector:@selector(didScrollWithCollectView:)]) {
        [_delegate didScrollWithCollectView:self.collectView];
    }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        YFScrollerBannerCollectionReusableView *head = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"YFScrollerBannerCollectionReusableView" forIndexPath:indexPath];
        return head;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    return CGSizeMake(kScreenWidth, 230);
}
@end
