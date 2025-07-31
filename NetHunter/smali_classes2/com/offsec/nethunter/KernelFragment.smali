.class public Lcom/offsec/nethunter/KernelFragment;
.super Landroidx/fragment/app/Fragment;
.source "KernelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/KernelFragment$PreferencesData;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final KERNEL_URL:Ljava/lang/String; = "https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt"

.field public static final TAG:Ljava/lang/String; = "KernelFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private checkKernel(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/KernelFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "4"

    const-string v2, "kitkat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5"

    const-string v2, "lollipop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "6"

    const-string v2, "marshmallow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "7"

    const-string v2, "nougat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "8"

    const-string v2, "oreo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "9"

    const-string v2, "pie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "10"

    const-string v2, "ten"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "11"

    const-string v2, "eleven"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "12"

    const-string v2, "twelve"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "13"

    const-string v2, "thirteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "14"

    const-string v2, "fourteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "15"

    const-string v2, "fifteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "16"

    const-string v2, "sixteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "17"

    const-string v2, "seventeen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "unknown"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$checkKernel$9(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/KernelFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/KernelFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/KernelFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/KernelFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$checkKernel$10$com-offsec-nethunter-KernelFragment(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Your device is supported!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "Do you want to check and flash the available kernel(s)?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;)V

    const-string p1, "Ok"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$checkKernel$11$com-offsec-nethunter-KernelFragment()V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Codename not found for your Android version. Please download kernel manually"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$12$com-offsec-nethunter-KernelFragment(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "[^a-zA-Z0-9_-]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/KernelFragment;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/KernelFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "curl -s https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt | grep "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | grep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " || echo NA"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p1, "NA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$checkKernel$4$com-offsec-nethunter-KernelFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Searching for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on Android "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$5$com-offsec-nethunter-KernelFragment()V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Downloading to /sdcard and flashing..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$6$com-offsec-nethunter-KernelFragment([Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "echo -ne \"\\033]0;Flashing Kernel\\007\" && clear;cd /sdcard && curl https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p1, p3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, p3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bin/magic-flash "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | awk \'gsub(/ui_print /,\" \") && !/^ $/\'; echo \'Exiting..\';exit"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/KernelFragment;->run_cmd_android(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$checkKernel$7$com-offsec-nethunter-KernelFragment()V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Downloading to /sdcard and flashing..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$8$com-offsec-nethunter-KernelFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f120117

    invoke-direct {p2, p3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string p3, "Multiple kernels available. Please select"

    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p3, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/KernelFragment;[Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "echo -ne \"\\033]0;Flashing Kernel\\007\" && clear;cd /sdcard && curl https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt/"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/bin/magic-flash "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | awk \'gsub(/ui_print /,\" \") && !/^ $/\'; echo \'Exiting..\'; exit"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/KernelFragment;->run_cmd_android(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$3$com-offsec-nethunter-KernelFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0902c0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "/document/primary:"

    const-string v2, "/sdcard/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "No file selected"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-KernelFragment(Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/offsec/nethunter/KernelFragment;->checkKernel(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-KernelFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "application/zip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "Select zip file"

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-KernelFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bin/magic-flash "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | awk \'gsub(/ui_print /,\" \") && !/^ $/\'; echo \'Exiting..\';exit"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/KernelFragment;->run_cmd_android(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/offsec/nethunter/KernelFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/KernelFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0c0061

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const p2, 0x7f09014d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f09010d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0903a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    const p3, 0x7f09012b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f090127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "None"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/offsec/nethunter/KernelFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v2, "echo None;curl -s https://nethunter.kali.org/kernels.html | sed -n \'/<tr class/{n;p;n;p;}\' | sed \'s/<[^>]*>//g\' | sed \'n;/,/!s/^/- /\' | paste - - | awk \'!x[$0]++\' | tail -n +2"

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/KernelFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/offsec/nethunter/KernelFragment$1;-><init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance p2, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, v0, p1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902bf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090267

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0902c0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    new-instance v0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p3}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
