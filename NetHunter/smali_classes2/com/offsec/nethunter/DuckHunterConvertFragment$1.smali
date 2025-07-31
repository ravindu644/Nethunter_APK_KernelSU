.class Lcom/offsec/nethunter/DuckHunterConvertFragment$1;
.super Ljava/lang/Object;
.source "DuckHunterConvertFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/DuckHunterConvertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION"

    const-string v2, "SHOULDCONVERT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
