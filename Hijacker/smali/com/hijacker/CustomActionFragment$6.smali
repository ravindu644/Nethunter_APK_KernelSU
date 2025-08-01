.class Lcom/hijacker/CustomActionFragment$6;
.super Ljava/lang/Object;
.source "CustomActionFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionFragment;->showTargetSelector()V
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

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment$6;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$6;->this$0:Lcom/hijacker/CustomActionFragment;

    sget-object v2, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/Device;

    invoke-virtual {v0, p1}, Lcom/hijacker/CustomActionFragment;->onTargetSelected(Lcom/hijacker/Device;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$6;->this$0:Lcom/hijacker/CustomActionFragment;

    sget-object v2, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/Device;

    invoke-virtual {v0, p1}, Lcom/hijacker/CustomActionFragment;->onTargetSelected(Lcom/hijacker/Device;)V

    :goto_0
    return v1
.end method
