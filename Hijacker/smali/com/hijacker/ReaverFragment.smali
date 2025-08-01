.class public Lcom/hijacker/ReaverFragment;
.super Landroid/app/Fragment;
.source "ReaverFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/ReaverFragment$ReaverTask;
    }
.end annotation


# static fields
.field static ap:Lcom/hijacker/AP; = null

.field static console_text:Ljava/lang/String; = ""

.field static custom_mac:Ljava/lang/String; = null

.field static eap_fail:Z = false

.field static ignore_locked:Z = false

.field static locked_delay:Ljava/lang/String; = "60"

.field static no_nack:Z = false

.field static pin_delay:Ljava/lang/String; = "1"

.field static pixie_dust:Z = false

.field static pixie_dust_enabled:Z = true

.field static small_dh:Z

.field static task:Lcom/hijacker/ReaverFragment$ReaverTask;


# instance fields
.field autostart:Z

.field consoleScrollView:Landroid/widget/ScrollView;

.field consoleView:Landroid/widget/TextView;

.field eap_fail_cb:Landroid/widget/CheckBox;

.field fragmentView:Landroid/view/View;

.field ignored_locked_cb:Landroid/widget/CheckBox;

.field lockedDelayView:Landroid/widget/EditText;

.field no_nack_cb:Landroid/widget/CheckBox;

.field normalOptHeight:I

.field optionsContainer:Landroid/view/View;

.field pinDelayView:Landroid/widget/EditText;

.field pixie_dust_cb:Landroid/widget/CheckBox;

.field select_button:Landroid/widget/Button;

.field small_dh_cb:Landroid/widget/CheckBox;

.field start_button:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/ReaverFragment;->autostart:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/hijacker/ReaverFragment;->normalOptHeight:I

    return-void
.end method

