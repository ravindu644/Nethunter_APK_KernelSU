.class Lcom/hijacker/CustomActionManagerFragment$1$1;
.super Ljava/lang/Object;
.source "CustomActionManagerFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionManagerFragment$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/CustomActionManagerFragment$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionManagerFragment$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->this$1:Lcom/hijacker/CustomActionManagerFragment$1;

    iput p2, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hijacker/CustomDialog;

    invoke-direct {p1}, Lcom/hijacker/CustomDialog;-><init>()V

    iget-object v2, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->this$1:Lcom/hijacker/CustomActionManagerFragment$1;

    iget-object v2, v2, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    const v3, 0x7f10001e

    invoke-virtual {v2, v3}, Lcom/hijacker/CustomActionManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hijacker/CustomDialog;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->this$1:Lcom/hijacker/CustomActionManagerFragment$1;

    iget-object v2, v2, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    const v3, 0x7f10001d

    invoke-virtual {v2, v3}, Lcom/hijacker/CustomActionManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hijacker/CustomDialog;->setMessage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->this$1:Lcom/hijacker/CustomActionManagerFragment$1;

    iget-object v2, v2, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    const v3, 0x7f100078

    invoke-virtual {v2, v3}, Lcom/hijacker/CustomActionManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hijacker/CustomActionManagerFragment$1$1$1;

    invoke-direct {v3, p0}, Lcom/hijacker/CustomActionManagerFragment$1$1$1;-><init>(Lcom/hijacker/CustomActionManagerFragment$1$1;)V

    invoke-virtual {p1, v2, v3}, Lcom/hijacker/CustomDialog;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->this$1:Lcom/hijacker/CustomActionManagerFragment$1;

    iget-object v2, v2, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    const v3, 0x7f10003e

    invoke-virtual {v2, v3}, Lcom/hijacker/CustomActionManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/hijacker/CustomDialog;->setNegativeButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->this$1:Lcom/hijacker/CustomActionManagerFragment$1;

    iget-object v0, v0, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    invoke-virtual {v0}, Lcom/hijacker/CustomActionManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "CustomDialog for action delete"

    invoke-virtual {p1, v0, v2}, Lcom/hijacker/CustomDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hijacker/CustomActionEditorFragment;

    invoke-direct {p1}, Lcom/hijacker/CustomActionEditorFragment;-><init>()V

    sget-object v2, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    iget v3, p0, Lcom/hijacker/CustomActionManagerFragment$1$1;->val$index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hijacker/CustomAction;

    iput-object v2, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    sget-object v2, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0900cb

    invoke-virtual {v2, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 p1, 0x1001

    invoke-virtual {v2, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return v1
.end method
