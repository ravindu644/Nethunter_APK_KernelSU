.class Lcom/hijacker/ReaverFragment$2$1$1;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment$2$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hijacker/ReaverFragment$2$1;

.field final synthetic val$dialog:Lcom/hijacker/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/ReaverFragment$2$1;Lcom/hijacker/EditTextDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$2$1$1;->this$2:Lcom/hijacker/ReaverFragment$2$1;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment$2$1$1;->val$dialog:Lcom/hijacker/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$2$1$1;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v0, v0, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    sput-object v0, Lcom/hijacker/ReaverFragment;->custom_mac:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$2$1$1;->this$2:Lcom/hijacker/ReaverFragment$2$1;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$2$1;->this$1:Lcom/hijacker/ReaverFragment$2;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$2;->this$0:Lcom/hijacker/ReaverFragment;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hijacker/ReaverFragment$2$1$1;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v1, v1, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
