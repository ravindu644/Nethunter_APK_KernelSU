.class Lcom/hijacker/CustomActionFragment$3;
.super Ljava/lang/Object;
.source "CustomActionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CustomActionFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment$3;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/hijacker/CustomActionFragment;->isRunning()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment$3;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hijacker/CustomActionFragment$CustomActionTask;

    iget-object v1, p0, Lcom/hijacker/CustomActionFragment$3;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-direct {p1, v1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;-><init>(Lcom/hijacker/CustomActionFragment;)V

    sput-object p1, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    sget-object p1, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
