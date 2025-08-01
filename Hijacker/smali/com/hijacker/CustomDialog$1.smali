.class Lcom/hijacker/CustomDialog$1;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CustomDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomDialog$1;->this$0:Lcom/hijacker/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/CustomDialog$1;->this$0:Lcom/hijacker/CustomDialog;

    iget-object p1, p1, Lcom/hijacker/CustomDialog;->onPositiveClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/CustomDialog$1;->this$0:Lcom/hijacker/CustomDialog;

    iget-object p1, p1, Lcom/hijacker/CustomDialog;->onPositiveClick:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/hijacker/CustomDialog$1;->this$0:Lcom/hijacker/CustomDialog;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/hijacker/CustomDialog$1;->this$0:Lcom/hijacker/CustomDialog;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
