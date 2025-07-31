.class public Lcom/offsec/nethunter/CANFragment$TabsPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CANFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lcom/offsec/nethunter/CANFragment$ToolsFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;-><init>()V

    return-object p1

    :cond_3
    new-instance p1, Lcom/offsec/nethunter/CANFragment$MainFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;-><init>()V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
