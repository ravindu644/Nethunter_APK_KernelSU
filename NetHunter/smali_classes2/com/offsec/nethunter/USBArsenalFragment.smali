.class public Lcom/offsec/nethunter/USBArsenalFragment;
.super Landroidx/fragment/app/Fragment;
.source "USBArsenalFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "USBArsenalFragment"

.field private static is_init_exists:Z = true


# instance fields
.field private activity:Landroid/app/Activity;

.field private adbSpinner:Landroid/widget/Spinner;

.field private context:Landroid/content/Context;

.field private currentInquiryHintTextView:Landroid/widget/TextView;

.field private imageMounterLL:Landroid/widget/LinearLayout;

.field private imgFileSpinner:Landroid/widget/Spinner;

.field private inquiryStringEditText:Landroid/widget/EditText;

.field private mountImgButton:Landroid/widget/Button;

.field private mountedImageHintTextView:Landroid/widget/TextView;

.field private mountedImageTextView:Landroid/widget/TextView;

.field private reloadMountStateButton:Landroid/widget/ImageButton;

.field private reloadUSBStateImageButton:Landroid/widget/ImageButton;

.field private saveUSBFunctionConfigButton:Landroid/widget/Button;

.field private saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

.field private setUSBIfaceButton:Landroid/widget/Button;

.field private setUSBNetworkTetheringButton:Landroid/widget/Button;

.field private targetOSSpinner:Landroid/widget/Spinner;

.field private final uiHandler:Landroid/os/Handler;

.field private unmountImgButton:Landroid/widget/Button;

.field private final usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

.field private usbFuncSpinner:Landroid/widget/Spinner;

.field private usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

.field private usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

.field private usbNetworkTetheringHintTextView:Landroid/widget/TextView;

.field private usbNetworkTetheringLL:Landroid/widget/LinearLayout;

.field private usbStatusTextView:Landroid/widget/TextView;

.field private usbStorageFunctionName:Ljava/lang/String;

