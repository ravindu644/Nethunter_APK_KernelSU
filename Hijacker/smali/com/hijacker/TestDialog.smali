.class public Lcom/hijacker/TestDialog;
.super Landroid/app/DialogFragment;
.source "TestDialog.java"


# static fields
.field static final TEST_WAIT:I = 0x1f4


# instance fields
.field dialogView:Landroid/view/View;

.field final runnable:Ljava/lang/Runnable;

.field test_cur_cmd:Landroid/widget/TextView;

.field test_progress:Landroid/widget/ProgressBar;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/hijacker/TestDialog$1;

    invoke-direct {v0, p0}, Lcom/hijacker/TestDialog$1;-><init>(Lcom/hijacker/TestDialog;)V

    iput-object v0, p0, Lcom/hijacker/TestDialog;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/hijacker/TestDialog;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-static {}, Lcom/hijacker/MainActivity;->loadPreferences()V

    invoke-virtual {p0}, Lcom/hijacker/TestDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v0, 0x7f0901af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hijacker/TestDialog;->test_progress:Landroid/widget/ProgressBar;

    sget-object p1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object p1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v2, 0x7f0900de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    sget-object p1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v3, 0x7f0900df

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    sget-object p1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v4, 0x7f0900e0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v4, 0x3

    aput-object v0, p1, v4

    sget-object p1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v5, 0x7f0900e1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v5, 0x4

    aput-object v0, p1, v5

    iget-object p1, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/TestDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/hijacker/TestDialog;->test_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hijacker/TestDialog;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hijacker/TestDialog;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/hijacker/TestDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100181

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/TestDialog$2;

    invoke-direct {v0, p0}, Lcom/hijacker/TestDialog$2;-><init>(Lcom/hijacker/TestDialog;)V

    const v1, 0x7f100033

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/TestDialog$3;

    invoke-direct {v0, p0}, Lcom/hijacker/TestDialog$3;-><init>(Lcom/hijacker/TestDialog;)V

    const v1, 0x7f100174

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/hijacker/TestDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/hijacker/TestDialog$4;

    invoke-direct {v1, p0}, Lcom/hijacker/TestDialog$4;-><init>(Lcom/hijacker/TestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->notif_on:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
