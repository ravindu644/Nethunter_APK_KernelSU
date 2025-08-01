.class Lcom/hijacker/IsolatedFragment$1;
.super Ljava/lang/Object;
.source "IsolatedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/IsolatedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/IsolatedFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/IsolatedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment$1;->this$0:Lcom/hijacker/IsolatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$1;->this$0:Lcom/hijacker/IsolatedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hijacker/IsolatedFragment;->access$002(Lcom/hijacker/IsolatedFragment;Z)Z

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$1;->this$0:Lcom/hijacker/IsolatedFragment;

    invoke-static {v0}, Lcom/hijacker/IsolatedFragment;->access$000(Lcom/hijacker/IsolatedFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$1;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->refreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
