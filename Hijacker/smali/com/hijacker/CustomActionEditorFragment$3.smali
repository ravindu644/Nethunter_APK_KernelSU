.class Lcom/hijacker/CustomActionEditorFragment$3;
.super Ljava/lang/Object;
.source "CustomActionEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f100182

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f10016c

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f10016d

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f100177

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->has_process_name_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f100138

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_6
    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    const/4 v6, -0x1

    const-string v7, " "

    const v8, 0x7f100149

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->actions_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v4, v4, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v4}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".action"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/hijacker/MainActivity;->actions_path:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_7
    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {p1, v1}, Lcom/hijacker/CustomAction;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {p1, v2}, Lcom/hijacker/CustomAction;->setStartCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {p1, v3}, Lcom/hijacker/CustomAction;->setStopCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->getType()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomAction;->setRequiresClients(Z)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomAction;->setRequiresConnected(Z)V

    :goto_0
    invoke-static {}, Lcom/hijacker/CustomAction;->save()V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    invoke-virtual {v1, v8}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v1, v1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto/16 :goto_4

    :cond_9
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    sget-object v5, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hijacker/CustomAction;

    invoke-virtual {v5}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 p1, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    const v1, 0x7f10001f

    invoke-virtual {v0, v1}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_c
    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f09004d

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    new-instance v9, Lcom/hijacker/CustomAction;

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/hijacker/CustomAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomAction;->setRequiresClients(Z)V

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    new-instance v9, Lcom/hijacker/CustomAction;

    const/4 v5, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/hijacker/CustomAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomAction;->setRequiresConnected(Z)V

    :goto_3
    invoke-static {}, Lcom/hijacker/CustomAction;->save()V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    invoke-virtual {v1, v8}, Lcom/hijacker/CustomActionEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment$3;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object v1, v1, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    :goto_4
    return-void
.end method
