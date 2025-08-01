.class public Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TabSwitcherDrawable.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final size:I

.field private final textSizeNormal:I

.field private final textSizeSmall:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-string v0, "The context may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_font_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    sget v2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_font_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeSmall:I

    sget v0, Lde/mrapp/android/tabswitcher/R$drawable;->tab_switcher_drawable_background:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    const v0, 0x1010036

    invoke-static {p1, v0}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setCount(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "The count must be at least 0"

    invoke-static {p1, v0, v1}, Lde/mrapp/android/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeSmall:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->invalidateSelf()V

    return-void
.end method
