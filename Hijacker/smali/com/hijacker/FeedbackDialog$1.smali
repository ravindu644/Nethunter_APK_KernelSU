.class Lcom/hijacker/FeedbackDialog$1;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FeedbackDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/FeedbackDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FeedbackDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FeedbackDialog$1;->this$0:Lcom/hijacker/FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/hijacker/FeedbackDialog$1;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object p1, p1, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    if-nez p1, :cond_0

    new-instance p1, Lcom/hijacker/FeedbackDialog$ReportTask;

    iget-object p2, p0, Lcom/hijacker/FeedbackDialog$1;->this$0:Lcom/hijacker/FeedbackDialog;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/hijacker/FeedbackDialog$ReportTask;-><init>(Lcom/hijacker/FeedbackDialog;Lcom/hijacker/FeedbackDialog$1;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Lcom/hijacker/FeedbackDialog$ReportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
