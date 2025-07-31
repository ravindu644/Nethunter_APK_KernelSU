.class Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DuckHunterPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$com-offsec-nethunter-DuckHunterPreviewFragment$1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetpreviewSource(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onReceive$1$com-offsec-nethunter-DuckHunterPreviewFragment$1()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetexe(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetduckyOutputFile(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetmainHandler(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onReceive$2$com-offsec-nethunter-DuckHunterPreviewFragment$1()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetpreviewSource(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1100b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method synthetic lambda$onReceive$3$com-offsec-nethunter-DuckHunterPreviewFragment$1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetexecutorService(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetmainHandler(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$onReceive$4$com-offsec-nethunter-DuckHunterPreviewFragment$1()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetexe(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/duckyconverter -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetduckyInputFile(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -o "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetduckyOutputFile(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetmainHandler(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ACTION"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PREVIEWDUCKY"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SHOULDCONVERT"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->-$$Nest$fgetexecutorService(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
