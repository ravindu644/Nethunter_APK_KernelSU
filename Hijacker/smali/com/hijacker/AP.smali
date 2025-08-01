.class Lcom/hijacker/AP;
.super Lcom/hijacker/Device;
.source "AP.java"


# static fields
.field static final APs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/AP;",
            ">;"
        }
    .end annotation
.end field

.field static final APsHM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hijacker/AP;",
            ">;"
        }
    .end annotation
.end field

.field static final OPN:I = 0x3

.field static final UNKNOWN:I = 0x4

.field static final WEP:I = 0x2

.field static final WPA:I = 0x0

.field static final WPA2:I = 0x1

.field static final currentTargetDeauth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/AP;",
            ">;"
        }
    .end annotation
.end field

.field static hidden:I

.field static final marked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/AP;",
            ">;"
        }
    .end annotation
.end field

.field static opn:I

.field static wep:I

.field static wpa:I

.field static wpa2:I


# instance fields
.field auth:Ljava/lang/String;

.field private beacons:I

.field ch:I

.field cipher:Ljava/lang/String;

.field final clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/ST;",
            ">;"
        }
    .end annotation
.end field

.field private data:I

.field enc:Ljava/lang/String;

.field essid:Ljava/lang/String;

.field id:I

.field isHidden:Z

.field private ivs:I

.field sec:I

.field private total_beacons:I

.field private total_data:I

.field private total_ivs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hijacker/AP;->APsHM:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/AP;->currentTargetDeauth:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 11

    move-object v10, p0

    move-object v0, p2

    invoke-direct {p0, p2}, Lcom/hijacker/Device;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/hijacker/AP;->isHidden:Z

    const/4 v1, 0x4

    iput v1, v10, Lcom/hijacker/AP;->sec:I

    iput v0, v10, Lcom/hijacker/AP;->total_beacons:I

    iput v0, v10, Lcom/hijacker/AP;->total_data:I

    iput v0, v10, Lcom/hijacker/AP;->total_ivs:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    sget-object v0, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v10, Lcom/hijacker/AP;->id:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/hijacker/AP;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    iget-object v0, v10, Lcom/hijacker/AP;->manuf:Ljava/lang/String;

    iput-object v0, v10, Lcom/hijacker/AP;->upperRight:Ljava/lang/String;

    iget-object v0, v10, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    iput-object v0, v10, Lcom/hijacker/AP;->lowerLeft:Ljava/lang/String;

    sget-object v0, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/hijacker/AP;->APsHM:Ljava/util/HashMap;

    iget-object v1, v10, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static clear()V
    .locals 1

    sget-object v0, Lcom/hijacker/AP;->APsHM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/AP;->wpa:I

    sput v0, Lcom/hijacker/AP;->wpa2:I

    sput v0, Lcom/hijacker/AP;->wep:I

    sput v0, Lcom/hijacker/AP;->opn:I

    sput v0, Lcom/hijacker/AP;->hidden:I

    return-void
.end method

.method static getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;
    .locals 1

    sget-object v0, Lcom/hijacker/AP;->APsHM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hijacker/AP;

    return-object p0
.end method

.method static saveAll()V
    .locals 2

    sget-object v0, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/AP;

    invoke-virtual {v1}, Lcom/hijacker/AP;->saveData()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addClient(Lcom/hijacker/ST;)V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/hijacker/AP;->currentTargetDeauth:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hijacker/ST;->disconnect()V

    :cond_0
    return-void
.end method

