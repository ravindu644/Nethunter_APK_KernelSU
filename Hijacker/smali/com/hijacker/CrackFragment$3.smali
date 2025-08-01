.class Lcom/hijacker/CrackFragment$3;
.super Ljava/lang/Object;
.source "CrackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CrackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CrackFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CrackFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CrackFragment$3;->this$0:Lcom/hijacker/CrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/hijacker/CrackFragment;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/CrackFragment$3;->this$0:Lcom/hijacker/CrackFragment;

    invoke-virtual {p1}, Lcom/hijacker/CrackFragment;->attemptStart()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hijacker/CrackFragment$CrackTask;->cancel(Z)Z

    :goto_0
    return-void
.end method
