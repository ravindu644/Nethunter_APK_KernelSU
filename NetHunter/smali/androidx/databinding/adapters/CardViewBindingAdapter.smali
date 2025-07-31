.class public Landroidx/databinding/adapters/CardViewBindingAdapter;
.super Ljava/lang/Object;
.source "CardViewBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContentPadding(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingBottom(Landroidx/cardview/widget/CardView;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingLeft(Landroidx/cardview/widget/CardView;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingRight(Landroidx/cardview/widget/CardView;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingTop(Landroidx/cardview/widget/CardView;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method
