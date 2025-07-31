.class public Lcom/offsec/nethunter/HidFragment;
.super Landroidx/fragment/app/Fragment;
.source "HidFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;,
        Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;,
        Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;,
        Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private isHIDenable:Z

.field private final languages:[Ljava/lang/CharSequence;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private final platforms:[Ljava/lang/CharSequence;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/HidFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "No UAC Bypass"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Windows 7"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Windows 8"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Windows 10"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/offsec/nethunter/HidFragment;->platforms:[Ljava/lang/CharSequence;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "American English"

    aput-object v2, v1, v3

    const-string v2, "Belgian"

    aput-object v2, v1, v4

    const-string v2, "British English"

    aput-object v2, v1, v5

    const-string v2, "Danish"

    aput-object v2, v1, v6

    const-string v2, "French"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "German"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "Italian"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "Norwegian"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "Portuguese"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "Russian"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "Spanish"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "Swedish"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "Canadian Multilingual"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "Canadian"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "Hungarian"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/offsec/nethunter/HidFragment;->languages:[Ljava/lang/CharSequence;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-boolean v3, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    return-void
.end method

.method private check_HID_enable()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic lambda$openDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$openLanguageDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/HidFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/HidFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/HidFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openDialog()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "UACBypassIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "UAC Bypass:"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->platforms:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private openLanguageDialog()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "HIDKeyboardLayoutIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Keyboard Layout:"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->languages:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private reset()V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v1, "stop-badusb"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v1, "Reseting USB"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private start()V
    .locals 10

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "HIDKeyboardLayoutIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "us"

    goto :goto_0

    :pswitch_0
    const-string v0, "hu"

    goto :goto_0

    :pswitch_1
    const-string v0, "ca"

    goto :goto_0

    :pswitch_2
    const-string v0, "cm"

    goto :goto_0

    :pswitch_3
    const-string v0, "sv"

    goto :goto_0

    :pswitch_4
    const-string v0, "es"

    goto :goto_0

    :pswitch_5
    const-string v0, "ru"

    goto :goto_0

    :pswitch_6
    const-string v0, "pt"

    goto :goto_0

    :pswitch_7
    const-string v0, "no"

    goto :goto_0

    :pswitch_8
    const-string v0, "it"

    goto :goto_0

    :pswitch_9
    const-string v0, "de"

    goto :goto_0

    :pswitch_a
    const-string v0, "fr"

    goto :goto_0

    :pswitch_b
    const-string v0, "dk"

    goto :goto_0

    :pswitch_c
    const-string v0, "uk"

    goto :goto_0

    :pswitch_d
    const-string v0, "be"

    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v3, "UACBypassIndex"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "\'"

    const-string v9, "su -c \'"

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v1, "No option selected 1"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali start-rev-met-elevated-win10 --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto/16 :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali start-rev-met-elevated-win8 --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali start-rev-met-elevated-win7 --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto/16 :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali start-rev-met --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto/16 :goto_1

    :cond_4
    if-ne v5, v3, :cond_9

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_5

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v1, "No option selected 2"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali hid-cmd-elevated-win10 --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali hid-cmd-elevated-win8 --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali hid-cmd-elevated-win7 --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali hid-cmd --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const v1, 0x7f11002a

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/HidFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v4}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/HidFragment;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$check_HID_enable$6$com-offsec-nethunter-HidFragment()V
    .locals 7

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v1, "/dev/hidg0"

    const-string v2, "/dev/hidg1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "su -c \"stat -c \'%a\' "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "666"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v2, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$openDialog$3$com-offsec-nethunter-HidFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "UACBypassIndex"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$openLanguageDialog$5$com-offsec-nethunter-HidFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "HIDKeyboardLayoutIndex"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$start$0$com-offsec-nethunter-HidFragment()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v1, "Attack execution ended."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$start$1$com-offsec-nethunter-HidFragment([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0052

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p3, 0x7f090367

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/var/www/html/powersploit-payload"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/HidFragment;->configFilePath:Ljava/lang/String;

    iget-object p2, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lcom/offsec/nethunter/HidFragment$1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/HidFragment$1;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/HidFragment;->setHasOptionsMenu(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->check_HID_enable()V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_0
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->reset()V

    return v1

    :sswitch_1
    iget-boolean p1, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->start()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "/config/usb_gadget/g1"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v0, "HID interfaces are not enabled! Please enable in USB Arsenal."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v0, "/dev/hidg0"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v0, "Fixing HID interface permissions.."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v0, "chmod 666 /dev/hidg*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v0, "HID interfaces are not patched or enabled, please check your kernel configuration."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v1

    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const-class v2, Lcom/offsec/nethunter/EditSourceActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "path"

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/HidFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :sswitch_3
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->openLanguageDialog()V

    return v1

    :sswitch_4
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->openDialog()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f090070 -> :sswitch_4
        0x7f090104 -> :sswitch_3
        0x7f090408 -> :sswitch_2
        0x7f09043f -> :sswitch_1
        0x7f090450 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const v1, 0x7f090408

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_0

    xor-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
