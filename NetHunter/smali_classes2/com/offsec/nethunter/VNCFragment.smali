.class public Lcom/offsec/nethunter/VNCFragment;
.super Landroidx/fragment/app/Fragment;
.source "VNCFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final MAX_UID:I = 0x270f

.field private static final MIN_UID:I = 0x2328

.field private static final TAG:Ljava/lang/String; = "VNCFragment"


# instance fields
.field final BUSYBOX_NH:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private delay_cmd:Ljava/lang/String;

.field private iswatch:Ljava/lang/Boolean;

.field private localhostonly:Ljava/lang/String;

.field private posd:Ljava/lang/Integer;

.field private posu:Ljava/lang/Integer;

.field private prevusr:Ljava/lang/String;

.field private selected_disp:Ljava/lang/String;

.field private selected_display:Ljava/lang/String;

.field private selected_ppi:Ljava/lang/String;

.field private selected_res:Ljava/lang/String;

.field private selected_user:Ljava/lang/String;

.field private selected_vncres:Ljava/lang/String;

.field private selected_vncresCMD:Ljava/lang/String;

.field private showingAdvanced:Z

.field private vnc_passwd:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetselected_res(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected_user(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected_vncres(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselected_disp(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_disp:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_display(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_ppi(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_ppi:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_res(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_user(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_vncres(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_vncresCMD(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    const-string v1, "kali"

    iput-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->getBusyboxPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    return-void
.end method

.method private addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private checkUserPermissions(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "KeXAudio"

    const-string v1, "sudo -l -U "

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->isSuAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "User "

    if-eqz v1, :cond_2

    :try_start_1
    const-string v5, "NOPASSWD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has NOPASSWD sudo permissions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have NOPASSWD sudo permissions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error checking permissions for user "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private confirmDialog()V
    .locals 11

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->getAlertDialog(Landroid/content/SharedPreferences;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/VNCFragment$5;

    const-wide/16 v5, 0x3a98

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/offsec/nethunter/VNCFragment$5;-><init>(Lcom/offsec/nethunter/VNCFragment;JJLandroidx/appcompat/app/AlertDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2}, Lcom/offsec/nethunter/VNCFragment$5;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;

    invoke-direct {v3, v0, v1, v2}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;-><init>(Landroid/content/SharedPreferences;Landroidx/appcompat/app/AlertDialog;Landroid/os/CountDownTimer;)V

    const/4 v0, -0x1

    const-string v2, "Keep resolution"

    invoke-virtual {v1, v0, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private dbusDialog()V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v2, "Do you want to stop dbus service? If you have no more sessions opened, press Yes."

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/utils/ShellExecuter;)V

    const-string v1, "Yes"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda23;-><init>()V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private desktopDialog()V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v1, "There\'s no desktop environment installed. Would you like to install kali-desktop-xfce?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private getAlertDialog(Landroid/content/SharedPreferences;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Do you want to keep the resolution?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "Loading.."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;-><init>(Landroid/content/SharedPreferences;)V

    const-string p1, "Keep resolution"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-object p1
.end method

.method private intentClickListener_VNC()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.offsec.nethunter.kex"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "errorLaunching"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v1, "NetHunter KeX not found!"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isSuAvailable()Z
    .locals 5

    const-string v0, "KeXAudio"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "which su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "su is available."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "su is not available in the environment."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "Error checking for su availability"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic lambda$confirmDialog$30(Landroid/content/SharedPreferences;Landroidx/appcompat/app/AlertDialog;Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p3, "confirm_res"

    const/4 p4, 0x0

    invoke-interface {p0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method static synthetic lambda$dbusDialog$32(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bootkali custom_cmd service dbus stop"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dbusDialog$33(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$desktopDialog$35(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getAlertDialog$31(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "confirm_res"

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$1(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "settings put global policy_control immersive.full=*"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "settings put global policy_control null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p2, "delay"

    if-eqz p3, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p3, 0x1

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string p0, "#FFFFFF"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string p0, "#40FFFFFF"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$openResolutionDialog$27(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$openVNCResolutionDialog$29(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/VNCFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/VNCFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/VNCFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/VNCFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openResolutionDialog()V
    .locals 10

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v2, "Add a new device resolution (vertical)"

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f0904db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    const v2, 0x7f090292

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    new-instance v9, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/configs/hdmi-resolutions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v8}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    const-string v2, "Add"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda28;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private openVNCResolutionDialog()V
    .locals 9

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v2, "Add a new VNC server resolution (horizontal)"

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f0904db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    const v2, 0x7f090292

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/configs/vnc-resolutions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v7}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    const-string v2, "Add"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda25;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private refreshVNC(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0904d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v3}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v4, "pidof Xtigervnc"

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f110214

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f110211

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v4, 0x7f110212

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bootkali custom_cmd ps -ef | grep vnc | grep Xauthority | awk \'{gsub(/home/,\"\")} {gsub(/\\//,\"\")} {gsub(/.Xauthority/,\"\")} {print $1 $9}\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/etc/passwd"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "echo root && "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " awk -F\':\' -v \"min=9000\" -v \"max=9999\" \'{ if ( ( $3 >= min && $3 <= max ) || ( $3 >= 100000 && $3 <= 101000 ) ) print $0}\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cut -d: -f1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const v1, 0x7f0904c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1090003

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v5, "com.offsec.nethunter"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "display"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    const v5, 0x7f090157

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const-string p1, "user"

    const-string v5, ""

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->posu:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    const-string p1, "pidof pulseaudio"

    invoke-virtual {v3, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f11020e

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f11020c

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void
.end method

.method private reload()V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/offsec/nethunter/VNCFragment;->newInstance(I)Lcom/offsec/nethunter/VNCFragment;

    move-result-object v1

    const v2, 0x7f090114

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private vncLocalClick()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v1, "vncLocalClick triggered"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$desktopDialog$34$com-offsec-nethunter-VNCFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "echo -ne \"\\033]0;Installing XFCE\\007\" && clear;apt update && apt install -y kali-desktop-xfce tigervnc-standalone-server dbus-x11;apt clean; echo \'Done! Exiting..\' && sleep 2 && exit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->vncLocalClick()V

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->intentClickListener_VNC()V

    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-VNCFragment(Landroid/view/View;Landroid/widget/Button;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 2

    iget-boolean p4, p0, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    const-string v0, "advanced_visible"

    const/4 v1, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f110210

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f110213

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    iput-boolean v1, p0, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0

    const-string p1, "echo -ne \"\\033]0;New User\\007\" && clear;if [[ $SHELL == *zsh ]];then read \"?Please enter your new username\"$\'\n\' USER;elif [[ $SHELL == *bash ]];then read -p \"Please enter your new username\"$\'\n\' USER;fi && adduser --firstuid 9000 --lastuid 9999 $USER; groupmod -g $(id -u $USER) $USER; usermod -aG sudo $USER; usermod -aG inet $USER; usermod -aG sockets $USER; echo \"Please refresh your KeX manager, closing in 2 secs\" && sleep 2 && exit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    const-string v0, "root"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Can\'t remove root!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "echo -ne \"\\033]0;Removing User\\007\" && clear;deluser -remove-home "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " && sleep 2 && exit"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-VNCFragment(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    const-string p2, "wm size reset;wm density reset;am start com.offsec.nethunter/.AppNavHomeActivity -e \":android:show_fragment\" com.offsec.nethunter.VNCFragment;sleep 2 && exit"

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/VNCFragment;->run_cmd_android(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "confirm_res"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Backup successful!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cat "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/hdmi-resolutions"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Backup file not found!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/hdmi-resolutions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Restore successful!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    return-void
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-VNCFragment(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "wm size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_disp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; wm density "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_ppi:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";am start com.offsec.nethunter/.AppNavHomeActivity -e \":android:show_fragment\" com.offsec.nethunter.VNCFragment;sleep 2 && exit"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/VNCFragment;->run_cmd_android(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "confirm_res"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 3

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    const-string v0, "1080x1920:300ppi"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sed -i \'/^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$/d\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Can\'t remove default resolution!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-VNCFragment(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string p3, "localhost"

    if-eqz p1, :cond_0

    const-string p1, "-localhost yes "

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string p1, "-localhost no "

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openVNCResolutionDialog()V

    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-VNCFragment(Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2

    iget-object p4, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    const-string v0, "Auto"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Can\'t remove default resolution!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Can\'t remove device resolution!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "sed -i \'/^"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$/d\' "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Backup successful!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cat "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/vnc-resolutions"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Backup file not found!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vnc-resolutions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Restore successful!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    new-instance p5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/root/.vnc/passwd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "ls "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/usr/lib/ | grep linux-gnu | head -n1"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "\n# KeX architecture path: "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n# Commands to run at boot:\nHOME=/root\nUSER=root"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su -c \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd LD_PRELOAD=/usr/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/libgcc_s.so.1 vncserver :1 "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#!/system/bin/sh\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\n"

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cat > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " <<s0133717hur75\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\ns0133717hur75\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p5, v0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "chmod 700 "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, p4

    invoke-virtual {p1, p5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please setup local server first!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    new-array p3, p4, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "rm -rf "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-VNCFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-VNCFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usr/bin/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeXAudio"

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Audio script exists at: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    const-string v0, "Enable audio"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "User lacks necessary permissions or su is unavailable."

    const-string v3, "User lacks necessary permissions or su is unavailable. Permission denied."

    const-string v4, "root"

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Running audio enable command as root"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "echo -ne \"\\033]0;Audio Enable\\007\" && clear && audio start;sleep 2 && exit"

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "Checking permissions for non-root user: "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->isSuAvailable()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Using su to start audio for non-root user"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "su -c \'echo -ne \"\\033]0;Audio Enable\\007\" && clear && sudo -u "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " audio start;sleep 2 && exit\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    :goto_0
    const p3, 0x7f11020b

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Audio enabled for user: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Audio enabled for user:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_1
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "Running audio disable command as root"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "echo -ne \"\\033]0;Audio Disable\\007\" && clear && audio stop;sleep 2 && exit"

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "Disabling audio for non-root user: "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->isSuAvailable()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "Using su to stop audio for non-root user"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "su -c \'echo -ne \"\\033]0;Audio Disable\\007\" && clear && sudo -u "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " audio stop;sleep 2 && exit\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    :goto_1
    const p3, 0x7f11020d

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Audio disabled for user: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Audio disabled for user:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    const-string p1, "Audio script not found, attempting installation"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Installing missing audio script in chroot.."

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "echo -ne \"\\033]0;Kali NetHunter Utils\\007\" && clear;apt update && apt install nethunter-utils;sleep 2 && exit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bootkali custom_cmd dpkg -l | grep kali-desktop"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->desktopDialog()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Use password 123456 with root user for KeX on Smartwatch."

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "echo -ne \"\\033]0;KeX Setup\\007\" && clear;echo \'Setting root:123456 KeX credentials..\' && sleep 2 && echo 123456\\\\n123456\\\\nn\\\\n | vncpasswd;echo \'Done! Exiting..\' && sleep 2 && exit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "echo -ne \"\\033]0;Setting up Server\\007\" && clear;chmod +x ~/.vnc/xstartup && clear;echo $\'\n\'\"Please enter your new VNC server password\"$\'\n\' && if [ \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" == \"root\" ]; then   if [ ! -d /root/.config/tigervnc ]; then mkdir -p /root/.config/tigervnc; fi; fi; sudo -u "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " vncpasswd && sleep 2 && exit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7

    iget-object p5, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    const-string v0, "root"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-string v1, "cat "

    if-eqz p5, :cond_0

    new-instance p5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/root/.vnc/passwd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/offsec/nethunter/VNCFragment;->vnc_passwd:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/home/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.vnc/passwd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/offsec/nethunter/VNCFragment;->vnc_passwd:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const-string p5, "delaysec"

    invoke-interface {p2, p5, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "echo \"Sleeping for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seconds to avoid soft reboot\" && sleep "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->vnc_passwd:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please setup local server first!"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "ls "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/usr/lib/ | grep linux-gnu | head -n1"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const-string p5, "Starting server.. Please refresh the status in NetHunter app."

    const/4 v1, 0x1

    invoke-static {p4, p5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    iget-object p4, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string p5, " >/dev/null 2>&1 </dev/null;then echo \"Server started! Closing terminal..\";else echo -ne \"\\033[0;31mServer already started! \\n\";fi && sleep 2 && exit"

    const-string v0, "-name \"NetHunter KeX\" "

    const-string v2, " "

    const-string v3, "/libgcc_s.so.1 nohup vncserver :"

    const-string v4, "echo -ne \"\\033]0;Starting Server\\007\" && clear;"

    const-string v5, "/bootkali custom_cmd service dbus start"

    if-eqz p4, :cond_3

    new-array p4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, p3

    invoke-virtual {p1, p4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "if HOME=/root;USER=root;sudo -u root LD_PRELOAD=/usr/lib/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-array p4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, p3

    invoke-virtual {p1, p4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "if HOME=/home/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";USER="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";sudo -u "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " LD_PRELOAD=/usr/lib/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    :goto_1
    const-string p1, "VNCFragment"

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-VNCFragment(Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "STOPPED"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "There\'s no active session!"

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-array p1, p4, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bootkali custom_cmd sudo -u "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vncserver -kill :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->dbusDialog()V

    invoke-direct {p0, p3}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Stopping display :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$openResolutionDialog$24$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p6, 0x1

    new-array p6, p6, [Ljava/lang/String;

    new-instance p7, Ljava/lang/StringBuilder;

    const-string v0, "echo "

    invoke-direct {p7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ppi >> "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p6, p3

    invoke-virtual {p1, p6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    return-void
.end method

.method synthetic lambda$openResolutionDialog$25$com-offsec-nethunter-VNCFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    return-void
.end method

.method synthetic lambda$openResolutionDialog$26$com-offsec-nethunter-VNCFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const/4 p6, 0x0

    if-nez p3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p1, p2, :cond_1

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f120117

    invoke-direct {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string p2, "Width is bigger than height!"

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string p2, "Bigger width is usually only for tablets. Misconfiguration can render the device unresponsive"

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda22;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    const-string p3, "Keep"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    const-string p3, "Back"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "echo "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "ppi >> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p6

    invoke-virtual {p4, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please enter the values!"

    invoke-static {p1, p2, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    :goto_1
    return-void
.end method

.method synthetic lambda$openVNCResolutionDialog$28$com-offsec-nethunter-VNCFragment(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    const/4 p6, 0x0

    if-nez p5, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " >> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, p6

    invoke-virtual {p3, p5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please enter the values!"

    invoke-static {p1, p2, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 52

    move-object/from16 v6, p0

    const v0, 0x7f0c00e5

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f090005

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f090004

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    const v0, 0x7f0904d4

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, v6, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v4, "com.offsec.nethunter"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda31;

    invoke-direct {v3, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "confirm_res"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->confirmDialog()V

    :cond_0
    const-string v0, "advanced_visible"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v6, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    const-string v0, "localhost"

    const/4 v3, 0x1

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v0, v6, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, v6, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    if-eqz v0, :cond_2

    const v0, 0x7f11020f

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f110213

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    :goto_1
    const-string v0, "running_on_wearos"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    const-string v4, "running_on_phone"

    invoke-interface {v10, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    const-string v4, "running_on_tablet"

    invoke-interface {v10, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v11, v6, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v11, v4, :cond_6

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v51, v11

    move-object v11, v4

    move-object/from16 v4, v51

    :goto_2
    const v12, 0x7f0902c1

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f090449

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0903ec

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f110216

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f110215

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    const v0, 0x7f0904d3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v5, 0x7f0903f5

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v12, 0x7f090445

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v13, 0x7f090451

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    const v14, 0x7f0904d2

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    const v15, 0x7f0903a0

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    const v1, 0x7f090002

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f090012

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 p2, v1

    const v1, 0x7f0903a8

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v16, v1

    const v1, 0x7f090001

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v17, v1

    const v1, 0x7f090011

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v18, v1

    const v1, 0x7f090006

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v19, v1

    const v1, 0x7f09000a

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v20, v1

    const v1, 0x7f09001f

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v21, v1

    const v1, 0x7f090003

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v22, v1

    const v1, 0x7f090013

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v23, v1

    const v1, 0x7f09000b

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v24, v1

    const v1, 0x7f090020

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v25, v8

    new-instance v8, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v8}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    move-object/from16 v26, v9

    new-instance v9, Ljava/io/File;

    move-object/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v3

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/configs/vnc-resolutions"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmp-long v1, v29, v31

    if-nez v1, :cond_8

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v29, v14

    const-string v14, "echo \"Auto\"$\"\n\""

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " > "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    aput-object v1, v4, v14

    invoke-virtual {v8, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object/from16 v29, v14

    :goto_3
    new-instance v14, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/configs/hdmi-resolutions"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const-string v30, "sh"

    const/16 v31, 0x0

    aput-object v30, v4, v31

    const-string v31, "-c"

    const/16 v32, 0x1

    aput-object v31, v4, v32

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v33, v11

    const-string v11, "cat "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x2

    aput-object v1, v4, v34

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v14

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/16 v32, 0x0

    aput-object v30, v14, v32

    const/16 v30, 0x1

    aput-object v31, v14, v30

    move-object/from16 v30, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v34

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/offsec/nethunter/utils/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0903ad

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v31, v9

    new-instance v9, Landroid/widget/ArrayAdapter;

    move-object/from16 v32, v12

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v34, v5

    const v5, 0x1090003

    invoke-direct {v9, v12, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v14, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v1, 0x7f0904d7

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12, v5, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/etc/passwd"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "echo root && "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " awk -F\':\' -v \"min=9000\" -v \"max=9999\" \'{ if ( ( $3 >= min && $3 <= max ) || ( $3 >= 100000 && $3 <= 101000 ) ) print $0}\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " cut -d: -f1"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string v9, "user"

    const-string v12, ""

    invoke-interface {v10, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    const v9, 0x7f0904c3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    invoke-virtual {v13, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->posu:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v0, "display"

    const/4 v4, 0x0

    invoke-interface {v10, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    const-string v37, "1"

    const-string v38, "2"

    const-string v39, "3"

    const-string v40, "4"

    const-string v41, "5"

    const-string v42, "6"

    const-string v43, "7"

    const-string v44, "8"

    const-string v45, "9"

    const-string v46, "10"

    filled-new-array/range {v37 .. v46}, [Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f090157

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v37, v15

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v13, v15, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$1;

    invoke-direct {v0, v6, v10}, Lcom/offsec/nethunter/VNCFragment$1;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$2;

    invoke-direct {v0, v6, v10}, Lcom/offsec/nethunter/VNCFragment$2;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$3;

    invoke-direct {v0, v6, v8}, Lcom/offsec/nethunter/VNCFragment$3;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const-string v0, "last_kex_res"

    const/4 v4, 0x0

    invoke-interface {v10, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "last_kex_res_string"

    invoke-interface {v10, v4, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "grep "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_9
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$4;

    invoke-direct {v0, v6, v10}, Lcom/offsec/nethunter/VNCFragment$4;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0902a9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "settings get global policy_control"

    invoke-virtual {v8, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "-localhost yes "

    iput-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    goto :goto_4

    :cond_a
    const-string v0, "-localhost no "

    iput-object v0, v6, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    :goto_4
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, v6, v2, v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/etc/init.d/99kex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0904d6

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vncserver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, v6, v8, v0, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09013f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    const v0, 0x7f090140

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v0, "delaysec"

    const/16 v2, 0x14

    invoke-interface {v10, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_b
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, v10, v5}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda15;-><init>(Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, v6, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/view/View;)V

    move-object/from16 v15, v37

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {v6, v7}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda17;

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v1, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-direct {v6, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, v6, v8}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    move-object/from16 v1, v34

    invoke-direct {v6, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;

    move-object v0, v9

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v47, v22

    move-object/from16 v48, v23

    move-object/from16 v49, v24

    move-object/from16 v50, v27

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v8

    move-object/from16 v15, v28

    move-object v13, v4

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v9}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090018

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, v6, v0, v8, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V

    move-object/from16 v0, v30

    invoke-direct {v6, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda32;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    move-object/from16 v1, v29

    invoke-direct {v6, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda33;

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v6, v1, v2, v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/view/View;Landroid/widget/Button;Landroid/content/SharedPreferences;)V

    invoke-direct {v6, v2, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda34;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda34;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    invoke-direct {v6, v11, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda35;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda35;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    invoke-direct {v6, v15, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6, v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-direct {v6, v12, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda2;

    move-object/from16 v1, v35

    invoke-direct {v0, v6, v8, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    invoke-direct {v6, v13, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6, v8, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    invoke-direct {v6, v14, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    move-object/from16 v2, v17

    invoke-direct {v6, v2, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6, v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    move-object/from16 v2, v19

    invoke-direct {v6, v2, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6, v8, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v1, v18

    invoke-direct {v6, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    move-object/from16 v1, v47

    invoke-direct {v6, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda9;

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-direct {v0, v6, v2, v8, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v2, v48

    invoke-direct {v6, v2, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, v6, v8, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v2, v49

    invoke-direct {v6, v2, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, v6, v8, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v1, v50

    invoke-direct {v6, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    return-object v7
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
