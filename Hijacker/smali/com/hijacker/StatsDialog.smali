.class public Lcom/hijacker/StatsDialog;
.super Landroid/app/DialogFragment;
.source "StatsDialog.java"


# static fields
.field static isResumed:Z = false

.field static runnable:Ljava/lang/Runnable;


# instance fields
.field connected_count:Landroid/widget/TextView;

.field hidden_count:Landroid/widget/TextView;

.field opn_count:Landroid/widget/TextView;

.field wep_count:Landroid/widget/TextView;

.field wpa2_count:Landroid/widget/TextView;

.field wpa_count:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/StatsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/StatsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/StatsDialog;->wpa_count:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hijacker/StatsDialog;->wpa_count:Landroid/widget/TextView;

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hijacker/StatsDialog;->wpa2_count:Landroid/widget/TextView;

    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hijacker/StatsDialog;->wep_count:Landroid/widget/TextView;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hijacker/StatsDialog;->opn_count:Landroid/widget/TextView;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hijacker/StatsDialog;->hidden_count:Landroid/widget/TextView;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hijacker/StatsDialog;->connected_count:Landroid/widget/TextView;

    :cond_0
    new-instance v1, Lcom/hijacker/StatsDialog$1;

    invoke-direct {v1, p0}, Lcom/hijacker/StatsDialog$1;-><init>(Lcom/hijacker/StatsDialog;)V

    sput-object v1, Lcom/hijacker/StatsDialog;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10002d

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10005a

    new-instance v1, Lcom/hijacker/StatsDialog$2;

    invoke-direct {v1, p0}, Lcom/hijacker/StatsDialog$2;-><init>(Lcom/hijacker/StatsDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hijacker/StatsDialog;->isResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hijacker/StatsDialog;->isResumed:Z

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
