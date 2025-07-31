.class public Lcom/offsec/nethunter/ChrootManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChrootManagerFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final IMAGE_DIRECTORY:Ljava/lang/String; = "/nethunter-images/current/rootfs/"

.field private static final INVALID_PATH_REGEX:Ljava/lang/String; = "^\\.(.*$)|^\\.\\.(.*$)|^/+(.*$)|^.*/+(.*$)|^$"

.field private static final IS_MOUNTED:I = 0x0

.field private static final IS_UNMOUNTED:I = 0x1

.field private static final MINORFULL:Ljava/lang/String; = ""

.field private static final NEED_TO_INSTALL:I = 0x2

.field public static final PRIMARY_IMAGE_SERVER:Ljava/lang/String; = "image-nethunter.kali.org"

.field public static final SECONDARY_IMAGE_SERVER:Ljava/lang/String; = "kali.download"

.field public static final TAG:Ljava/lang/String; = "ChrootManager"

.field public static isExecutorRunning:Z = false

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private ChrootDesc:Landroid/widget/LinearLayout;

.field private activity:Landroid/app/Activity;

.field private addMetaPkgButton:Landroid/widget/Button;

.field private final backPressedintent:Landroid/content/Intent;

.field private backupChrootButton:Landroid/widget/Button;

.field private baseChrootPathTextView:Landroid/widget/TextView;

.field private chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

.field private context:Landroid/content/Context;

.field private installChrootButton:Landroid/widget/Button;

.field private kaliFolderEditButton:Landroid/widget/Button;

.field private kaliFolderTextView:Landroid/widget/TextView;

.field private mountChrootButton:Landroid/widget/Button;

.field private mountStatsTextView:Landroid/widget/TextView;

.field private removeChrootButton:Landroid/widget/Button;

.field private resultViewerLoggerTextView:Landroid/widget/TextView;

