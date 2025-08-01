.class Lcom/hijacker/MDKFragment$1$1;
.super Ljava/lang/Object;
.source "MDKFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MDKFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/MDKFragment$1;

.field final synthetic val$dialog:Lcom/hijacker/FileExplorerDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/MDKFragment$1;Lcom/hijacker/FileExplorerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MDKFragment$1$1;->this$1:Lcom/hijacker/MDKFragment$1;

    iput-object p2, p0, Lcom/hijacker/MDKFragment$1$1;->val$dialog:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/MDKFragment$1$1;->this$1:Lcom/hijacker/MDKFragment$1;

    iget-object v0, v0, Lcom/hijacker/MDKFragment$1;->this$0:Lcom/hijacker/MDKFragment;

    iget-object v0, v0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hijacker/MDKFragment$1$1;->val$dialog:Lcom/hijacker/FileExplorerDialog;

    iget-object v1, v1, Lcom/hijacker/FileExplorerDialog;->result:Lcom/hijacker/RootFile;

    invoke-virtual {v1}, Lcom/hijacker/RootFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/MDKFragment$1$1;->this$1:Lcom/hijacker/MDKFragment$1;

    iget-object v0, v0, Lcom/hijacker/MDKFragment$1;->this$0:Lcom/hijacker/MDKFragment;

    iget-object v0, v0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
