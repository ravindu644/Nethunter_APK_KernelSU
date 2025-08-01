.class Lcom/hijacker/CustomActionFragment$5;
.super Ljava/lang/Object;
.source "CustomActionFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionFragment;->showActionSelector()V
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

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment$5;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900cb

    new-instance v1, Lcom/hijacker/CustomActionManagerFragment;

    invoke-direct {v1}, Lcom/hijacker/CustomActionManagerFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$5;->this$0:Lcom/hijacker/CustomActionFragment;

    sget-object v1, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/CustomAction;

    invoke-virtual {v0, p1}, Lcom/hijacker/CustomActionFragment;->onActionSelected(Lcom/hijacker/CustomAction;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