.method crack()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    sget-object v2, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {v2}, Lcom/hijacker/MainActivity$MyListAdapter;->notifyDataSetChanged()V

    sget-object v2, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "running_on_wearos"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v2, p0, Lcom/hijacker/AP;->sec:I

    const-string v3, "HIJACKER/AP"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "Cracking WEP"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/hijacker/Airodump;->reset()V

    invoke-static {p0}, Lcom/hijacker/Airodump;->setAP(Lcom/hijacker/AP;)V

    invoke-static {v1}, Lcom/hijacker/Airodump;->setForWEP(Z)V

    invoke-static {}, Lcom/hijacker/Airodump;->start()V

    iget-object v0, p0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    const-string v2, "<hidden>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hijacker/MainActivity;->startAireplayWEP(Lcom/hijacker/AP;)V

    :cond_1
    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    if-ne v2, v1, :cond_6

    :cond_3
    invoke-static {}, Lcom/hijacker/MainActivity;->stopWPA()V

    sget-boolean v2, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v2, :cond_4

    const-string v2, "Cracking WPA/WPA2"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/hijacker/Airodump;->reset()V

    invoke-static {p0}, Lcom/hijacker/Airodump;->setAP(Lcom/hijacker/AP;)V

    invoke-static {v1}, Lcom/hijacker/Airodump;->setForWPA(Z)V

    invoke-static {}, Lcom/hijacker/Airodump;->start()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/hijacker/MainActivity;->startAireplayWear(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/hijacker/MainActivity;->startAireplay(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/hijacker/MainActivity;->wpa_runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    sget-object v0, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_1
    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/hijacker/MainActivity;->isolate(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method crackReaver(Lcom/hijacker/MainActivity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sput-object p0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object p1, p1, Lcom/hijacker/MainActivity;->reaverFragment:Lcom/hijacker/ReaverFragment;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/hijacker/ReaverFragment;->setAutostart(Z)Lcom/hijacker/ReaverFragment;

    move-result-object p1

    const v2, 0x7f0900cb

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 p1, 0x1001

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method disconnectAll()V
    .locals 4

    invoke-static {}, Lcom/hijacker/Airodump;->getChannel()I

    move-result v0

    iget v1, p0, Lcom/hijacker/AP;->ch:I

    const-string v2, "HIJACKER/AP"

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting airodump for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hijacker/AP;->ch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/hijacker/AP;->ch:I

    invoke-static {v0}, Lcom/hijacker/Airodump;->startClean(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    :cond_1
    sget-boolean v0, Lcom/hijacker/MainActivity;->target_deauth:Z

    const-string v1, "..."

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting targeted deauthentication for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/ST;

    invoke-virtual {v1}, Lcom/hijacker/ST;->disconnect()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hijacker/AP;->currentTargetDeauth:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting aireplay without targets for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/hijacker/MainActivity;->startAireplay(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method getBeacons()I
    .locals 2

    iget v0, p0, Lcom/hijacker/AP;->total_beacons:I

    iget v1, p0, Lcom/hijacker/AP;->beacons:I

    add-int/2addr v0, v1

    return v0
.end method

.method getData()I
    .locals 2

    iget v0, p0, Lcom/hijacker/AP;->total_data:I

    iget v1, p0, Lcom/hijacker/AP;->data:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExported()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hijacker/AP;->pwr:I

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

    iget v0, p0, Lcom/hijacker/AP;->ch:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/AP;->getBeacons()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/AP;->getData()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/AP;->getIvs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP;->auth:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP;->cipher:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/hijacker/AP;->isHidden:Z

    if-eqz v0, :cond_0

    const-string v0, "Yes"

    goto :goto_0

    :cond_0
    const-string v0, "No"

    :goto_0
    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->getFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP;->manuf:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIvs()I
    .locals 2

    iget v0, p0, Lcom/hijacker/AP;->total_ivs:I

    iget v1, p0, Lcom/hijacker/AP;->ivs:I

    add-int/2addr v0, v1

    return v0
.end method

.method getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 6

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

    iget-boolean v3, p0, Lcom/hijacker/AP;->isMarked:Z

    if-eqz v3, :cond_0

    const-string v3, "Unmark"

    goto :goto_0

    :cond_0
    const-string v3, "Mark"

    :goto_0
    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "Copy MAC"

    invoke-interface {v1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x3

    const-string v4, "Watch"

    invoke-interface {v1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v5, "Set alias"

    invoke-interface {v1, v2, v4, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v5, "Attack..."

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v1, Lcom/hijacker/AP$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hijacker/AP$2;-><init>(Lcom/hijacker/AP;Lcom/hijacker/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method mark()V
    .locals 1

    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hijacker/AP;->isMarked:Z

    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    return-void
.end method

.method removeClient(Lcom/hijacker/ST;)V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method saveData()V
    .locals 2

    iget v0, p0, Lcom/hijacker/AP;->total_beacons:I

    iget v1, p0, Lcom/hijacker/AP;->beacons:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hijacker/AP;->total_beacons:I

    iget v0, p0, Lcom/hijacker/AP;->total_data:I

    iget v1, p0, Lcom/hijacker/AP;->data:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hijacker/AP;->total_data:I

    iget v0, p0, Lcom/hijacker/AP;->total_ivs:I

    iget v1, p0, Lcom/hijacker/AP;->ivs:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hijacker/AP;->total_ivs:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hijacker/AP;->beacons:I

    iput v0, p0, Lcom/hijacker/AP;->data:I

    iput v0, p0, Lcom/hijacker/AP;->ivs:I

    return-void
.end method

.method showInfo(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/hijacker/APDialog;

    invoke-direct {v0}, Lcom/hijacker/APDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/hijacker/APDialog;->setAP(Lcom/hijacker/AP;)Lcom/hijacker/APDialog;

    move-result-object v0

    const-string v1, "APDialog"

    invoke-virtual {v0, p1, v1}, Lcom/hijacker/APDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    const/16 v2, 0x29

    const-string v3, " ("

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unmark()V
    .locals 1

    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/AP;->isMarked:Z

    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    return-void
.end method

.method update()V
    .locals 10

    iget-object v1, p0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    iget-object v2, p0, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    iget-object v3, p0, Lcom/hijacker/AP;->cipher:Ljava/lang/String;

    iget-object v4, p0, Lcom/hijacker/AP;->auth:Ljava/lang/String;

    iget v5, p0, Lcom/hijacker/AP;->pwr:I

    iget v6, p0, Lcom/hijacker/AP;->beacons:I

    iget v7, p0, Lcom/hijacker/AP;->data:I

    iget v8, p0, Lcom/hijacker/AP;->ivs:I

    iget v9, p0, Lcom/hijacker/AP;->ch:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/hijacker/AP;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    sget-boolean v6, Lcom/hijacker/MainActivity;->toSort:Z

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v6, :cond_7

    sget v6, Lcom/hijacker/MainActivity;->sort:I

    if-eqz v6, :cond_7

    sget v6, Lcom/hijacker/MainActivity;->sort:I

    if-eq v6, v11, :cond_6

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_0

    goto :goto_3

    :cond_0
    iget v6, v0, Lcom/hijacker/AP;->pwr:I

    if-eq v6, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    sput-boolean v6, Lcom/hijacker/MainActivity;->toSort:Z

    goto :goto_3

    :cond_2
    iget v6, v0, Lcom/hijacker/AP;->data:I

    if-eq v6, v4, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    sput-boolean v6, Lcom/hijacker/MainActivity;->toSort:Z

    goto :goto_3

    :cond_4
    iget v6, v0, Lcom/hijacker/AP;->beacons:I

    if-eq v6, v3, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    sput-boolean v6, Lcom/hijacker/MainActivity;->toSort:Z

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    iget-object v6, v0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v11

    sput-boolean v6, Lcom/hijacker/MainActivity;->toSort:Z

    :cond_7
    :goto_3
    iput-object v1, v0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    const-string v6, "<hidden>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/hijacker/AP;->isHidden:Z

    if-nez v1, :cond_8

    iput-boolean v11, v0, Lcom/hijacker/AP;->isHidden:Z

    sget v1, Lcom/hijacker/AP;->hidden:I

    add-int/2addr v1, v11

    sput v1, Lcom/hijacker/AP;->hidden:I

    :cond_8
    iget v1, v0, Lcom/hijacker/AP;->beacons:I

    if-ne v3, v1, :cond_9

    iget v1, v0, Lcom/hijacker/AP;->data:I

    if-ne v4, v1, :cond_9

    iget v1, v0, Lcom/hijacker/AP;->ivs:I

    if-ne v5, v1, :cond_9

    iget-wide v12, v0, Lcom/hijacker/AP;->lastseen:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-nez v1, :cond_a

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/hijacker/AP;->lastseen:J

    :cond_a
    iget v1, v0, Lcom/hijacker/AP;->beacons:I

    if-lt v3, v1, :cond_c

    iget v1, v0, Lcom/hijacker/AP;->data:I

    if-lt v4, v1, :cond_c

    iget v1, v0, Lcom/hijacker/AP;->ivs:I

    if-ge v5, v1, :cond_b

    goto :goto_4

    :cond_b
    iput v3, v0, Lcom/hijacker/AP;->beacons:I

    iput v4, v0, Lcom/hijacker/AP;->data:I

    iput v5, v0, Lcom/hijacker/AP;->ivs:I

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/hijacker/AP;->saveData()V

    :goto_5
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/hijacker/AP;->cipher:Ljava/lang/String;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/hijacker/AP;->auth:Ljava/lang/String;

    iput v2, v0, Lcom/hijacker/AP;->pwr:I

    move/from16 v1, p9

    iput v1, v0, Lcom/hijacker/AP;->ch:I

    iget v1, v0, Lcom/hijacker/AP;->sec:I

    if-ne v1, v7, :cond_12

    iget-object v1, v0, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v3, "WPA2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    goto :goto_6

    :sswitch_1
    const-string v3, "WPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    goto :goto_6

    :sswitch_2
    const-string v3, "WEP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x2

    goto :goto_6

    :sswitch_3
    const-string v3, "OPN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x3

    :cond_d
    :goto_6
    if-eqz v2, :cond_11

    if-eq v2, v11, :cond_10

    if-eq v2, v9, :cond_f

    if-eq v2, v8, :cond_e

    goto :goto_7

    :cond_e
    sget v1, Lcom/hijacker/AP;->opn:I

    add-int/2addr v1, v11

    sput v1, Lcom/hijacker/AP;->opn:I

    iput v8, v0, Lcom/hijacker/AP;->sec:I

    goto :goto_7

    :cond_f
    sget v1, Lcom/hijacker/AP;->wep:I

    add-int/2addr v1, v11

    sput v1, Lcom/hijacker/AP;->wep:I

    iput v9, v0, Lcom/hijacker/AP;->sec:I

    goto :goto_7

    :cond_10
    sget v1, Lcom/hijacker/AP;->wpa2:I

    add-int/2addr v1, v11

    sput v1, Lcom/hijacker/AP;->wpa2:I

    iput v11, v0, Lcom/hijacker/AP;->sec:I

    goto :goto_7

    :cond_11
    sget v1, Lcom/hijacker/AP;->wpa:I

    add-int/2addr v1, v11

    sput v1, Lcom/hijacker/AP;->wpa:I

    iput v10, v0, Lcom/hijacker/AP;->sec:I

    :cond_12
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    if-nez v2, :cond_13

    const-string v2, ""

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hijacker/AP;->upperLeft:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PWR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/hijacker/AP;->pwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | SEC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | CH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/hijacker/AP;->ch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | B:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/hijacker/AP;->getBeacons()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | D:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/hijacker/AP;->getData()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hijacker/AP;->lowerRight:Ljava/lang/String;

    new-instance v1, Lcom/hijacker/AP$1;

    invoke-direct {v1, v0}, Lcom/hijacker/AP$1;-><init>(Lcom/hijacker/AP;)V

    invoke-static {v1}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1328d -> :sswitch_3
        0x14f42 -> :sswitch_2
        0x15088 -> :sswitch_1
        0x28c0aa -> :sswitch_0
    .end sparse-switch
.end method
