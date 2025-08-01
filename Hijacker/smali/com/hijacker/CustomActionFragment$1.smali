.class Lcom/hijacker/CustomActionFragment$1;
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

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment$1;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment$1;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-virtual {p1}, Lcom/hijacker/CustomActionFragment;->showActionSelector()V

    return-void
.end method
