.class public Lcom/hijacker/CustomActionFragment;
.super Landroid/app/Fragment;
.source "CustomActionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/CustomActionFragment$CustomActionTask;
    }
.end annotation


# static fields
.field static console_text:Ljava/lang/String; = ""

.field static selectedAction:Lcom/hijacker/CustomAction;

.field static targetDevice:Lcom/hijacker/Device;

.field static task:Lcom/hijacker/CustomActionFragment$CustomActionTask;


# instance fields
.field actionBtn:Landroid/widget/Button;

.field consoleScrollView:Landroid/widget/ScrollView;

.field consoleView:Landroid/widget/TextView;

.field fragmentView:Landroid/view/View;

.field normalOptHeight:I

.field optionsContainer:Landroid/view/View;

.field startBtn:Landroid/widget/Button;

.field targetBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hijacker/CustomActionFragment;->normalOptHeight:I

    return-void
.end method

.method static isRunning()Z
    .locals 3

    sget-object v0, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method onActionSelected(Lcom/hijacker/CustomAction;)V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->getType()I

    move-result v0

    sget-object v1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/hijacker/CustomActionFragment;->targetDevice:Lcom/hijacker/Device;

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    const v1, 0x7f100151

    invoke-virtual {p0, v1}, Lcom/hijacker/CustomActionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    sput-object p1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->actionBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/hijacker/CustomActionFragment;->setRetainInstance(Z)V

    const p3, 0x7f0c0022

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09013f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090089

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->consoleView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09008a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->consoleScrollView:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09019b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09017c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090177

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment;->actionBtn:Landroid/widget/Button;

    sget-object p1, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    if-nez p1, :cond_0

    new-instance p1, Lcom/hijacker/CustomActionFragment$CustomActionTask;

    invoke-direct {p1, p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;-><init>(Lcom/hijacker/CustomActionFragment;)V

    sput-object p1, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    :cond_0
    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->actionBtn:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/CustomActionFragment$1;

    invoke-direct {p2, p0}, Lcom/hijacker/CustomActionFragment$1;-><init>(Lcom/hijacker/CustomActionFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/CustomActionFragment$2;

    invoke-direct {p2, p0}, Lcom/hijacker/CustomActionFragment$2;-><init>(Lcom/hijacker/CustomActionFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/CustomActionFragment$3;

    invoke-direct {p2, p0}, Lcom/hijacker/CustomActionFragment$3;-><init>(Lcom/hijacker/CustomActionFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/CustomActionFragment;->console_text:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f09012b

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->consoleView:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/CustomActionFragment;->console_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->consoleView:Landroid/widget/TextView;

    new-instance v1, Lcom/hijacker/CustomActionFragment$4;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomActionFragment$4;-><init>(Lcom/hijacker/CustomActionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hijacker/CustomActionFragment;->actionBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/hijacker/CustomActionFragment;->targetDevice:Lcom/hijacker/Device;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/hijacker/Device;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/hijacker/CustomActionFragment;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f100174

    goto :goto_0

    :cond_1
    const v1, 0x7f10016b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    invoke-virtual {v0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/hijacker/CustomActionFragment;->normalOptHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/hijacker/CustomActionFragment;->normalOptHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    sget-object v0, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/CustomActionFragment;->task:Lcom/hijacker/CustomActionFragment$CustomActionTask;

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method onTargetSelected(Lcom/hijacker/Device;)V
    .locals 1

    sput-object p1, Lcom/hijacker/CustomActionFragment;->targetDevice:Lcom/hijacker/Device;

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/hijacker/Device;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method showActionSelector()V
    .locals 6

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/hijacker/CustomActionFragment;->actionBtn:Landroid/widget/Button;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    sget-object v4, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hijacker/CustomAction;

    invoke-virtual {v4}, Lcom/hijacker/CustomAction;->getType()I

    move-result v4

    sget-object v5, Lcom/hijacker/CustomAction;->cmds:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hijacker/CustomAction;

    invoke-virtual {v5}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, -0x1

    add-int/lit8 v2, v2, 0x1

    const v5, 0x7f1000d5

    invoke-virtual {p0, v5}, Lcom/hijacker/CustomActionFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v1, Lcom/hijacker/CustomActionFragment$5;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomActionFragment$5;-><init>(Lcom/hijacker/CustomActionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method showTargetSelector()V
    .locals 8

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/hijacker/CustomActionFragment;->targetBtn:Landroid/widget/Button;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-object v1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hijacker/AP;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v4}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v3, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-object v5, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v5}, Lcom/hijacker/CustomAction;->requiresClients()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hijacker/ST;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v4}, Lcom/hijacker/ST;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v7, v3, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-object v5, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v5}, Lcom/hijacker/CustomAction;->requiresConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/hijacker/CustomActionFragment$6;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomActionFragment$6;-><init>(Lcom/hijacker/CustomActionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_4
    return-void
.end method
