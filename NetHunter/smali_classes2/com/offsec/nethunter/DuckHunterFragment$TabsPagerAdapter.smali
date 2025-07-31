.class public Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/offsec/nethunter/DuckHunterConvertFragment;

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetduckyInputFile(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetduckyOutputFile(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/offsec/nethunter/BtDuckyFragment;

    invoke-direct {p1}, Lcom/offsec/nethunter/BtDuckyFragment;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetduckyInputFile(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetduckyOutputFile(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "Convert"

    return-object p1

    :cond_0
    const-string p1, "BT Ducky"

    return-object p1

    :cond_1
    const-string p1, "Preview"

    return-object p1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
