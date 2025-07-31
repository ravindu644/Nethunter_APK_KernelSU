.class public Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "HidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/HidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "Powershell HTTP Payload"

    return-object p1

    :cond_0
    const-string p1, "Windows CMD"

    return-object p1

    :cond_1
    const-string p1, "PowerSploit"

    return-object p1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
