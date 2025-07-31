.class public Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DuckHuntBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterFragment;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ACTION"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SHOULDCONVERT"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fputshouldconvert(Lcom/offsec/nethunter/DuckHunterFragment;Z)V

    :cond_0
    return-void
.end method
