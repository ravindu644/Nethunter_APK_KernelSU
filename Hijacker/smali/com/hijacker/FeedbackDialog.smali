.class public Lcom/hijacker/FeedbackDialog;
.super Landroid/app/DialogFragment;
.source "FeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/FeedbackDialog$ReportTask;
    }
.end annotation


# instance fields
.field dialogView:Landroid/view/View;

.field feedbackView:Landroid/widget/EditText;

.field include_report:Landroid/widget/CheckBox;

.field progress:Landroid/widget/ProgressBar;

.field report:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/FeedbackDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/FeedbackDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0037

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/FeedbackDialog;->dialogView:Landroid/view/View;

    const v2, 0x7f0900e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/FeedbackDialog;->include_report:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog;->dialogView:Landroid/view/View;

    const v2, 0x7f0900bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hijacker/FeedbackDialog;->feedbackView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog;->dialogView:Landroid/view/View;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hijacker/FeedbackDialog;->progress:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog;->include_report:Landroid/widget/CheckBox;

    new-instance v1, Lcom/hijacker/FeedbackDialog$1;

    invoke-direct {v1, p0}, Lcom/hijacker/FeedbackDialog$1;-><init>(Lcom/hijacker/FeedbackDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Lcom/hijacker/FeedbackDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/FeedbackDialog$2;

    invoke-direct {v0, p0}, Lcom/hijacker/FeedbackDialog$2;-><init>(Lcom/hijacker/FeedbackDialog;)V

    const v1, 0x7f10003e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/FeedbackDialog$3;

    invoke-direct {v0, p0}, Lcom/hijacker/FeedbackDialog$3;-><init>(Lcom/hijacker/FeedbackDialog;)V

    const v1, 0x7f100155

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
