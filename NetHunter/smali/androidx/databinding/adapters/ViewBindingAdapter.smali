.class public Landroidx/databinding/adapters/ViewBindingAdapter;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;,
        Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    }
.end annotation


# static fields
.field public static final FADING_EDGE_HORIZONTAL:I = 0x1

.field public static final FADING_EDGE_NONE:I = 0x0

.field public static final FADING_EDGE_VERTICAL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static pixelsToDimensionPixelSize(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static setOnAttachStateChangeListener(Landroid/view/View;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/databinding/adapters/ViewBindingAdapter$1;

    invoke-direct {v0, p2, p1}, Landroidx/databinding/adapters/ViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;)V

    move-object p1, v0

    :goto_0
    sget p2, Landroidx/databinding/library/baseAdapters/R$id;->onAttachStateChangeListener:I

    invoke-static {p0, p1, p2}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    return-void
.end method

.method public static setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static setOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public static setOnLongClick(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public static setOnLongClickListener(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public static setPadding(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;F)V
    .locals 3

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setPaddingEnd(Landroid/view/View;F)V
    .locals 3

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setPaddingLeft(Landroid/view/View;F)V
    .locals 3

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setPaddingRight(Landroid/view/View;F)V
    .locals 3

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setPaddingStart(Landroid/view/View;F)V
    .locals 3

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setPaddingTop(Landroid/view/View;F)V
    .locals 3

    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setRequiresFadingEdge(Landroid/view/View;I)V
    .locals 3

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method
