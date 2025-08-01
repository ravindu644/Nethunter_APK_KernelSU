.class Lcom/hijacker/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# static fields
.field static AP_BEACONS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static AP_DATA:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static AP_ESSID:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static AP_ST_PWR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static ST_FRAMES:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static final allTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static i:I

.field static final tiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field device:Lcom/hijacker/Device;

.field show:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->allTiles:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/Tile;->i:I

    new-instance v0, Lcom/hijacker/Tile$1;

    invoke-direct {v0}, Lcom/hijacker/Tile$1;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->AP_ESSID:Ljava/util/Comparator;

    new-instance v0, Lcom/hijacker/Tile$2;

    invoke-direct {v0}, Lcom/hijacker/Tile$2;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->AP_BEACONS:Ljava/util/Comparator;

    new-instance v0, Lcom/hijacker/Tile$3;

    invoke-direct {v0}, Lcom/hijacker/Tile$3;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->AP_DATA:Ljava/util/Comparator;

    new-instance v0, Lcom/hijacker/Tile$4;

    invoke-direct {v0}, Lcom/hijacker/Tile$4;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->ST_FRAMES:Ljava/util/Comparator;

    new-instance v0, Lcom/hijacker/Tile$5;

    invoke-direct {v0}, Lcom/hijacker/Tile$5;-><init>()V

    sput-object v0, Lcom/hijacker/Tile;->AP_ST_PWR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILcom/hijacker/Device;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hijacker/Tile;->show:Z

    iput-object p2, p0, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    sget-object p2, Lcom/hijacker/Tile;->allTiles:Ljava/util/List;

    invoke-interface {p2, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hijacker/Tile;->check()V

    iget-boolean p1, p0, Lcom/hijacker/Tile;->show:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hijacker/Tile;->addToView()V

    :cond_0
    return-void
.end method

.method static clear()V
    .locals 1

    sget-object v0, Lcom/hijacker/Tile;->allTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity$MyListAdapter;->clear()V

    invoke-static {}, Lcom/hijacker/AP;->clear()V

    invoke-static {}, Lcom/hijacker/ST;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/Tile;->i:I

    return-void
.end method

.method static filter()V
    .locals 3

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "HIJACKER/Tile"

    const-string v1, "Filtering..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity$MyListAdapter;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/Tile;->i:I

    :goto_0
    sget-object v1, Lcom/hijacker/Tile;->allTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/hijacker/Tile;->allTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/Tile;

    invoke-virtual {v1}, Lcom/hijacker/Tile;->check()V

    iget-boolean v2, v1, Lcom/hijacker/Tile;->show:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/hijacker/Tile;->addToView()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hijacker/Tile;->sort()V

    return-void
.end method

.method static findIndex(Ljava/util/List;Lcom/hijacker/Tile;Ljava/util/Comparator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hijacker/Tile;",
            ">;",
            "Lcom/hijacker/Tile;",
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-array v0, v1, [Lcom/hijacker/Tile;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hijacker/Tile;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, p0, :cond_3

    add-int v2, v1, p0

    div-int/lit8 v2, v2, 0x2

    aget-object v3, v0, v2

    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    aget-object v3, v0, v2

    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_3
    aget-object p0, v0, v2

    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_4

    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method static getComparatorForAP()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/hijacker/MainActivity;->sort:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/hijacker/Tile;->AP_ST_PWR:Ljava/util/Comparator;

    return-object v0

    :cond_1
    sget-object v0, Lcom/hijacker/Tile;->AP_DATA:Ljava/util/Comparator;

    return-object v0

    :cond_2
    sget-object v0, Lcom/hijacker/Tile;->AP_BEACONS:Ljava/util/Comparator;

    return-object v0

    :cond_3
    sget-object v0, Lcom/hijacker/Tile;->AP_ESSID:Ljava/util/Comparator;

    return-object v0
.end method

.method static getComparatorForST()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/hijacker/Tile;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/hijacker/MainActivity;->sort:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/hijacker/Tile;->AP_ST_PWR:Ljava/util/Comparator;

    return-object v0

    :cond_1
    sget-object v0, Lcom/hijacker/Tile;->ST_FRAMES:Ljava/util/Comparator;

    return-object v0
.end method

.method static onCountsChanged()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->ap_count:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    if-nez v1, :cond_0

    sget v1, Lcom/hijacker/Tile;->i:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/hijacker/MainActivity;->st_count:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/hijacker/Tile;->i:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/hijacker/StatsDialog;->isResumed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hijacker/StatsDialog;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-static {}, Lcom/hijacker/MainActivity;->notification()V

    return-void
.end method

.method static sort()V
    .locals 4

    sget v0, Lcom/hijacker/MainActivity;->sort:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorting: sort is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hijacker/MainActivity;->sort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sort_reverse is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/hijacker/MainActivity;->sort_reverse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HIJACKER/Tile"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->show_ap:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/hijacker/Tile;->i:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForAP()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    sget v2, Lcom/hijacker/Tile;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForAP()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    sget-boolean v0, Lcom/hijacker/MainActivity;->show_st:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v2, Lcom/hijacker/Tile;->i:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForST()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    sget v2, Lcom/hijacker/Tile;->i:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForST()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    sput-boolean v1, Lcom/hijacker/MainActivity;->toSort:Z

    sget-object v0, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity$MyListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method addToView()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    instance-of v0, v0, Lcom/hijacker/AP;

    if-eqz v0, :cond_1

    sget v0, Lcom/hijacker/Tile;->i:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForAP()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sget v2, Lcom/hijacker/Tile;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForAP()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/hijacker/Tile;->findIndex(Ljava/util/List;Lcom/hijacker/Tile;Ljava/util/Comparator;)I

    move-result v0

    :cond_0
    sget v1, Lcom/hijacker/Tile;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/hijacker/Tile;->i:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/hijacker/Tile;->i:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForST()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    sget v1, Lcom/hijacker/Tile;->i:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/hijacker/Tile;->getComparatorForST()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/hijacker/Tile;->findIndex(Ljava/util/List;Lcom/hijacker/Tile;Ljava/util/Comparator;)I

    move-result v0

    sget v1, Lcom/hijacker/Tile;->i:I

    add-int/2addr v0, v1

    :cond_2
    :goto_0
    sget-object v1, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {v1, p0, v0}, Lcom/hijacker/MainActivity$MyListAdapter;->insert(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/hijacker/Tile;->onCountsChanged()V

    return-void
.end method

.method check()V
    .locals 5

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    instance-of v3, v0, Lcom/hijacker/AP;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/hijacker/AP;

    iget v3, v0, Lcom/hijacker/AP;->ch:I

    if-ltz v3, :cond_1

    iget v3, v0, Lcom/hijacker/AP;->ch:I

    const/16 v4, 0xe

    if-gt v3, v4, :cond_1

    sget-object v3, Lcom/hijacker/MainActivity;->show_ch:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    sget-object v3, Lcom/hijacker/MainActivity;->show_ch:[Z

    iget v4, v0, Lcom/hijacker/AP;->ch:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    sget-boolean v4, Lcom/hijacker/MainActivity;->show_ap:Z

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    iget v3, v0, Lcom/hijacker/AP;->pwr:I

    sget v4, Lcom/hijacker/MainActivity;->pwr_filter:I

    mul-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_6

    sget-boolean v3, Lcom/hijacker/MainActivity;->wpa:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/hijacker/AP;->sec:I

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/hijacker/AP;->sec:I

    if-eq v3, v1, :cond_5

    :cond_2
    sget-boolean v3, Lcom/hijacker/MainActivity;->wep:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/hijacker/AP;->sec:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    :cond_3
    sget-boolean v3, Lcom/hijacker/MainActivity;->opn:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/hijacker/AP;->sec:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    :cond_4
    iget v3, v0, Lcom/hijacker/AP;->sec:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    :cond_5
    iget-object v0, v0, Lcom/hijacker/AP;->manuf:Ljava/lang/String;

    sget-object v3, Lcom/hijacker/MainActivity;->manuf_filter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/hijacker/Tile;->show:Z

    goto :goto_5

    :cond_7
    check-cast v0, Lcom/hijacker/ST;

    sget-boolean v3, Lcom/hijacker/MainActivity;->show_st:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/hijacker/MainActivity;->show_na_st:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    if-eqz v3, :cond_9

    :cond_8
    iget v3, v0, Lcom/hijacker/ST;->pwr:I

    sget v4, Lcom/hijacker/MainActivity;->pwr_filter:I

    mul-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_9

    iget-object v0, v0, Lcom/hijacker/ST;->manuf:Ljava/lang/String;

    sget-object v3, Lcom/hijacker/MainActivity;->manuf_filter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/hijacker/Tile;->show:Z

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    instance-of v3, v0, Lcom/hijacker/AP;

    if-eqz v3, :cond_b

    iput-boolean v2, p0, Lcom/hijacker/Tile;->show:Z

    goto :goto_5

    :cond_b
    check-cast v0, Lcom/hijacker/ST;

    sget-object v3, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    iget-object v4, v0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/hijacker/MainActivity;->show_st:Z

    if-eqz v3, :cond_c

    iget v3, v0, Lcom/hijacker/ST;->pwr:I

    sget v4, Lcom/hijacker/MainActivity;->pwr_filter:I

    mul-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_c

    iget-object v0, v0, Lcom/hijacker/ST;->manuf:Ljava/lang/String;

    sget-object v3, Lcom/hijacker/MainActivity;->manuf_filter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/hijacker/Tile;->show:Z

    :goto_5
    return-void
.end method

.method update()V
    .locals 1

    iget-boolean v0, p0, Lcom/hijacker/Tile;->show:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hijacker/Tile;->check()V

    iget-boolean v0, p0, Lcom/hijacker/Tile;->show:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hijacker/Tile;->addToView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hijacker/Tile;->check()V

    iget-boolean v0, p0, Lcom/hijacker/Tile;->show:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity$MyListAdapter;->notifyDataSetChanged()V

    return-void
.end method
