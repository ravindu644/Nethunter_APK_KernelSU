.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;,
        Landroidx/core/widget/NestedScrollView$SavedState;,
        Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    sget v0, Landroidx/core/R$attr;->nestedScrollViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->initScrollView()V

    sget-object v2, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object p1, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private abortAnimatedScroll()V
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method private canScroll()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static clamp(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "my",
            "child"
        }
    .end annotation

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "topFocus",
            "top",
            "bottom"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    const/4 v9, 0x1

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-nez v2, :cond_1

    move-object v2, v6

    move v5, v10

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v2, v6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    move-object v2, v6

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v2
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descendant"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "parent"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "descendant",
            "delta",
            "height"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onNestedScrollInternal(II[I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dyUnconsumed",
            "type",
            "consumed"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    aget v1, p3, v0

    add-int/2addr v1, v4

    aput v1, p3, v0

    :cond_0
    sub-int v6, p1, v4

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "participateInNestedScrolling"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "top",
            "bottom"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2, p2, p3}, Landroidx/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    :goto_1
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v3
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "immediate"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method

.method private smoothScrollBy(IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "scrollDurationMs",
            "withNestedScrolling"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v6, p1, v4

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-direct {p0, p4}, Landroidx/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "params"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    :goto_1
    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestFocus()Z

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 16

    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    sub-int v6, v0, v1

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    iget-object v3, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v3, v11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v11

    sub-int v13, v6, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v15

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v2, v13

    move v4, v15

    move v6, v14

    invoke-virtual/range {v0 .. v9}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v15

    sub-int/2addr v13, v2

    iget-object v7, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    aput v12, v7, v11

    const/4 v3, 0x0

    iget-object v5, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v4, v13

    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v11

    sub-int/2addr v13, v0

    :cond_1
    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v11, :cond_3

    if-lez v14, :cond_3

    :cond_2
    const/4 v12, 0x1

    :cond_3
    if-eqz v12, :cond_5

    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->ensureGlows()V

    if-gez v13, :cond_4

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_4
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    :cond_6
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    :goto_1
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    sub-int v4, v3, v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v0, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    :goto_1
    add-int/2addr p1, v1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type",
            "consumed"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    :cond_1
    int-to-float v6, v6

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    :cond_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_5
    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v3

    const/4 v2, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_7

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v2, 0x21

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    :cond_9
    :goto_0
    return v1
.end method

.method public fling(I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityY"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "parentWidthMeasureSpec",
            "parentHeightMeasureSpec"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, p3}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "parentWidthMeasureSpec",
            "widthUsed",
            "parentHeightMeasureSpec",
            "heightUsed"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p5, p3}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const/4 v4, -0x1

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v0, v4, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_9

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    iput v4, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v0}, Landroidx/core/widget/NestedScrollView;->inChild(II)Z

    move-result v4

    if-nez v4, :cond_8

    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_0

    :cond_8
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    invoke-virtual {p0, v2, v3}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    :cond_9
    :goto_0
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iget-boolean p4, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    iget v0, v0, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    :cond_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    :cond_2
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    invoke-static {p2, p5, p1}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v1, v0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed",
            "type"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-direct {p0, p5, p6, p1}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type",
            "consumed"
        }
    .end annotation

    invoke-direct {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "nestedScrollAxes"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollX",
            "scrollY",
            "clampedX",
            "clampedY"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    instance-of v0, p1, Landroidx/core/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView$SavedState;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/core/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroidx/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "nestedScrollAxes"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_0

    iput v12, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, 0x2

    const/4 v14, 0x1

    if-eqz v0, :cond_14

    const/4 v3, -0x1

    if-eq v0, v14, :cond_11

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_5

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v15, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v21

    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    iput v3, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_5

    :cond_5
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    if-ne v15, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int/2addr v0, v6

    iget-boolean v1, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    iput-boolean v14, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-lez v0, :cond_8

    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_8
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v0, v1

    :cond_9
    :goto_0
    move v7, v0

    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    iget-object v3, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int/2addr v7, v0

    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    :cond_a
    move/from16 v16, v7

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    sub-int/2addr v6, v0

    iput v6, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_c

    if-ne v0, v14, :cond_b

    if-lez v9, :cond_b

    goto :goto_1

    :cond_b
    const/16 v18, 0x0

    goto :goto_2

    :cond_c
    :goto_1
    const/16 v18, 0x1

    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v6, v9

    move/from16 v22, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v10, v12}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v17

    sub-int v4, v16, v2

    iget-object v7, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    aput v12, v7, v14

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v0, v1

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    add-int/2addr v0, v1

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    if-eqz v18, :cond_18

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int v0, v16, v0

    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->ensureGlows()V

    add-int v1, v17, v0

    if-gez v1, :cond_e

    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v0, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    :cond_e
    move/from16 v2, v22

    if-le v1, v2, :cond_f

    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-static {v1, v0, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_f
    :goto_3
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_11
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v10, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    if-lt v1, v4, :cond_12

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v10, v2, v1}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v10, v2, v1, v14}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_4

    :cond_12
    iget-object v15, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v21

    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_13
    :goto_4
    iput v3, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    goto :goto_5

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_15

    return v12

    :cond_15
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_16
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v10, v1, v12}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    :cond_18
    :goto_5
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_19
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    return v14
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaX",
            "deltaY",
            "scrollX",
            "scrollY",
            "scrollRangeX",
            "scrollRangeY",
            "maxOverScrollX",
            "maxOverScrollY",
            "isTouchEvent"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    :goto_5
    add-int v3, p3, p1

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    move/from16 v2, p7

    :goto_6
    add-int v6, p4, p2

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    neg-int v7, v2

    add-int v2, v2, p5

    neg-int v8, v1

    add-int v1, v1, p6

    if-le v3, v2, :cond_8

    move v3, v2

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    if-ge v3, v7, :cond_9

    move v3, v7

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_9
    if-le v6, v1, :cond_a

    move v6, v1

    :goto_a
    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    if-ge v6, v8, :cond_b

    move v6, v8

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_c

    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    move-object p1, v7

    move p2, v3

    move p3, v6

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_c
    invoke-virtual {p0, v3, v6, v2, v1}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    const/4 v4, 0x1

    :cond_e
    return v4
.end method

.method public pageScroll(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    if-le v1, v0, :cond_2

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "focused"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "rectangle",
            "immediate"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disallowIntercept"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v2, v3}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    invoke-static {p2, v4, v0}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result p2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fillViewport"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smoothScrollingEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    const/16 v0, 0xfa

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    return-void
.end method

.method public final smoothScrollBy(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "scrollDurationMs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const/16 v0, 0xfa

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    return-void
.end method

.method public final smoothScrollTo(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "scrollDurationMs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    return-void
.end method

.method smoothScrollTo(IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "scrollDurationMs",
            "withNestedScrolling"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    return-void
.end method

.method smoothScrollTo(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "withNestedScrolling"
        }
    .end annotation

    const/16 v0, 0xfa

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axes",
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
