.class Lcom/hijacker/MainActivity$SetupTask$6;
.super Landroid/os/CountDownTimer;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/MainActivity$SetupTask;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$6;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$6;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hijacker/MainActivity;->doRestart(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$6;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object p1, p1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string p2, "WearOS Init DONE. Restarting..."

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
