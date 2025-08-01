.class Lcom/hijacker/ReaverFragment$3;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ReaverFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/ReaverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$3;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    invoke-virtual {p1}, Lcom/hijacker/ReaverFragment$ReaverTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/hijacker/ReaverFragment$3;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-virtual {p1}, Lcom/hijacker/ReaverFragment;->attemptStart()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    sget-object p1, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hijacker/ReaverFragment$ReaverTask;->cancel(Z)Z

    :goto_0
    return-void
.end method
