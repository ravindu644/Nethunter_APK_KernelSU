.class Lcom/hijacker/MainActivity$SetupTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field customDialog:Lcom/hijacker/CustomDialog;

.field errorDialog:Lcom/hijacker/ErrorDialog;

.field loadingDialog:Lcom/hijacker/LoadingDialog;

.field final synthetic this$0:Lcom/hijacker/MainActivity;


# direct methods
.method private constructor <init>(Lcom/hijacker/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hijacker/MainActivity;Lcom/hijacker/MainActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hijacker/MainActivity$SetupTask;-><init>(Lcom/hijacker/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hijacker/CustomDialog;->_wait()V

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v4, 0x7f1000ba

    invoke-virtual {v3, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Lcom/hijacker/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f1000cd

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v5}, Lcom/hijacker/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->versionName:Ljava/lang/String;

    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/hijacker/MainActivity;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v3

    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "HIJACKER/SetupTask"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    sget-object v0, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->arch:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v7, 0x7f1000be

    invoke-virtual {v6, v7}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f090049

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/hijacker/MainActivity;->ap_count:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f09004a

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/hijacker/MainActivity;->ap_count_icon:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f090196

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/hijacker/MainActivity;->st_count:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f090197

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/hijacker/MainActivity;->st_count_icon:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f09014e

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f0900cb

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v7, 0x7f08009a

    invoke-virtual {v6, v7}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v0, v4

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v7, 0x7f08009b

    invoke-virtual {v6, v7}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v0, v2

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v7, 0x7f08009c

    invoke-virtual {v6, v7}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v0, v7

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v8, 0x7f08009d

    invoke-virtual {v6, v8}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v0, v8

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x4

    iget-object v9, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v10, 0x7f08009e

    invoke-virtual {v9, v10}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aput-object v9, v0, v6

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x5

    iget-object v9, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v10, 0x7f08009f

    invoke-virtual {v9, v10}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aput-object v9, v0, v6

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f0800a0

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v9, 0x6

    aput-object v6, v0, v9

    sget-object v0, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x7

    iget-object v10, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v11, 0x7f0800a1

    invoke-virtual {v10, v11}, Lcom/hijacker/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v0, v6

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v10, 0x7f1000cc

    invoke-virtual {v6, v10}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f1000b2

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100131

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100089

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10007f

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->disable_monMode:Ljava/lang/String;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10008a

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->enable_on_airodump:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100071

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hijacker/MainActivity;->deauthWait:I

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10015e

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_notif:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10015d

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_details:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100023

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->airOnStartup:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100075

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100079

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->delete_extra:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10002a

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->always_cap:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100052

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->chroot_dir:Ljava/lang/String;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f1000e2

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->monstart:Z

    const-string v0, ""

    sput-object v0, Lcom/hijacker/MainActivity;->custom_chroot_cmd:Ljava/lang/String;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10005d

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->cont_on_fail:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10018e

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->watchdog:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10017c

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->target_deauth:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100032

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->update_on_startup:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100036

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hijacker/MainActivity;->band:I

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10015b

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_client_count:Z

    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v10, 0x7f1000cf

    invoke-virtual {v6, v10}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/hijacker/MainActivity;->loadPreferences()V

    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v10, 0x7f1000b9

    invoke-virtual {v6, v10}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/Hijacker"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/actions"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->actions_path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/wordlists"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->wl_path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/capture_files"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/reaver_sessions"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->reaver_sess_path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/fw_bcmdhd.orig.bin"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->firm_backup_file:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/manuf.db"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->manufDBFile:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/io/File;

    sget-object v10, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    sget-object v10, Lcom/hijacker/MainActivity;->actions_path:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    sget-object v10, Lcom/hijacker/MainActivity;->wl_path:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    sget-object v10, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    sget-object v10, Lcom/hijacker/MainActivity;->reaver_sess_path:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "cap_dir"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "cap_dir"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moving cap files from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mv "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/* "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/ && rmdir "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v6, "cap_dir"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v6, "/sdcard/cap"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moving cap files from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v6, v11

    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_4
    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "running_on_wearos"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Watch: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/hijacker/MainActivity;->iswatch:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/hijacker/MainActivity;->ap_count:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->st_count:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->ap_count_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->st_count_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v10, 0x7f1000bb

    invoke-virtual {v6, v10}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-class v10, Lcom/hijacker/DismissReceiver;

    invoke-direct {v0, v6, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Landroid/content/Intent;

    iget-object v10, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-class v11, Lcom/hijacker/StopReceiver;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v10, Landroid/content/Intent;

    iget-object v11, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-class v12, Lcom/hijacker/MainActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v11, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-static {v11, v4, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_8

    const-string v11, "miscellaneous"

    goto :goto_5

    :cond_8
    iget-object v11, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const/high16 v12, 0x7f100000

    invoke-virtual {v11, v12}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_5
    new-instance v12, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v13, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {v12, v13, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v12, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    sget-object v12, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v13, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v14, 0x7f10011d

    invoke-virtual {v13, v14}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v12, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v12, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    const v13, 0x7f080082

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v12, v14, :cond_9

    sget-object v12, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f06002b

    invoke-virtual {v15, v9}, Lcom/hijacker/MainActivity;->getColor(I)I

    move-result v9

    invoke-virtual {v12, v9}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_9
    sget-object v9, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v12, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v12}, Lcom/hijacker/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    const v9, 0x7f0800a6

    iget-object v12, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v15, 0x7f100176

    invoke-virtual {v12, v15}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v15}, Lcom/hijacker/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v4, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v9, v12, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {v0, v6, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v14, :cond_a

    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x1060017

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_a
    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    new-array v6, v7, [J

    fill-array-data v6, :array_0

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {v0, v6, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f1000ad

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v14, :cond_b

    sget-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x1060015

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b
    sget-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->handshake_notif:Landroidx/core/app/NotificationCompat$Builder;

    new-array v6, v7, [J

    fill-array-data v6, :array_1

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f1000d0

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100117

    invoke-virtual {v0, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/ST;->not_connected:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f100126

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/ST;->paired:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f10004c

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    const-string v10, "android.permission.ACCESS_WIFI_STATE"

    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v12, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v13, "android.permission.ACCESS_NETWORK_STATE"

    const-string v14, "android.permission.INTERNET"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :try_start_2
    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_6
    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f10004d

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v6, "which su"

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'which su\' failed with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HIJACKER/Setup"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v8, [Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f10017a

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v3, 0x7f10017b

    invoke-virtual {v2, v3}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    invoke-virtual {v0}, Lcom/hijacker/ErrorDialog;->_wait()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v9, 0x7f10013d

    invoke-virtual {v6, v9}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v6, "su -c id"

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'su -c id\' failed with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HIJACKER/Setup"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v8, [Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f100112

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v3, 0x7f100113

    invoke-virtual {v2, v3}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    invoke-virtual {v0}, Lcom/hijacker/ErrorDialog;->_wait()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_d
    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v8, 0x7f100158

    invoke-virtual {v6, v8}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    sget-object v0, Lcom/hijacker/MainActivity;->arch:Ljava/lang/String;

    const-string v6, "armv7l"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/hijacker/MainActivity;->arch:Ljava/lang/String;

    const-string v6, "aarch64"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    const-string v0, "HIJACKER/onCreate"

    const-string v5, "Device not armv7l or aarch64, can\'t install tools"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "busybox"

    sput-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100116

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    invoke-virtual {v0}, Lcom/hijacker/ErrorDialog;->_wait()V

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    const-string v6, "prefix"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    const-string v0, "airodump-ng"

    sput-object v0, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    const-string v0, "aireplay-ng"

    sput-object v0, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    const-string v0, "aircrack-ng"

    sput-object v0, Lcom/hijacker/MainActivity;->aircrack_dir:Ljava/lang/String;

    const-string v0, "mdk3"

    sput-object v0, Lcom/hijacker/MainActivity;->mdk3bf_dir:Ljava/lang/String;

    const-string v0, "mdk3"

    sput-object v0, Lcom/hijacker/MainActivity;->mdk3dos_dir:Ljava/lang/String;

    const-string v0, "reaver"

    sput-object v0, Lcom/hijacker/MainActivity;->reaver_dir:Ljava/lang/String;

    goto/16 :goto_d

    :cond_f
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/bin/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/lib/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/lib"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-nez v10, :cond_10

    new-array v0, v7, [Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f10003b

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    invoke-virtual {v0}, Lcom/hijacker/ErrorDialog;->_wait()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-nez v10, :cond_11

    new-array v0, v7, [Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f1000c9

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    invoke-virtual {v0}, Lcom/hijacker/ErrorDialog;->_wait()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v10, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v11, "busybox"

    invoke-virtual {v10, v11, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/bin/busybox"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/16 v10, 0x15

    if-ne v8, v10, :cond_14

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ne v8, v7, :cond_14

    if-eqz v5, :cond_14

    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v8, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v9, "tools_version"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_13

    sget-boolean v7, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v7, :cond_12

    const-string v7, "HIJACKER/SetupTask"

    const-string v8, "Tools already installed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v7, 0x0

    goto :goto_c

    :cond_13
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/hijacker/MainActivity;->manufDBFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_14
    const/4 v7, 0x1

    :goto_c
    if-eqz v7, :cond_15

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "airbase-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "aircrack-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "aireplay-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "airodump-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "besside-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "ivstools"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "iw"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "iwconfig"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "iwlist"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "iwpriv"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "kstats"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "makeivs-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "mdk3"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "nc"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "packetforge-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "reaver"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "reaver-wash"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "wesside-ng"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v8, "wpaclean"

    invoke-virtual {v7, v8, v0, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v7, "libfakeioctl.so"

    invoke-virtual {v0, v7, v6, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v7, "libnexmon.so"

    invoke-virtual {v0, v7, v6, v2}, Lcom/hijacker/MainActivity;->extract(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cd "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/bin; mv mdk3 mdk3bf; cp mdk3bf mdk3dos"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    if-eqz v5, :cond_15

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v6, "tools_version"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10007d

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v0

    invoke-static {v0}, Lcom/hijacker/MainActivity;->findFirmwarePath(Lcom/hijacker/Shell;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strings "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " grep \"FWID:\"; echo ENDOFSTRINGS"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v5

    const-string v6, "ENDOFSTRINGS"

    invoke-static {v5, v6}, Lcom/hijacker/MainActivity;->getLastLine(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    sget-object v5, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_16

    sget-object v6, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "devChipset is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HIJACKER/DetectDev"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hijacker/Shell;->done()V

    const-string v0, ""

    sput-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "prefix"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    sget-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, ""

    sput-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/airodump-ng"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/aireplay-ng"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/aircrack-ng"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->aircrack_dir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/mdk3bf"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->mdk3bf_dir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/mdk3dos"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->mdk3dos_dir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/reaver"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->reaver_dir:Ljava/lang/String;

    :goto_d
    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f1000bc

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/hijacker/RootFile;->init()V

    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f1000bd

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4;

    invoke-direct {v0, v1}, Lcom/hijacker/MainActivity$SetupTask$4;-><init>(Lcom/hijacker/MainActivity$SetupTask;)V

    sput-object v0, Lcom/hijacker/MainActivity;->wpa_runnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    sget-object v5, Lcom/hijacker/MainActivity;->wpa_runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    new-instance v5, Lcom/hijacker/WatchdogTask;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {v5, v6}, Lcom/hijacker/WatchdogTask;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100170

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-class v7, Lcom/hijacker/PersistenceService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Lcom/hijacker/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f1000ce

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/hijacker/MainActivity;->manufDBFile:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_18

    const-string v0, "HIJACKER/SetupTask"

    const-string v5, "Error creating database file"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_18
    sget-boolean v5, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v5, :cond_19

    const-string v5, "HIJACKER/SetupTask"

    const-string v6, "Creating manufacturer database..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    new-array v5, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v7, 0x7f10003d

    invoke-virtual {v6, v7}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, v5}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v7}, Lcom/hijacker/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "oui.txt"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x12

    if-lt v7, v8, :cond_1c

    const-string v7, "(base 16)"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v7, 0x6

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x16

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1b

    sget-object v9, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1c
    :goto_f
    const/4 v7, 0x6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1d
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_1f

    const-string v0, "HIJACKER/SetupTask"

    const-string v5, "Manufacturer database built"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HIJACKER/SetupTask"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    goto :goto_11

    :cond_1e
    :try_start_8
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_1f

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HIJACKER/SetupTask"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    :cond_1f
    :goto_11
    sget-object v0, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const v3, 0x7f090129

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100107

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const v3, 0x7f09012c

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10010a

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const v3, 0x7f09012d

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10010b

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const v3, 0x7f09012a

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100108

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const v3, 0x7f09012b

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f100109

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const v3, 0x7f09012e

    iget-object v5, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v6, 0x7f10010c

    invoke-virtual {v5, v6}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f1000cb

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/hijacker/CustomAction;->load()V

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f1000ca

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/hijacker/MainActivity;->loadAliases()V

    :cond_20
    sget-boolean v0, Lcom/hijacker/MainActivity;->update_on_startup:Z

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->internetAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f10004b

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0, v4}, Lcom/hijacker/MainActivity;->checkForUpdate(Z)V

    goto :goto_12

    :cond_21
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/hijacker/MainActivity$SetupTask$5;

    invoke-direct {v3, v1}, Lcom/hijacker/MainActivity$SetupTask$5;-><init>(Lcom/hijacker/MainActivity$SetupTask;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_22
    :goto_12
    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f10007c

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/report.txt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_23
    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    sget-boolean v3, Lcom/hijacker/MainActivity;->iswatch:Z

    const-string v5, "running_on_wearos"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "prefix"

    const-string v5, "LD_PRELOAD=/system/lib/libfakeioctl.so"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "enable_monMode"

    const-string v5, "nexutil -m2"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "disable_monMode"

    const-string v5, "nexutil -m0; nexutil -s263 -l8 -b -v `printf \'mpc\\x00\\x01\\x00\\x00\\x00\' | base64 | tr -d \'\\n\'`"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "deauthWait"

    const-string v5, "3"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "enable_on_airodump"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "airOnStartup"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "watchdog"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_24
    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    if-eqz v0, :cond_25

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v5, 0x7f100135

    invoke-virtual {v3, v5}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Lcom/hijacker/MainActivity$SetupTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v0

    const-string v3, "su -c ifconfig wlan0 up; nexutil -s263 -l8 -b -v `printf \'mpc\\x00\\x00\\x00\\x00\\x00\' | base64 | tr -d \'\\n\'"

    invoke-virtual {v0, v3}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :cond_25
    iget-object v0, v1, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    if-eqz v0, :cond_26

    new-instance v0, Lcom/hijacker/FirstRunDialog;

    invoke-direct {v0}, Lcom/hijacker/FirstRunDialog;-><init>()V

    iget-object v3, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v3}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "FirstRunDialog"

    invoke-virtual {v0, v3, v4}, Lcom/hijacker/FirstRunDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/FirstRunDialog;->_wait()V

    :cond_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data

    :array_1
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/MainActivity$SetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->loadingDialog:Lcom/hijacker/LoadingDialog;

    iget-object v1, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v2, 0x7f10016f

    invoke-virtual {v1, v2}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hijacker/LoadingDialog;->setText(Ljava/lang/String;)V

    sget-boolean p1, Lcom/hijacker/MainActivity;->iswatch:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "firstrun_wearos_done"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v2, "WearOS init completed. Restarting..."

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Lcom/hijacker/MainActivity$SetupTask$6;

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/hijacker/MainActivity$SetupTask$6;-><init>(Lcom/hijacker/MainActivity$SetupTask;JJ)V

    invoke-virtual {p1}, Lcom/hijacker/MainActivity$SetupTask$6;->start()Landroid/os/CountDownTimer;

    :cond_1
    sget-boolean p1, Lcom/hijacker/MainActivity;->watchdog:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/WatchdogTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900cb

    new-instance v1, Lcom/hijacker/MyListFragment;

    invoke-direct {v1}, Lcom/hijacker/MyListFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->loadingDialog:Lcom/hijacker/LoadingDialog;

    invoke-virtual {p1}, Lcom/hijacker/LoadingDialog;->dismissAllowingStateLoss()V

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :cond_4
    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {p1}, Lcom/hijacker/MainActivity;->main()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hijacker/MainActivity$SetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "firstrun_wearos_done"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const-string v3, "Initializing for WearOS. App will restart after setup..."

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v0, Lcom/hijacker/ErrorDialog;

    invoke-direct {v0}, Lcom/hijacker/ErrorDialog;-><init>()V

    iput-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    new-instance v0, Lcom/hijacker/LoadingDialog;

    invoke-direct {v0}, Lcom/hijacker/LoadingDialog;-><init>()V

    iput-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->loadingDialog:Lcom/hijacker/LoadingDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v4, 0x7f10016f

    invoke-virtual {v3, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hijacker/LoadingDialog;->setInitText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->loadingDialog:Lcom/hijacker/LoadingDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v3}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "LoadingDialog"

    invoke-virtual {v0, v3, v4}, Lcom/hijacker/LoadingDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "disclaimerAccepted"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/hijacker/CustomDialog;

    invoke-direct {v0}, Lcom/hijacker/CustomDialog;-><init>()V

    iput-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    invoke-virtual {v0, v2}, Lcom/hijacker/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v4, 0x7f100081

    invoke-virtual {v3, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hijacker/CustomDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v4, 0x7f100080

    invoke-virtual {v3, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hijacker/CustomDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v4, 0x7f100022

    invoke-virtual {v3, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hijacker/MainActivity$SetupTask$1;

    invoke-direct {v4, p0}, Lcom/hijacker/MainActivity$SetupTask$1;-><init>(Lcom/hijacker/MainActivity$SetupTask;)V

    invoke-virtual {v0, v3, v4}, Lcom/hijacker/CustomDialog;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v4, 0x7f100115

    invoke-virtual {v3, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hijacker/MainActivity$SetupTask$2;

    invoke-direct {v4, p0}, Lcom/hijacker/MainActivity$SetupTask$2;-><init>(Lcom/hijacker/MainActivity$SetupTask;)V

    invoke-virtual {v0, v3, v4}, Lcom/hijacker/CustomDialog;->setNeutralButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->customDialog:Lcom/hijacker/CustomDialog;

    iget-object v3, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v3}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "CustomDialog for disclaimer"

    invoke-virtual {v0, v3, v4}, Lcom/hijacker/CustomDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v3, 0x7f0900a9

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v3, v0, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v3, 0x7f09012f

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/navigation/NavigationView;

    iput-object v3, v0, Lcom/hijacker/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object v0, v0, Lcom/hijacker/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object v0, v0, Lcom/hijacker/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Lcom/hijacker/MainActivity$SetupTask$3;

    invoke-direct {v3, p0}, Lcom/hijacker/MainActivity$SetupTask$3;-><init>(Lcom/hijacker/MainActivity$SetupTask;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const v3, 0x7f090128

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    sput-object v0, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    sget-object v3, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v3}, Lcom/hijacker/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    sget-object v0, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget-object v3, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "running_on_wearos"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget-object v2, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_0

    :cond_3
    const-string v0, "HIJACKER/SetupPreEx"

    const-string v1, "actionbar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hijacker/MainActivity$SetupTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hijacker/MainActivity$SetupTask;->loadingDialog:Lcom/hijacker/LoadingDialog;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lcom/hijacker/LoadingDialog;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/hijacker/ErrorDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-object p1, p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hijacker/ErrorDialog;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask;->errorDialog:Lcom/hijacker/ErrorDialog;

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ErrorDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
