.class public Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/offsec/nethunter/BTFragment$CWFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/BTFragment$CWFragment;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/offsec/nethunter/BTFragment$SpoofFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lcom/offsec/nethunter/BTFragment$ToolsFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;-><init>()V

    return-object p1

    :cond_3
    new-instance p1, Lcom/offsec/nethunter/BTFragment$MainFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "Bad Bluetooth"

    return-object p1

    :cond_1
    const-string p1, "Carwhisperer"

    return-object p1

    :cond_2
    const-string p1, "Spoof"

    return-object p1

    :cond_3
    const-string p1, "Tools"

    return-object p1

    :cond_4
    const-string p1, "Main Page"

    return-object p1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
