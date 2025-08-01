.class Lcom/hijacker/MDKFragment$4;
.super Ljava/lang/Object;
.source "MDKFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MDKFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MDKFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/MDKFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MDKFragment$4;->this$0:Lcom/hijacker/MDKFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/MDKFragment$4;->this$0:Lcom/hijacker/MDKFragment;

    invoke-virtual {v0, p1}, Lcom/hijacker/MDKFragment;->onSelectClick(Landroid/view/View;)V

    return-void
.end method