.field private usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetadbSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusbFuncSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgettargetOSSpinnerString(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->gettargetOSSpinnerString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetusbFuncSpinnerString(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetusbNetWorkModeSpinnerPosition(Lcom/offsec/nethunter/USBArsenalFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshUSBNetworkInfos(Lcom/offsec/nethunter/USBArsenalFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshUSBSwitchInfos(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetis_init_exists()Z
    .locals 1

    sget-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-direct {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    return-void
.end method

.method private getImageFiles()V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v4, "Creating directory for storing image files.."

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create directory for storing image files at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".img"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".iso"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v2, "USBArsenalFragment"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private gettargetOSSpinnerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getusbFuncSpinnerString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Enable"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ",adb"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "reset"

    return-object v0
.end method

.method private getusbNetWorkModeSpinnerPosition()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method private isAllUSBInfosValid()Z
    .locals 8

    sget-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^0x[0-9a-fA-F]{4}$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "The regex must be ^0x[0-9a-fA-F]{4}$"

    const-string v5, "Invalid Format"

    const v6, 0x7f120117

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^\\w+$|^$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "The regex must be ^\\w+$|^$"

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^[0-9A-Z]{10}$|^$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "The regex must be ^[0-9A-Z]{10}$|^$"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_4
    return v1
.end method

.method static synthetic lambda$onOptionsItemSelected$19(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$20(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$23(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$24(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/USBArsenalFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/USBArsenalFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/USBArsenalFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshUSBNetworkInfos(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {p1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "targetOSName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "functionName"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {p1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onOptionsItemSelected$21$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db successfully backed up to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Failed to backup the DB."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$22$com-offsec-nethunter-USBArsenalFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$25$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db is successfully restored to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->gettargetOSSpinnerString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Failed to restore the DB."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$26$com-offsec-nethunter-USBArsenalFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 11

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->isAllUSBInfosValid()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Windows"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "win"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Linux"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "lnx"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Mac OS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "mac"

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ",adb"

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " -v \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " -p \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v1

    goto :goto_3

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " -m \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v7, v8, v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    iget-object v7, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v1

    goto :goto_4

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, " -P \'"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, " -s \'"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[ -f /init.nethunter.rc ] && setprop sys.usb.config "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " || "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/usbarsenal -t \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' -f \'"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v8, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {p1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "/data/data/com.offsec.nethunter/scripts/bin/usbtethering -o "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -i "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -A "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -B "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -C "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -D "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->run_cmd_android(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$10$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "win"

    invoke-static {p1}, Lcom/google/common/base/Predicates;->containsPattern(Ljava/lang/String;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "mac"

    invoke-static {v1}, Lcom/google/common/base/Predicates;->containsPattern(Ljava/lang/String;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p3, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    array-length p2, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onViewCreated$11$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v0, "Failed to set USB function."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v0, "USB function set successfully."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onViewCreated$12$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    const-string v0, "No USB function has been enabled"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "/config/usb_gadget/g1/functions/"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/config/usb_gadget/g1/functions"

    const-string v4, "gsi.rndis"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, " "

    const-string v4, "\n"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mass_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getImageFiles()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rndis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "acm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    :goto_2
    return-void
.end method

.method synthetic lambda$onViewCreated$13$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    const-string v0, "No image is mounted."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$14$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been mounted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to mount image "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onViewCreated$15$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been unmounted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to unmount image "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Your drive may be still be in use by the host, please eject your drive on the host first,and then try to umount the image again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onViewCreated$16$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast p1, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getidVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getidProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getmanufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getproduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getserialnumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$17$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast p1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getupstream_iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getusb_iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_address_for_target()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_gateway()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_subnetmask()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$18$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->inquiryStringEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string p2, "Inquiry string reset to default successfully."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->currentInquiryHintTextView:Landroid/widget/TextView;

    const-string p2, "Linux File-CD/Stor gadget (kernel default)"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Inquiry string changed to \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' successfully."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->currentInquiryHintTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to change inquiry string to \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_6
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "mass_storage.0"

    :cond_2
    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_9
    iget-object p4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_a
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_3

    const/4 p1, 0x1

    sput-boolean p1, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    const-string p2, "cat /init.nethunter.rc | grep -E -o \'sys.usb.config=([a-zA-Z,_]+)\' | sed \'s/sys.usb.config=//\' | sort | uniq"

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {p2}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    sput-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance p4, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method synthetic lambda$onViewCreated$2$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x4

    iput v0, p1, Landroid/os/Message;->what:I

    const-string v0, "find /config/usb_gadget/g1/configs/b.1 -type l -exec readlink -e {} \\; | xargs echo"

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x6

    iput v0, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cat /config/usb_gadget/g1/functions/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lun.0/file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getImageFiles()V

    return-void
.end method

.method synthetic lambda$onViewCreated$4$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 12

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string p2, "No image file is selected."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    iput v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "/lun.0/cdrom"

    const-string v4, " && echo \'1\' > /config/usb_gadget/g1/functions/"

    const-string v5, " && echo \'0\' > /config/usb_gadget/g1/functions/mass_storage.gs6/lun.0/cdrom"

    const-string v6, ".iso"

    const/4 v7, 0x1

    const-string v8, "/lun.0/ro"

    const/4 v9, 0x4

    const-string v10, "/lun.0/file"

    const-string v11, "%s%s && echo \'%s/%s\' > /config/usb_gadget/g1/functions/"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "echo \'1\' > /config/usb_gadget/g1/functions/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    aput-object v5, v9, v7

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    aput-object v0, v9, v2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {p1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "echo \'0\' > /config/usb_gadget/g1/functions/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    aput-object v5, v9, v7

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    aput-object v0, v9, v2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {p1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {p1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method synthetic lambda$onViewCreated$5$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    iput v1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    const-string v0, "echo \'\' > /config/usb_gadget/g1/functions/%s/lun.0/file && echo \'0\' > /config/usb_gadget/g1/functions/%s/lun.0/ro && echo \'0\' > /config/usb_gadget/g1/functions/%s/lun.0/cdrom"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method synthetic lambda$onViewCreated$6$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x9

    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->inquiryStringEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "echo \'%s\' > /config/usb_gadget/g1/functions/%s/lun.0/inquiry_string"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method synthetic lambda$onViewCreated$7$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x[0-9a-fA-F]{4}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "Invalid Format"

    const v3, 0x7f120117

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\w+|^$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v4, 0x3

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[0-9A-Z]{10}|^$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string v0, "The regex must be [0-9A-Z]{10}|^$"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    array-length p1, p1

    if-ge v0, p1, :cond_6

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object p1

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->setUSBSwitchColumnData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Something\'s wrong when processing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "Saved."

    invoke-static {p1, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string v0, "The regex must be \\w*|^$"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_4

    :cond_5
    :goto_3
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string v0, "The regex must be 0x[0-9a-fA-F]{4}"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_6
    :goto_4
    return-void
.end method

.method synthetic lambda$onViewCreated$8$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 6

    new-instance p1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v0

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->setUSBNetworkColumnData(ILcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v0, "Failed saving configs to DB, please check if your input is valid."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v0, "Saved."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$9$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {p1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->start()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBNetworkTetheringButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const-string v4, "OK"

    const-string v5, "Cancel"

    const v6, 0x7f120117

    const-string v7, "/FragmentUSBArsenal"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string v3, "Full path of the db file from where you want to restore:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_2
    const-string v3, "Full path to where you want to save the database:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->resetData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "db is successfully reset to default."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->gettargetOSSpinnerString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "Failed to reset the db to default."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f09024a
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090251

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    const p2, 0x7f090252

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    const p2, 0x7f09024e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    const p2, 0x7f09024f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    const p2, 0x7f090250

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    const p2, 0x7f090231

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    const p2, 0x7f09022e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBNetworkTetheringButton:Landroid/widget/Button;

    const p2, 0x7f09022d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const p2, 0x7f090232

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    const p2, 0x7f09022c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const v0, 0x7f090240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    const v0, 0x7f09023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    const v0, 0x7f09022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    const v0, 0x7f090230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

    const v0, 0x7f090233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f090254

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f090255

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    const v1, 0x7f090253

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->currentInquiryHintTextView:Landroid/widget/TextView;

    const v1, 0x7f090244

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    const v1, 0x7f090245

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    const v1, 0x7f090243

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    const v1, 0x7f090248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    const v1, 0x7f090236

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->inquiryStringEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f090235

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f090234

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f090237

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f090238

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f090239

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f09023d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f09023e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f09023c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f09023a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v2, 0x7f09023b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    aput-object p1, v1, v7

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v4, p1, Landroid/os/Message;->what:I

    const-string v1, "[ -f /init.nethunter.rc ]"

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, p1, Landroid/os/Message;->what:I

    const-string v1, "find /config/usb_gadget/g1/functions/ -name \"mass_storage.*\" -maxdepth 1 -type d -exec basename {} \\; | head -n1"

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x1090008

    invoke-direct {p1, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/offsec/nethunter/USBArsenalFragment$1;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$2;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$2;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$3;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$3;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$4;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$4;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBNetworkTetheringButton:Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    new-instance v2, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, v1}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->setOnShellExecuterFinishedListener(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;)V

    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
