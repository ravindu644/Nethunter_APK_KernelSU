.class public Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HeaderAndFooterRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;
    }
.end annotation


# instance fields
.field private adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

.field private final footers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-object p0
.end method

.method private notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addFooterView(Landroid/view/View;)V
    .locals 1

    const-string v0, "The view may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public final addHeaderView(Landroid/view/View;)V
    .locals 1

    const-string v0, "The view may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public final getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->getEncapsulatedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeFooterView(Landroid/view/View;)V
    .locals 2

    const-string v0, "The view may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getFooterViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final removeHeaderView(Landroid/view/View;)V
    .locals 2

    const-string v0, "The view may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method
