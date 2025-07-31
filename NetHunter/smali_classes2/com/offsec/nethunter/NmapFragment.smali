.class public Lcom/offsec/nethunter/NmapFragment;
.super Landroidx/fragment/app/Fragment;
.source "NmapFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final CommandComposed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NMAPFragment"


# instance fields
.field private MySearch:Ljava/lang/String;

.field private OSdetect:Ljava/lang/String;

.field private Ports:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fastmode:Ljava/lang/String;

.field private ipv6check:Ljava/lang/String;

.field private net_interface:Ljava/lang/String;

.field private portsBar:Landroid/widget/EditText;

.field private searchBar:Landroid/widget/EditText;

.field private searchall:Ljava/lang/String;

.field private sv:Ljava/lang/String;

.field private technique:Ljava/lang/String;

.field private time_template:Ljava/lang/String;

.field private topports:Ljava/lang/String;

.field private udpscan:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetMySearch(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->MySearch:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetPorts(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->Ports:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetportsBar(Lcom/offsec/nethunter/NmapFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->portsBar:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchBar(Lcom/offsec/nethunter/NmapFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->searchBar:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->technique:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime_template(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NmapFragment;->time_template:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputMySearch(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->MySearch:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputPorts(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->Ports:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnet_interface(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->technique:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime_template(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->time_template:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddToCmd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smremoveFromCmd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private addClickListener(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090349

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static addToCmd(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static cleanCmd()V
    .locals 3

    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private getCmd()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    sget-object v2, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nmap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NMAP CMD OUTPUT: "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "NMAPFragment"

    if-eqz p2, :cond_0

    const-string p2, "Advanced Options Open"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p2, "Advanced Options Closed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/NmapFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/NmapFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/NmapFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/NmapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static removeFromCmd(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-NmapFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/NmapFragment;->getCmd()Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -O"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->OSdetect:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->OSdetect:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-NmapFragment(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "nmap "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/NmapFragment;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/NmapFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-NmapFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const-string p2, "NMAPFragment"

    if-eqz p1, :cond_0

    const-string p1, " -A"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -F"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -sn"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " --top-ports 20"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->topports:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->topports:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -sU"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->udpscan:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->udpscan:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -6"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->ipv6check:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->ipv6check:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -sV"

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->sv:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->sv:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/NmapFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c00a1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09033f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const-string v1, "com.offsec.nethunter"

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const p3, 0x7f090340

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f090349

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090343

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const v0, 0x7f03000f

    const v1, 0x1090008

    invoke-static {p3, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    const v0, 0x1090009

    invoke-virtual {p3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string v2, "wlan0"

    iput-object v2, p0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    new-instance v2, Lcom/offsec/nethunter/NmapFragment$1;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/NmapFragment$1;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f09034a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const v3, 0x7f030010

    invoke-static {v2, v3, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {p3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$2;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/NmapFragment$2;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance p2, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-direct {p0, p2, p1}, Lcom/offsec/nethunter/NmapFragment;->addClickListener(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    const p2, 0x7f09034c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const v2, 0x7f030011

    invoke-static {p3, v2, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$3;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/NmapFragment$3;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090341

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p3, 0x7f090342

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    new-instance v0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090347

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    new-instance v0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09034d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    new-instance v0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09034e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    new-instance v0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090344

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09033e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090346

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09034b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/NmapFragment;->searchBar:Landroid/widget/EditText;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$4;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/NmapFragment$4;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f090348

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/NmapFragment;->portsBar:Landroid/widget/EditText;

    new-instance p3, Lcom/offsec/nethunter/NmapFragment$5;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/NmapFragment$5;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/NmapFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