.method static get_chroot_env(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    const-string v0, "USER=root"

    const-string v1, "SHELL=/bin/bash"

    const-string v2, "MAIL=/var/mail/root"

    const-string v3, "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

    const-string v4, "TERM=linux"

    const-string v5, "HOME=/root"

    const-string v6, "LOGNAME=root"

    const-string v7, "SHLVL=1"

    const-string v8, "YOU_KNOW_WHAT=THIS_IS_KALI_LINUX_NETHUNER_FROM_JAVA_BINKY"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const-string v3, " && "

    const/16 v4, 0x9

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    const-string v5, "export "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->monstart:Z

    const-string v2, "; "

    if-eqz v0, :cond_2

    const-string v0, "source monstart-nh"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/hijacker/MainActivity;->cont_on_fail:Z

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v0, Lcom/hijacker/MainActivity;->custom_chroot_cmd:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/hijacker/MainActivity;->custom_chroot_cmd:Ljava/lang/String;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    new-instance v0, Lcom/hijacker/ReaverFragment$6;

    invoke-direct {v0, p0}, Lcom/hijacker/ReaverFragment$6;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/hijacker/MainActivity;->custom_chroot_cmd:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hijacker/MainActivity;->cont_on_fail:Z

    if-eqz p0, :cond_4

    move-object v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isRunning()Z
    .locals 3

    sget-object v0, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hijacker/ReaverFragment$ReaverTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static stopReaver()V
    .locals 2

    sget-object v0, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hijacker/ReaverFragment$ReaverTask;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method attemptStart()V
    .locals 4

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hijacker/ReaverFragment;->custom_mac:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f10014f

    invoke-virtual {p0, v2}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f10009e

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_2
    new-instance v0, Lcom/hijacker/ReaverFragment$ReaverTask;

    invoke-direct {v0, p0}, Lcom/hijacker/ReaverFragment$ReaverTask;-><init>(Lcom/hijacker/ReaverFragment;)V

    sput-object v0, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/hijacker/ReaverFragment$ReaverTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c006c

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hijacker/ReaverFragment;->setRetainInstance(Z)V

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f09013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->consoleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f09008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->consoleScrollView:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f0900f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f0900da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->ignored_locked_cb:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f0900ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->eap_fail_cb:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->small_dh_cb:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->no_nack_cb:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090178

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f09019b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hijacker/ReaverFragment;->start_button:Landroid/widget/Button;

    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    new-instance v0, Lcom/hijacker/ReaverFragment$1;

    invoke-direct {v0, p0}, Lcom/hijacker/ReaverFragment$1;-><init>(Lcom/hijacker/ReaverFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget-object p2, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    if-nez p2, :cond_0

    new-instance p2, Lcom/hijacker/ReaverFragment$ReaverTask;

    invoke-direct {p2, p0}, Lcom/hijacker/ReaverFragment$ReaverTask;-><init>(Lcom/hijacker/ReaverFragment;)V

    sput-object p2, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    :cond_0
    invoke-static {}, Lcom/hijacker/MainActivity;->checkChroot()I

    move-result p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sput-boolean p3, Lcom/hijacker/ReaverFragment;->pixie_dust_enabled:Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/hijacker/ReaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f100053

    invoke-virtual {p0, p2}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lcom/hijacker/ReaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f1000c5

    invoke-virtual {p0, p2}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/hijacker/ReaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f100050

    invoke-virtual {p0, p2}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sput-boolean p1, Lcom/hijacker/ReaverFragment;->pixie_dust_enabled:Z

    :goto_0
    iget-object p1, p0, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/ReaverFragment$2;

    invoke-direct {p2, p0}, Lcom/hijacker/ReaverFragment$2;-><init>(Lcom/hijacker/ReaverFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/ReaverFragment;->start_button:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/ReaverFragment$3;

    invoke-direct {p2, p0}, Lcom/hijacker/ReaverFragment$3;-><init>(Lcom/hijacker/ReaverFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/ReaverFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/ReaverFragment;->console_text:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f09012d

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/ReaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->consoleView:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/ReaverFragment;->console_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->consoleView:Landroid/widget/TextView;

    new-instance v1, Lcom/hijacker/ReaverFragment$4;

    invoke-direct {v1, p0}, Lcom/hijacker/ReaverFragment$4;-><init>(Lcom/hijacker/ReaverFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    sget-object v1, Lcom/hijacker/ReaverFragment;->pin_delay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    sget-object v1, Lcom/hijacker/ReaverFragment;->locked_delay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/ReaverFragment;->pixie_dust:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/ReaverFragment;->pixie_dust_enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->ignored_locked_cb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/ReaverFragment;->ignore_locked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->eap_fail_cb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/ReaverFragment;->eap_fail:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->small_dh_cb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/ReaverFragment;->small_dh:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->no_nack_cb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/ReaverFragment;->no_nack:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/hijacker/ReaverFragment;->custom_mac:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    sget-object v1, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hijacker/AP;

    sput-object v0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    iget-object v1, p0, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->start_button:Landroid/widget/Button;

    invoke-static {}, Lcom/hijacker/ReaverFragment;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f100174

    goto :goto_1

    :cond_3
    const v1, 0x7f10016b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    invoke-virtual {v0}, Lcom/hijacker/ReaverFragment$ReaverTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/hijacker/ReaverFragment;->normalOptHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/hijacker/ReaverFragment;->normalOptHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/hijacker/ReaverFragment;->autostart:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    new-instance v1, Lcom/hijacker/ReaverFragment$5;

    invoke-direct {v1, p0}, Lcom/hijacker/ReaverFragment$5;-><init>(Lcom/hijacker/ReaverFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lcom/hijacker/ReaverFragment;->autostart:Z

    :cond_6
    return-void
.end method

.method public onStop()V
    .locals 1

    sget-object v0, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$ReaverTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/ReaverFragment;->task:Lcom/hijacker/ReaverFragment$ReaverTask;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$ReaverTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pinDelayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/ReaverFragment;->pin_delay:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->lockedDelayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/ReaverFragment;->locked_delay:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/ReaverFragment;->pixie_dust:Z

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->pixie_dust_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/ReaverFragment;->pixie_dust_enabled:Z

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->ignored_locked_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/ReaverFragment;->ignore_locked:Z

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->eap_fail_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/ReaverFragment;->eap_fail:Z

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->small_dh_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/ReaverFragment;->small_dh:Z

    iget-object v0, p0, Lcom/hijacker/ReaverFragment;->no_nack_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/ReaverFragment;->no_nack:Z

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method setAutostart(Z)Lcom/hijacker/ReaverFragment;
    .locals 0

    iput-boolean p1, p0, Lcom/hijacker/ReaverFragment;->autostart:Z

    return-object p0
.end method
