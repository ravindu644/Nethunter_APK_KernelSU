.class abstract Lcom/hijacker/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field alias:Ljava/lang/String;

.field isMarked:Z

.field lastseen:J

.field lowerLeft:Ljava/lang/String;

.field lowerRight:Ljava/lang/String;

.field mac:Ljava/lang/String;

.field manuf:Ljava/lang/String;

.field pwr:I

.field tile:Lcom/hijacker/Tile;

.field upperLeft:Ljava/lang/String;

.field upperRight:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hijacker/Device;->lastseen:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/Device;->isMarked:Z

    iput-object p1, p0, Lcom/hijacker/Device;->mac:Ljava/lang/String;

    invoke-static {p1}, Lcom/hijacker/MainActivity;->getManuf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/Device;->manuf:Ljava/lang/String;

    sget-object p1, Lcom/hijacker/MainActivity;->aliases:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hijacker/Device;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/hijacker/Device;->alias:Ljava/lang/String;

    sget p1, Lcom/hijacker/MainActivity;->sort:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/hijacker/MainActivity;->toSort:Z

    :cond_0
    return-void
.end method

.method static trimMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract getExported()Ljava/lang/String;
.end method

.method abstract getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;
.end method

.method abstract mark()V
.end method

.method abstract saveData()V
.end method

.method abstract showInfo(Landroid/app/FragmentManager;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method abstract unmark()V
.end method
