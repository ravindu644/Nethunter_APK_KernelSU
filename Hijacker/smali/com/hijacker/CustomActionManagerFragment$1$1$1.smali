.class Lcom/hijacker/CustomActionManagerFragment$1$1$1;
.super Ljava/lang/Object;
.source "CustomActionManagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionManagerFragment$1$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hijacker/CustomActionManagerFragment$1$1;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionManagerFragment$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionManagerFragment$1$1$1;->this$2:Lcom/hijacker/CustomActionManagerFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->actions_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    iget-object v3, p0, Lcom/hijacker/CustomActionManagerFragment$1$1$1;->this$2:Lcom/hijacker/CustomActionManagerFragment$1$1;

    iget v3, v3, Lcom/hijacker/CustomActionManagerFragment$1$1;->val$index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hijacker/CustomAction;

    invoke-virtual {v2}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-object v0, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    iget-object v1, p0, Lcom/hijacker/CustomActionManagerFragment$1$1$1;->this$2:Lcom/hijacker/CustomActionManagerFragment$1$1;

    iget v1, v1, Lcom/hijacker/CustomActionManagerFragment$1$1;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/hijacker/MainActivity;->custom_action_adapter:Lcom/hijacker/MainActivity$CustomActionAdapter;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity$CustomActionAdapter;->notifyDataSetChanged()V

    return-void
.end method
