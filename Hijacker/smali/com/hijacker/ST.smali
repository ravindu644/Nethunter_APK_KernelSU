.class Lcom/hijacker/ST;
.super Lcom/hijacker/Device;
.source "ST.java"


# static fields
.field static final STs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/ST;",
            ">;"
        }
    .end annotation
.end field

.field static final STsHM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hijacker/ST;",
            ">;"
        }
    .end annotation
.end field

.field static connected:I

.field static final marked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/ST;",
            ">;"
        }
    .end annotation
.end field

.field static not_connected:Ljava/lang/String;

.field static paired:Ljava/lang/String;


# instance fields
.field bssid:Ljava/lang/String;

.field connectedTo:Lcom/hijacker/AP;

.field private frames:I

.field id:I

.field private lost:I

.field probes:Ljava/lang/String;

.field private total_frames:I

.field private total_lost:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hijacker/ST;->STsHM:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/ST;->marked:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/ST;->connected:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/hijacker/Device;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/hijacker/ST;->total_frames:I

    iput p1, p0, Lcom/hijacker/ST;->total_lost:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    sget-object p1, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/hijacker/ST;->id:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/hijacker/ST;->update(Ljava/lang/String;IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/ST;->manuf:Ljava/lang/String;

    iput-object p1, p0, Lcom/hijacker/ST;->upperRight:Ljava/lang/String;

    sget-object p1, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/hijacker/ST;->STsHM:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static clear()V
    .locals 1

    sget-object v0, Lcom/hijacker/ST;->STsHM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/hijacker/ST;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/ST;->connected:I

    return-void
.end method

.method static getSTByMac(Ljava/lang/String;)Lcom/hijacker/ST;
    .locals 1

    sget-object v0, Lcom/hijacker/ST;->STsHM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hijacker/ST;

    return-object p0
.end method

.method static saveAll()V
    .locals 2

    sget-object v0, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/ST;

    invoke-virtual {v1}, Lcom/hijacker/ST;->saveData()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method disconnect()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "running_on_wearos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/hijacker/Airodump;->getChannel()I

    move-result v1

    iget-object v2, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->ch:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    iget-object v1, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    iget v1, v1, Lcom/hijacker/AP;->ch:I

    invoke-static {v1}, Lcom/hijacker/Airodump;->startClean(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hijacker/MainActivity;->startAireplayWear(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hijacker/MainActivity;->startAireplay(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getExported()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "(not associated) "

    :cond_0
    const/16 v2, 0x13

    invoke-static {v0, v2}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hijacker/ST;->pwr:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/ST;->getFrames()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/ST;->getLost()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/ST;->manuf:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/ST;->probes:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrames()I
    .locals 2

    iget v0, p0, Lcom/hijacker/ST;->total_frames:I

    iget v1, p0, Lcom/hijacker/ST;->frames:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLost()I
    .locals 2

    iget v0, p0, Lcom/hijacker/ST;->total_lost:I

    iget v1, p0, Lcom/hijacker/ST;->lost:I

    add-int/2addr v0, v1

    return v0
.end method

.method getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 8

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Info"

    invoke-interface {v1, v2, v2, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget-boolean v3, p0, Lcom/hijacker/ST;->isMarked:Z

    if-eqz v3, :cond_0

    const-string v3, "Unmark"

    goto :goto_0

    :cond_0
    const-string v3, "Mark"

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-interface {v1, v2, v5, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x2

    const-string v6, "Copy MAC"

    invoke-interface {v1, v2, v4, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v4, 0x3

    const/4 v6, 0x5

    const-string v7, "Set alias"

    invoke-interface {v1, v2, v6, v4, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v7, "Disconnect"

    invoke-interface {v1, v2, v3, v5, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v3, "Copy disconnect command"

    invoke-interface {v1, v2, v4, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    new-instance v1, Lcom/hijacker/ST$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/hijacker/ST$4;-><init>(Lcom/hijacker/ST;Lcom/hijacker/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method mark()V
    .locals 1

    sget-object v0, Lcom/hijacker/ST;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hijacker/ST;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hijacker/ST;->isMarked:Z

    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    return-void
.end method

.method public saveData()V
    .locals 2

    iget v0, p0, Lcom/hijacker/ST;->total_frames:I

    iget v1, p0, Lcom/hijacker/ST;->frames:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hijacker/ST;->total_frames:I

    iget v0, p0, Lcom/hijacker/ST;->total_lost:I

    iget v1, p0, Lcom/hijacker/ST;->lost:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hijacker/ST;->total_lost:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hijacker/ST;->frames:I

    iput v0, p0, Lcom/hijacker/ST;->lost:I

    return-void
.end method

.method showInfo(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/hijacker/STDialog;

    invoke-direct {v0}, Lcom/hijacker/STDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/hijacker/STDialog;->setST(Lcom/hijacker/ST;)Lcom/hijacker/STDialog;

    move-result-object v0

    const-string v1, "STDialog"

    invoke-virtual {v0, p1, v1}, Lcom/hijacker/STDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    const-string v2, ""

    const/16 v3, 0x29

    const-string v4, " ("

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/hijacker/AP;->getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;

    move-result-object v2

    iget-object v2, v2, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unmark()V
    .locals 1

    sget-object v0, Lcom/hijacker/ST;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/ST;->isMarked:Z

    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    return-void
.end method

.method update()V
    .locals 6

    iget-object v1, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    iget v2, p0, Lcom/hijacker/ST;->pwr:I

    iget v3, p0, Lcom/hijacker/ST;->lost:I

    iget v4, p0, Lcom/hijacker/ST;->frames:I

    iget-object v5, p0, Lcom/hijacker/ST;->probes:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hijacker/ST;->update(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method update(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    invoke-virtual {v0, p0}, Lcom/hijacker/AP;->removeClient(Lcom/hijacker/ST;)V

    invoke-static {p1}, Lcom/hijacker/AP;->getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    if-nez v0, :cond_0

    sget v0, Lcom/hijacker/ST;->connected:I

    sub-int/2addr v0, v1

    sput v0, Lcom/hijacker/ST;->connected:I

    new-instance v0, Lcom/hijacker/ST$1;

    invoke-direct {v0, p0}, Lcom/hijacker/ST$1;-><init>(Lcom/hijacker/ST;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/hijacker/AP;->addClient(Lcom/hijacker/ST;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/hijacker/AP;->getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    if-eqz v0, :cond_2

    sget v2, Lcom/hijacker/ST;->connected:I

    add-int/2addr v2, v1

    sput v2, Lcom/hijacker/ST;->connected:I

    invoke-virtual {v0, p0}, Lcom/hijacker/AP;->addClient(Lcom/hijacker/ST;)V

    new-instance v0, Lcom/hijacker/ST$2;

    invoke-direct {v0, p0}, Lcom/hijacker/ST$2;-><init>(Lcom/hijacker/ST;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/hijacker/ST;->frames:I

    if-ne p4, v0, :cond_3

    iget v0, p0, Lcom/hijacker/ST;->lost:I

    if-ne p3, v0, :cond_3

    iget-wide v2, p0, Lcom/hijacker/ST;->lastseen:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hijacker/ST;->lastseen:J

    :cond_4
    sget-boolean v0, Lcom/hijacker/MainActivity;->toSort:Z

    if-nez v0, :cond_9

    sget v0, Lcom/hijacker/MainActivity;->sort:I

    if-eqz v0, :cond_9

    sget v0, Lcom/hijacker/MainActivity;->sort:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/hijacker/ST;->pwr:I

    if-eq v0, p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/hijacker/MainActivity;->toSort:Z

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/hijacker/ST;->frames:I

    if-eq v0, p4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Lcom/hijacker/MainActivity;->toSort:Z

    :cond_9
    :goto_3
    iget v0, p0, Lcom/hijacker/ST;->frames:I

    if-lt p4, v0, :cond_b

    iget v0, p0, Lcom/hijacker/ST;->lost:I

    if-ge p3, v0, :cond_a

    goto :goto_4

    :cond_a
    iput p3, p0, Lcom/hijacker/ST;->lost:I

    iput p4, p0, Lcom/hijacker/ST;->frames:I

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/hijacker/ST;->saveData()V

    :goto_5
    iput-object p1, p0, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    iput p2, p0, Lcom/hijacker/ST;->pwr:I

    const-string p1, ""

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "No probes"

    goto :goto_6

    :cond_c
    const-string p2, ","

    const-string p3, ", "

    invoke-virtual {p5, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_6
    iput-object p2, p0, Lcom/hijacker/ST;->probes:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    const-string p4, " ("

    if-nez p3, :cond_d

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/ST;->upperLeft:Ljava/lang/String;

    iget-object p1, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/hijacker/ST;->paired:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    iget-object p2, p2, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    iget-object p2, p2, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/ST;->lowerLeft:Ljava/lang/String;

    goto :goto_8

    :cond_e
    sget-object p1, Lcom/hijacker/ST;->not_connected:Ljava/lang/String;

    iput-object p1, p0, Lcom/hijacker/ST;->lowerLeft:Ljava/lang/String;

    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PWR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hijacker/ST;->pwr:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | Frames: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/ST;->getFrames()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/ST;->lowerRight:Ljava/lang/String;

    new-instance p1, Lcom/hijacker/ST$3;

    invoke-direct {p1, p0}, Lcom/hijacker/ST$3;-><init>(Lcom/hijacker/ST;)V

    invoke-static {p1}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void
.end method
