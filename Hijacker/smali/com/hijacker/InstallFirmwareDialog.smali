.class public Lcom/hijacker/InstallFirmwareDialog;
.super Landroid/app/DialogFragment;
.source "InstallFirmwareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/InstallFirmwareDialog$InitTask;
    }
.end annotation


# static fields
.field static final DEFAULT_UTIL_INSTALL_PATH:Ljava/lang/String; = "/su/xbin"

.field private static final TAG:Ljava/lang/String; = "HIJACKER/InstFirmware"


# instance fields
.field backup_cb:Landroid/widget/CheckBox;

.field devChipsetView:Landroid/widget/TextView;

.field dialogView:Landroid/view/View;

.field firmwareView:Landroid/widget/TextView;

.field fs:Ljava/lang/String;

.field neutralButton:Landroid/widget/Button;

.field positiveButton:Landroid/widget/Button;

.field progressBar:Landroid/widget/ProgressBar;

.field selectedUtilPath:Ljava/lang/String;

.field shell:Lcom/hijacker/Shell;

.field utilSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->selectedUtilPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method attemptInstall()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->firmwareView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing firmware in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and utility in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->selectedUtilPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HIJACKER/InstFirmware"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/hijacker/InstallFirmwareDialog;->selectedUtilPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/hijacker/InstallFirmwareDialog;->install(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method attemptRestore()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->firmwareView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring firmware in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HIJACKER/InstFirm"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/hijacker/InstallFirmwareDialog;->restore(Ljava/lang/String;)V

    return-void
.end method

.method determineFS()Z
    .locals 6

    const-string v0, "/system"

    const-string v1, " "

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v2}, Lcom/hijacker/Shell;->clearOutput()V

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    const-string v4, "cat /proc/mounts; echo; echo ENDOFCAT"

    invoke-virtual {v2, v4}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v2}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "ENDOFCAT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    return v3

    :cond_1
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v2}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v0, "/"

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v1, "HIJACKER/InstFirmware"

    const-string v2, "Exception while reading from /proc/mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f100092

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return v2
.end method

.method extract(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0, p2, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "HIJACKER/InstFirm"

    const-string v1, "Exception copying from assets"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method install(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->backup_cb:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/hijacker/MainActivity;->firm_backup_file:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f100035

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cp -n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/hijacker/MainActivity;->firm_backup_file:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f100034

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    sget-object v2, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    const-string v4, "4339"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "HIJACKER/InstFirmware"

    if-eqz v2, :cond_3

    const-string v2, "fw_bcmdhd_4339.bin"

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    const-string v5, "4358"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "fw_bcmdhd_4358.bin"

    :goto_2
    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->determineFS()Z

    move-result v5

    if-nez v5, :cond_4

    return-void

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remounting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as rw..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mount -o rw,remount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->verifyRW()Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has been remounted as rw successfully"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/hijacker/InstallFirmwareDialog;->extract(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error extracting fw file in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v6, 0x7f10008f

    invoke-static {v5, v6, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_6
    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    const-string v6, "nexutil"

    invoke-virtual {p0, v6, v5}, Lcom/hijacker/InstallFirmwareDialog;->extract(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error extracting nexutil in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v6, 0x7f100090

    invoke-static {v5, v6, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_7
    iget-object v5, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mv "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/nexutil "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/nexutil"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " chmod 644 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " chmod 755 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mount -o ro,remount "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ifconfig "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " down"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " up"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f1000c3

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/hijacker/Airodump;->startClean()V

    :cond_8
    const-string p1, "Firmware and utility successfully installed"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->dismissAllowingStateLoss()V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "devChipset is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", shouldn\'t be here"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->firmwareView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->devChipsetView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->utilSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->backup_cb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->devChipsetView:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/InstallFirmwareDialog$1;

    invoke-direct {v0, p0}, Lcom/hijacker/InstallFirmwareDialog$1;-><init>(Lcom/hijacker/InstallFirmwareDialog;)V

    const v1, 0x7f10003e

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/InstallFirmwareDialog$2;

    invoke-direct {v0, p0}, Lcom/hijacker/InstallFirmwareDialog$2;-><init>(Lcom/hijacker/InstallFirmwareDialog;)V

    const v1, 0x7f1000bf

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/InstallFirmwareDialog$3;

    invoke-direct {v0, p0}, Lcom/hijacker/InstallFirmwareDialog$3;-><init>(Lcom/hijacker/InstallFirmwareDialog;)V

    const v1, 0x7f100144

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hijacker/Shell;->done()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/hijacker/InstallFirmwareDialog;->positiveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/hijacker/InstallFirmwareDialog;->positiveButton:Landroid/widget/Button;

    new-instance v3, Lcom/hijacker/InstallFirmwareDialog$4;

    invoke-direct {v3, p0}, Lcom/hijacker/InstallFirmwareDialog$4;-><init>(Lcom/hijacker/InstallFirmwareDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->neutralButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->neutralButton:Landroid/widget/Button;

    new-instance v1, Lcom/hijacker/InstallFirmwareDialog$5;

    invoke-direct {v1, p0}, Lcom/hijacker/InstallFirmwareDialog$5;-><init>(Lcom/hijacker/InstallFirmwareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/hijacker/InstallFirmwareDialog$InitTask;

    invoke-direct {v0, p0}, Lcom/hijacker/InstallFirmwareDialog$InitTask;-><init>(Lcom/hijacker/InstallFirmwareDialog;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/hijacker/InstallFirmwareDialog$InitTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method restore(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->determineFS()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mount -o rw,remount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->verifyRW()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hijacker/MainActivity;->firm_backup_file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " chmod 644 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mount -o ro,remount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    const-string p1, "HIJACKER/InstFirmware"

    const-string v2, "Firmware successfully restored"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v2, 0x7f100145

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_3
    invoke-virtual {p0}, Lcom/hijacker/InstallFirmwareDialog;->dismissAllowingStateLoss()V

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

.method verifyRW()Z
    .locals 7

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    const-string v1, "HIJACKER/InstFirmware"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "checkRW called but fs is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v0}, Lcom/hijacker/Shell;->clearOutput()V

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    const-string v3, "cat /proc/mounts; echo; echo ENDOFCAT"

    invoke-virtual {v0, v3}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v0}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "ENDOFCAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    const/4 v4, 0x1

    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "rootfs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v2

    const-string v6, "ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hijacker/InstallFirmwareDialog;->fs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " appears to still be read-only: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v3, 0x7f100093

    invoke-static {v0, v3, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return v2

    :cond_1
    aget-object v0, v3, v2

    const-string v5, "rw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unknown property while checking for fs rw/ro: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v0}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v0, "Did not find fs while verifying rw"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v3, 0x7f100187

    invoke-static {v0, v3, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "Exception while reading from /proc/mounts"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f100092

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_2
    return v2
.end method
