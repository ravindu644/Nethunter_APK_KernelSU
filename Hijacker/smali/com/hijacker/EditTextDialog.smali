.class public Lcom/hijacker/EditTextDialog;
.super Landroid/app/DialogFragment;
.source "EditTextDialog.java"


# instance fields
.field private allowEmpty:Z

.field defaultText:Ljava/lang/String;

.field dialogView:Landroid/view/View;

.field fieldView:Landroid/widget/EditText;

.field hint:Ljava/lang/String;

.field result:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->hint:Ljava/lang/String;

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->defaultText:Ljava/lang/String;

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hijacker/EditTextDialog;->allowEmpty:Z

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/EditTextDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/EditTextDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    new-instance v1, Lcom/hijacker/EditTextDialog$1;

    invoke-direct {v1, p0}, Lcom/hijacker/EditTextDialog$1;-><init>(Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->hint:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->defaultText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10011e

    new-instance v1, Lcom/hijacker/EditTextDialog$2;

    invoke-direct {v1, p0}, Lcom/hijacker/EditTextDialog$2;-><init>(Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10003e

    new-instance v1, Lcom/hijacker/EditTextDialog$3;

    invoke-direct {v1, p0}, Lcom/hijacker/EditTextDialog$3;-><init>(Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method onOK()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hijacker/EditTextDialog;->allowEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    const v1, 0x7f10009e

    invoke-virtual {p0, v1}, Lcom/hijacker/EditTextDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->fieldView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hijacker/EditTextDialog;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0}, Lcom/hijacker/EditTextDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/hijacker/EditTextDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/hijacker/EditTextDialog$4;

    invoke-direct {v1, p0}, Lcom/hijacker/EditTextDialog$4;-><init>(Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method setAllowEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hijacker/EditTextDialog;->allowEmpty:Z

    return-void
.end method

.method setDefaultText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/EditTextDialog;->defaultText:Ljava/lang/String;

    return-void
.end method

.method setHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/EditTextDialog;->hint:Ljava/lang/String;

    return-void
.end method

.method setRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/EditTextDialog;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/EditTextDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
