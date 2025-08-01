.class Lcom/hijacker/MainActivity$SetupTask$4$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4$1$2;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    const v1, 0x7f100179

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$4$1$2;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4$1;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v2, 0x7f0900cb

    invoke-virtual {v0, v2}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/hijacker/MainActivity$SetupTask$4$1$2;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;

    iget-object v2, v2, Lcom/hijacker/MainActivity$SetupTask$4$1;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v2, v2, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v2, v2, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v2, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$4$1$2;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4$1;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object v2, p0, Lcom/hijacker/MainActivity$SetupTask$4$1$2;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;

    iget-object v2, v2, Lcom/hijacker/MainActivity$SetupTask$4$1;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v2, v2, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v2, v2, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v2, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/hijacker/MainActivity;->deauthWait:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method