.field private unmountChrootButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->broadcastBackPressedIntent(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompatCheck(Lcom/offsec/nethunter/ChrootManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreChrootImage(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->restoreChrootImage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setAllButtonEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetButtonVisibility(Lcom/offsec/nethunter/ChrootManagerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setButtonVisibility(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMountStatsTextView(Lcom/offsec/nethunter/ChrootManagerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setMountStatsTextView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    return-void
.end method

.method private broadcastBackPressedIntent(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    const-string v1, "com.offsec.nethunter.BACKPRESSED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private compatCheck()V
    .locals 5

    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$10;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$10;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v4, v3, v1

    sget-object v1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chroot_path"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method private createProgressBar()Landroid/widget/ProgressBar;
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity is null. Cannot create ProgressBar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProgressDialog(Ljava/lang/String;Landroid/widget/ProgressBar;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string v0, "Please do NOT kill the app or clear recent apps.."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity is null. Cannot create ProgressDialog."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDeviceArch()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    :goto_0
    const-string v1, "arm64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v2, "armeabi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "armhf"

    return-object v0

    :cond_2
    return-object v1
.end method

.method static synthetic lambda$getMaterialAlertDialogBuilder$11(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$setInstallChrootButton$7(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$setRemoveChrootButton$13(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setRemoveChrootButton$15(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/ChrootManagerFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private restoreChrootImage(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$5;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$5;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity is null. Cannot run on UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setAddMetaPkgButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setAllButtonEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method private setBackupChrootButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setButtonVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "running_on_wearos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setEditButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity or SharedPreferences is null. Cannot proceed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setInstallChrootButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setMountStatsTextView(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v0, -0xff0100

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v0, 0x7f1101c2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, -0x10000

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v0, 0x7f1101e2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->showBanner()V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v0, 0x7f110190

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setRemoveChrootButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setStartKaliButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setStopKaliButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showBanner()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method private startDownloadAndRestoreChroot(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance p3, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p4, 0x6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance p4, Lcom/offsec/nethunter/ChrootManagerFragment$4;

    invoke-direct {p4, p0, p2, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$4;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string p4, ""

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "/nethunter-images/current/rootfs/"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    iget-object p4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "image-nethunter.kali.org"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-virtual {p4, v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error during execution: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startDownloadChroot(Ljava/lang/String;Ljava/io/File;)V
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const-string v2, "Please do NOT kill the app or clear recent apps.."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v4, Lcom/offsec/nethunter/ChrootManagerFragment$7;

    invoke-direct {v4, p0, v1, v0}, Lcom/offsec/nethunter/ChrootManagerFragment$7;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/ProgressBar;)V

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "image-nethunter.kali.org"

    const-string v1, "kali.download"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v4, v6, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "/nethunter-images/current/rootfs/"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getMaterialAlertDialogBuilder(Ljava/io/File;Ljava/lang/String;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists. Do you want to overwrite it?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;Ljava/io/File;)V

    const-string p1, "YES"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda20;-><init>()V

    const-string p2, "NO"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method synthetic lambda$getMaterialAlertDialogBuilder$10$com-offsec-nethunter-ChrootManagerFragment(Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance p4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-class v1, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {p4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.offsec.nethunter.DOWNLOADING"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadChroot(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-offsec-nethunter-ChrootManagerFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 11

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "restore.tar.xz"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_e

    :try_start_0
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v1, :cond_a

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v1, v9, v5

    if-eqz v1, :cond_7

    cmp-long v1, v7, v5

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x6

    :try_start_3
    new-array v5, v4, [B

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ne v6, v4, :cond_4

    aget-byte v4, v5, v3

    const/4 v6, -0x3

    if-ne v4, v6, :cond_1

    aget-byte v4, v5, v8

    const/16 v6, 0x37

    if-ne v4, v6, :cond_1

    aget-byte v4, v5, v7

    const/16 v6, 0x7a

    if-ne v4, v6, :cond_1

    aget-byte v4, v5, v9

    const/16 v6, 0x58

    if-ne v4, v6, :cond_1

    const/4 v4, 0x4

    aget-byte v4, v5, v4

    const/16 v6, 0x5a

    if-ne v4, v6, :cond_1

    const/4 v4, 0x5

    aget-byte v4, v5, v4

    if-eqz v4, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-string v3, "File does not appear to be a valid .xz archive."

    invoke-static {v0, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_2
    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    return-void

    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    sget-object v1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "chroot_default_tarball_path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    new-instance v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v4, Lcom/offsec/nethunter/ChrootManagerFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$1;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v5, v4, v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_6
    if-eqz p1, :cond_e

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-string v1, "Copied file is empty. Please select a valid backup."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_8
    if-eqz p1, :cond_9

    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :cond_9
    return-void

    :cond_a
    :try_start_e
    invoke-virtual {v2, v4, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_b

    :try_start_f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_10
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p1, :cond_c

    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_12
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to copy file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string p1, "No file selected."

    invoke-static {v0, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.method synthetic lambda$setAddMetaPkgButton$17$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://tools.kali.org/kali-metapackages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setAddMetaPkgButton$18$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0902f9

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apt update && apt install "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -y && echo \"(You can close the terminal now)\n\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->run_cmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const p2, 0x7f1101eb

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$setAddMetaPkgButton$19$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Metapackage Install & Upgrade"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f0902fa

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    const/high16 v1, 0x7f110000

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$setBackupChrootButton$20$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p2, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance p3, Lcom/offsec/nethunter/ChrootManagerFragment$8;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$8;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$setBackupChrootButton$21$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object p3, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "chroot_default_tarball_path"

    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const p4, 0x7f120117

    invoke-direct {p2, p3, p4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    const-string p3, "File exists already, do you want to overwrite it anyway?"

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;)V

    const/4 p1, -0x1

    const-string p4, "YES"

    invoke-virtual {p2, p1, p4, p3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance p3, Lcom/offsec/nethunter/ChrootManagerFragment$9;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$9;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v0, p3, p4

    const/4 p4, 0x1

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setBackupChrootButton$22$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 7

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x28

    const/4 v5, 0x0

    const/16 v6, 0x3a

    invoke-virtual {v2, v6, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const-string v1, "Backup Chroot"

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "* It is strongly suggested to create your backup chroot as tar.gz format just for faster process but bigger file size.\n\nbackup \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "chroot_default_tarball_path"

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V

    const-string v0, "OK"

    invoke-virtual {p1, v3, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$setEditButton$2$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "^\\.(.*$)|^\\.\\.(.*$)|^/+(.*$)|^.*/+(.*$)|^$"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const-string p3, "Invalid Name, please try again."

    invoke-static {p1, p3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "chroot_arch"

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "chroot_path"

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ln -sfn "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_SYMLINK_PATH:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$setEditButton$3$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 12

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x3a

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v3, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "chroot_arch"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v6, 0x7f060036

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f110100

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/ChrootManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v6, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v9, v3, v7

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "kalifs"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "    "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "No directories found."

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    const-string v3, "Setup Chroot Path"

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "The Chroot Path is prefixed to \n\"/data/local/nhsystem/\"\n\nJust put the basename of your Kali Chroot Folder:"

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;)V

    const-string v1, "Apply"

    invoke-virtual {p1, v2, v1, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$setInstallChrootButton$6$com-offsec-nethunter-ChrootManagerFragment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadAndRestoreChroot(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setInstallChrootButton$8$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getDeviceArch()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_0

    const-string p1, "minimal"

    goto :goto_0

    :cond_0
    const-string p1, "full"

    :goto_0
    move-object v4, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "kalifs-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tar.xz"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Overwrite File?"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string v0, "The image file already exists. Do you want to overwrite it?"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0, p2}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Runnable;)V

    const-string p2, "Overwrite"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string p2, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error accessing file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setInstallChrootButton$9$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 3

    const-string p1, "Minimal"

    const-string v0, "Full"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Select Kali Image"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$setRemoveChrootButton$12$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance p2, Lcom/offsec/nethunter/ChrootManagerFragment$6;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$6;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$setRemoveChrootButton$14$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v0, 0x7f120117

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string p2, "Warning!"

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string p2, "This is your last chance!"

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    const-string v0, "Just do it."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda14;

    invoke-direct {p2}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda14;-><init>()V

    const-string v0, "Okay, I\'m sorry."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$setRemoveChrootButton$16$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Warning!"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Are you sure to remove the below Kali Chroot folder?\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    const-string v1, "I\'m sure."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "Forget it."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$setStartKaliButton$4$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$2;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$setStopKaliButton$5$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$3;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$3;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c002c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz p2, :cond_b

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const p2, 0x7f090192

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    const p2, 0x7f09019a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    const p2, 0x7f09019f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    const p2, 0x7f090197

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    const p2, 0x7f090195

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    if-eqz p2, :cond_6

    const p2, 0x7f090199

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    if-eqz p2, :cond_5

    const p2, 0x7f09019d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    if-eqz p2, :cond_4

    const p2, 0x7f090196

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    if-eqz p2, :cond_3

    const p2, 0x7f09018f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    const p2, 0x7f09019b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    if-eqz p2, :cond_1

    const p2, 0x7f090191

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_backupchroot_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_removechroot_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_addmetapkg_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_install_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_unmount_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_mount_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_edit_btn not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_kalifolder_tv not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_viewlogger not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_mountresult_tv not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View with ID f_chrootmanager_base_path_tv not found in layout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity is null. Cannot initialize sharedPreferences."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    sget-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    sget-object p2, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    const-string v1, "chroot_arch"

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f09019e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance p2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setEditButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setStopKaliButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setStartKaliButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setInstallChrootButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setRemoveChrootButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setAddMetaPkgButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setBackupChrootButton()V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    const-string v0, "com.offsec.nethunter"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "running_on_wearos"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    :cond_1
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance p2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
