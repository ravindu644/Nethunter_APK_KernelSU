.class Lcom/hijacker/CustomActionEditorFragment$1;
.super Ljava/lang/Object;
.source "CustomActionEditorFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionEditorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CustomActionEditorFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->has_process_name_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->save_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$1;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    const v0, 0x7f090199

    if-ne p2, v0, :cond_0

    const p2, 0x7f10013e

    goto :goto_0

    :cond_0
    const p2, 0x7f10013f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(I)V

    return-void
.end method
