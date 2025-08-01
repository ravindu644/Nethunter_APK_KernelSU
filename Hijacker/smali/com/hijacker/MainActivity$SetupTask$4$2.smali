.class Lcom/hijacker/MainActivity$SetupTask$4$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hijacker/MainActivity$SetupTask$4;

.field final synthetic val$capfile:Ljava/lang/String;

.field final synthetic val$found:Z


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask$4;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iput-boolean p2, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->val$found:Z

    iput-object p3, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->val$capfile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v1, v1, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v1, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v2, 0x7f100044

    invoke-virtual {v1, v2}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->val$found:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v3, 0x7f0900cb

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v4, v4, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v4, v4, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f1000ad

    invoke-virtual {v4, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->val$capfile:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v2, 0x7f100066

    new-instance v3, Lcom/hijacker/MainActivity$SetupTask$4$2$1;

    invoke-direct {v3, p0}, Lcom/hijacker/MainActivity$SetupTask$4$2$1;-><init>(Lcom/hijacker/MainActivity$SetupTask$4$2;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v4, v4, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v4, v4, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f10014a

    invoke-virtual {v4, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/MainActivity$SetupTask$4$2;->val$capfile:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    sget-object v3, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_2
    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_3

    const-string v0, "HIJACKER/wpa_thread"

    const-string v1, "wpa_thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
