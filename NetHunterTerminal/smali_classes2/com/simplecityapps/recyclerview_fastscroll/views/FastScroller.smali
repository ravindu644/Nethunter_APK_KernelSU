.class public Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$FastScrollerPopupPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_HIDE_DELAY:I = 0x5dc


# instance fields
.field mAnimatingShow:Z

.field private mAutoHideAnimator:Landroid/animation/Animator;

.field private mAutoHideDelay:I

.field private mAutoHideEnabled:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mInvalidateTmpRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field public mOffset:Landroid/graphics/Point;

.field private mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

.field private mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field private mThumb:Landroid/graphics/Paint;

.field private mThumbHeight:I

.field public mThumbPosition:Landroid/graphics/Point;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrack:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideDelay:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    new-instance v5, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-direct {v5, v4, p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;-><init>(Landroid/content/res/Resources;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)V

    iput-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static {v4, p2}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toPixels(Landroid/content/res/Resources;F)I

    move-result p2

    iput p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {v4, p2}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toPixels(Landroid/content/res/Resources;F)I

    move-result p2

    iput p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    const/high16 p2, -0x3e400000    # -24.0f

    invoke-static {v4, p2}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toPixels(Landroid/content/res/Resources;F)I

    move-result p2

    iput p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchInset:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumb:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTrack:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView:[I

    invoke-virtual {p1, p3, p2, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollAutoHide:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideEnabled:Z

    sget p2, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollAutoHideDelay:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideDelay:I

    sget p2, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollTrackColor:I

    const/high16 p3, 0x1f000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sget p3, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollThumbColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    sget v3, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollPopupBgColor:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v3, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollPopupTextColor:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sget v3, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollPopupTextSize:I

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toScreenPixels(Landroid/content/res/Resources;F)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v5, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollPopupBackgroundSize:I

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-static {v4, v6}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toPixels(Landroid/content/res/Resources;F)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v5, Lcom/simplecityapps/recyclerview_fastscroll/R$styleable;->FastScrollRecyclerView_fastScrollPopupPosition:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTrack:Landroid/graphics/Paint;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumb:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setBgColor(I)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setTextColor(I)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setTextSize(I)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, v4}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setBackgroundSize(I)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setPopupPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;

    invoke-direct {p1, p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;-><init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)V

    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    new-instance p2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$2;

    invoke-direct {p2, p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$2;-><init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)V

    invoke-virtual {p1, p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-boolean p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->postAutoHideDelayed()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    return p0
.end method

.method static synthetic access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$102(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)I
    .locals 0

    iget p0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    return p0
.end method

.method private isNearPoint(II)Z
    .locals 6

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchInset:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected cancelAutoHide()V
    .locals 2

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTrack:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumb:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getOffsetX()I
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;IIILcom/simplecityapps/recyclerview_fastscroll/interfaces/OnFastScrollStateChangeListener;)V
    .locals 5

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    goto/16 :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->isNearPoint(II)Z

    move-result p2

    if-eqz p2, :cond_1

    sub-int p2, p1, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    if-le p2, v0, :cond_1

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    iget p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchOffset:I

    sub-int/2addr p4, p3

    add-int/2addr p2, p4

    iput p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchOffset:I

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->animateVisibility(Z)V

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lcom/simplecityapps/recyclerview_fastscroll/interfaces/OnFastScrollStateChangeListener;->onFastScrollStart()V

    :cond_1
    iget-boolean p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result p2

    iget p3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbHeight:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchOffset:I

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    int-to-float p4, v2

    sub-float/2addr p1, p4

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p2, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setSectionName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->animateVisibility(Z)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    iget-object p3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p1, p3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->updateFastScrollerBounds(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchOffset:I

    iget-boolean p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {p1, v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->animateVisibility(Z)V

    if-eqz p5, :cond_4

    invoke-interface {p5}, Lcom/simplecityapps/recyclerview_fastscroll/interfaces/OnFastScrollStateChangeListener;->onFastScrollStop()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->isNearPoint(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTouchOffset:I

    :cond_4
    :goto_0
    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z

    return v0
.end method

.method protected postAutoHideDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->cancelAutoHide()V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setAutoHideDelay(I)V
    .locals 0

    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideDelay:I

    iget-boolean p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->postAutoHideDelayed()V

    :cond_0
    return-void
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->postAutoHideDelayed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->cancelAutoHide()V

    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 6

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v4}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOffsetX(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->setOffset(II)V

    return-void
.end method

.method public setPopupBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setBgColor(I)V

    return-void
.end method

.method public setPopupPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setPopupPosition(I)V

    return-void
.end method

.method public setPopupTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setTextColor(I)V

    return-void
.end method

.method public setPopupTextSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setTextSize(I)V

    return-void
.end method

.method public setPopupTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mPopup:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setThumbColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumb:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setThumbPosition(II)V
    .locals 6

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v4}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mTrack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .locals 4

    iget-boolean v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAnimatingShow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const-string v2, "offsetX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    new-instance v2, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;

    invoke-direct {v2, p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;-><init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAnimatingShow:Z

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    iget-boolean v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->postAutoHideDelayed()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->cancelAutoHide()V

    :goto_0
    return-void
.end method
