.class public Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DuckHunterConvertFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterConvertFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConvertDuckyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ACTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "WRITEDUCKY"

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->-$$Nest$mwrite_ducky(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V

    iget-object p2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "PREVIEWDUCKY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.offsec.nethunter.PREVIEWDUCKY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
