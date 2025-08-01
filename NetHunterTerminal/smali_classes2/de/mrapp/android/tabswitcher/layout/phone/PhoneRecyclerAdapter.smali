.class public Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;
.super Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
.source "PhoneRecyclerAdapter.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/Tab$Callback;
.implements Lde/mrapp/android/tabswitcher/model/Model$Listener;
.implements Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
        "Lde/mrapp/android/tabswitcher/model/TabItem;",
        "Ljava/lang/Integer;",
        ">;",
        "Lde/mrapp/android/tabswitcher/Tab$Callback;",
        "Lde/mrapp/android/tabswitcher/model/Model$Listener;",
        "Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener<",
        "Landroid/graphics/Bitmap;",
        "Lde/mrapp/android/tabswitcher/Tab;",
        "Landroid/widget/ImageView;",
        "Lde/mrapp/android/tabswitcher/model/TabItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;"
        }
    .end annotation
.end field

.field private final model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

.field private final tabBackgroundColor:I

.field private final tabBorderWidth:I

.field private final tabInset:I

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private final tabTitleContainerHeight:I

.field private final tabTitleTextColor:I

.field private viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/util/view/ViewRecycler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/TabSwitcher;",
            "Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;",
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;-><init>()V

    const-string v0, "The tab switcher may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The model may not be null"

    invoke-static {p2, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The child view recycler may not be null"

    invoke-static {p3, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    new-instance p2, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;

    invoke-direct {p2, p1, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;-><init>(Landroid/view/ViewGroup;Lde/mrapp/android/util/view/ViewRecycler;)V

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    invoke-virtual {p2, p0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->addListener(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->tab_inset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabInset:I

    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->tab_border_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabBorderWidth:I

    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->tab_title_container_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabTitleContainerHeight:I

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lde/mrapp/android/tabswitcher/R$color;->tab_background_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabBackgroundColor:I

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lde/mrapp/android/tabswitcher/R$color;->tab_title_text_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabTitleTextColor:I

    const/4 p1, 0x0

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptLogLevel()V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;Lde/mrapp/android/tabswitcher/Tab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->notifyOnCloseTab(Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-object p0
.end method

.method private adaptAllSelectionStates()V
    .locals 4

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v2

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptSelectionState(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptBackgroundColor(Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adaptBackgroundColor(Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/Tab;->getBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/Tab;->getBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabBackgroundColor:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p3, :cond_1

    const/4 p3, 0x1

    new-array p3, p3, [I

    const v1, 0x10100a1

    aput v1, p3, v2

    goto :goto_1

    :cond_1
    new-array p3, v2, [I

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private adaptCloseButton(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->createCloseButtonClickListener(Landroid/widget/ImageButton;Lde/mrapp/android/tabswitcher/Tab;)Landroid/view/View$OnClickListener;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lde/mrapp/android/tabswitcher/Tab;->getCloseButtonIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabCloseButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    sget p2, Lde/mrapp/android/tabswitcher/R$drawable;->ic_close_tab_18dp:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private adaptIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lde/mrapp/android/tabswitcher/Tab;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private adaptLogLevel()V
    .locals 2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method

.method private adaptPadding(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V
    .locals 5

    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private adaptSelectionState(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method private adaptTitle(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Tab;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private adaptTitleTextColor(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Tab;->getTitleTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Tab;->getTitleTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabTitleTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleTextView:Landroid/widget/TextView;

    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private addChildView(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 8

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    iget-object v3, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v4

    const/4 p1, 0x0

    if-nez v3, :cond_0

    iget-object v1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->childContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    new-array v3, p1, [Ljava/lang/Void;

    invoke-virtual {v2, v4, v1, v3}, Lde/mrapp/android/util/view/ViewRecycler;->inflate(Ljava/lang/Object;Landroid/view/ViewGroup;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/ViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, p1, [Ljava/lang/Void;

    invoke-virtual/range {v1 .. v6}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private createCloseButtonClickListener(Landroid/widget/ImageButton;Lde/mrapp/android/tabswitcher/Tab;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter$1;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;Lde/mrapp/android/tabswitcher/Tab;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 3

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const-string v1, "No view recycler has been set"

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1, v2}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v0, v1, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyOnCloseTab(Lde/mrapp/android/tabswitcher/Tab;)Z
    .locals 4

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabCloseListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/tabswitcher/TabCloseListener;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-interface {v2, v3, p1}, Lde/mrapp/android/tabswitcher/TabCloseListener;->onCloseTab(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private removeChildView(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->childContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->childContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {p1, p2}, Lde/mrapp/android/util/view/ViewRecycler;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method private renderChildView(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 6

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v1

    iget-object v2, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {v2}, Lde/mrapp/android/util/view/ViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    iget-object v5, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->child:Landroid/view/View;

    invoke-virtual {v2, v5, v0}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    iget-object v5, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    new-array v4, v4, [Lde/mrapp/android/tabswitcher/model/TabItem;

    aput-object p1, v4, v3

    invoke-virtual {v2, v0, v5, v3, v4}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->load(Ljava/lang/Object;Landroid/view/View;Z[Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->removeChildView(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    iget-object v1, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    new-array v4, v4, [Lde/mrapp/android/tabswitcher/model/TabItem;

    aput-object p1, v4, v3

    invoke-virtual {v2, v0, v1, v4}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->load(Ljava/lang/Object;Landroid/view/View;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final clearCachedPreviews()V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    invoke-virtual {v0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->clearCache()V

    return-void
.end method

.method public final onAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IILde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    if-eq p3, p4, :cond_0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptAllSelectionStates()V

    :cond_0
    return-void
.end method

.method public final onAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    return-void
.end method

.method public final onBackgroundColorChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptBackgroundColor(Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final onCanceled(Lde/mrapp/android/util/multithreading/AbstractDataBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onCloseButtonIconChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final onCloseableChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptCloseButton(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 0

    return-void
.end method

.method public final varargs onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            "[",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/widget/ImageView;

    check-cast p5, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method public final onIconChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final varargs onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/model/TabItem;I[Ljava/lang/Integer;)Landroid/view/View;
    .locals 1

    new-instance p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    invoke-direct {p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;-><init>()V

    sget p4, Lde/mrapp/android/tabswitcher/R$layout;->phone_tab:I

    iget-object p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p5}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTabContainer()Landroid/view/ViewGroup;

    move-result-object p5

    const/4 v0, 0x0

    invoke-virtual {p1, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object p4

    sget p5, Lde/mrapp/android/tabswitcher/R$drawable;->phone_tab_background:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p1, p4}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabInset:I

    iget p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabBorderWidth:I

    add-int/2addr p5, p4

    invoke-virtual {p1, p5, p4, p5, p5}, Landroid/view/View;->setPadding(IIII)V

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->tab_title_container:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleContainer:Landroid/view/ViewGroup;

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->tab_title_text_view:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->titleTextView:Landroid/widget/TextView;

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->close_tab_button:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageButton;

    iput-object p4, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->child_container:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->childContainer:Landroid/view/ViewGroup;

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->preview_image_view:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptPadding(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->border_view:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    iget-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object p4

    sget p5, Lde/mrapp/android/tabswitcher/R$drawable;->phone_tab_border:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object p5, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    invoke-static {p5, p4}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    invoke-virtual {p1, p4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->setView(Landroid/view/View;)V

    invoke-virtual {p3, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->setViewHolder(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V

    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/Object;I[Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    check-cast p3, Lde/mrapp/android/tabswitcher/model/TabItem;

    check-cast p5, [Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/model/TabItem;I[Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final varargs onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;[Lde/mrapp/android/tabswitcher/model/TabItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "[",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabPreviewListeners()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/TabPreviewListener;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-interface {v0, v1, p2}, Lde/mrapp/android/tabswitcher/TabPreviewListener;->onLoadTabPreview(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result v0

    and-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return p3
.end method

.method public bridge synthetic onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p3, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;[Lde/mrapp/android/tabswitcher/model/TabItem;)Z

    move-result p1

    return p1
.end method

.method public final onLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptLogLevel()V

    return-void
.end method

.method public final onPaddingChanged(IIII)V
    .locals 0

    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, p2, p3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object p2

    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptPadding(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    sget v0, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p2

    invoke-virtual {p2, p0}, Lde/mrapp/android/tabswitcher/Tab;->removeCallback(Lde/mrapp/android/tabswitcher/Tab$Callback;)V

    invoke-direct {p0, v0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->removeChildView(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    invoke-virtual {v1, p2}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->isCached(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onRemoveView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method public final onSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptAllSelectionStates()V

    return-void
.end method

.method public final varargs onShowView(Landroid/content/Context;Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;Z[Ljava/lang/Integer;)V
    .locals 4

    sget p1, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p3, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->setView(Landroid/view/View;)V

    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->setViewHolder(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V

    sget p4, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabInset:I

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabBorderWidth:I

    add-int/2addr v1, v2

    neg-int v1, v1

    array-length v2, p5

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v3, p5, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_1

    aget-object p5, p5, v2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    goto :goto_0

    :cond_1
    move p5, v1

    :goto_0
    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabInset:I

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->tabTitleContainerHeight:I

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p5, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p4

    invoke-virtual {p4, p0}, Lde/mrapp/android/tabswitcher/Tab;->addCallback(Lde/mrapp/android/tabswitcher/Tab$Callback;)V

    invoke-direct {p0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptTitle(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-direct {p0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-direct {p0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptCloseButton(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-direct {p0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-direct {p0, p2, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptBackgroundColor(Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-direct {p0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptTitleTextColor(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-direct {p0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptSelectionState(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    if-ne p4, p1, :cond_3

    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->addChildView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->renderChildView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lde/mrapp/android/tabswitcher/model/TabItem;

    check-cast p5, [Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->onShowView(Landroid/content/Context;Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;Z[Ljava/lang/Integer;)V

    return-void
.end method

.method public final onSwitcherHidden()V
    .locals 0

    return-void
.end method

.method public final onSwitcherShown()V
    .locals 0

    return-void
.end method

.method public final onTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    if-eq p3, p4, :cond_0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptAllSelectionStates()V

    :cond_0
    return-void
.end method

.method public final onTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 3

    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v2

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptBackgroundColor(Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptIcon(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IILde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    if-eq p3, p4, :cond_0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptAllSelectionStates()V

    :cond_0
    return-void
.end method

.method public final onTabTitleColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 2

    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v1

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptTitleTextColor(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTitleChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptTitle(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final onTitleTextColorChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->adaptTitleTextColor(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final onToolbarMenuInflated(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    return-void
.end method

.method public final onToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final onToolbarTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onToolbarVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public final setViewRecycler(Lde/mrapp/android/util/view/AttachedViewRecycler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "The view recycler may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-void
.end method
