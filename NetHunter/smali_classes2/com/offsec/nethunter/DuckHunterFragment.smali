.class public Lcom/offsec/nethunter/DuckHunterFragment;
.super Landroidx/fragment/app/Fragment;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;,
        Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "DuckHunterFragment"

.field private static keyboardLayoutString:[Ljava/lang/String;

.field public static lang:Ljava/lang/String;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedpreferences:Landroid/content/SharedPreferences;


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

.field private duckyInputFile:Ljava/lang/String;

.field private duckyOutputFile:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isReceiverRegistered:Z

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private final mainHandler:Landroid/os/Handler;

.field private menu:Landroid/view/Menu;

.field private shouldconvert:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetduckyInputFile(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyInputFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetduckyOutputFile(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyOutputFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenu(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->menu:Landroid/view/Menu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshouldconvert(Lcom/offsec/nethunter/DuckHunterFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->shouldconvert:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputshouldconvert(Lcom/offsec/nethunter/DuckHunterFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->shouldconvert:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetLang()V
    .locals 0

    invoke-static {}, Lcom/offsec/nethunter/DuckHunterFragment;->setLang()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v0, "us"

    sput-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->lang:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->shouldconvert:Z

    new-instance v0, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$openLanguageDialog$4(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object p0, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "DuckHunterLanguageIndex"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    sget-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "DuckHunterLanguage"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/DuckHunterFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/DuckHunterFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/DuckHunterFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openLanguageDialog()V
    .locals 4

    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "DuckHunterLanguageIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Language:"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    new-instance v3, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static setLang()V
    .locals 3

    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "DuckHunterLanguageIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->lang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$onOptionsItemSelected$0$com-offsec-nethunter-DuckHunterFragment()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v1, "Launching Attack"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$1$com-offsec-nethunter-DuckHunterFragment(Z)V
    .locals 1

    if-nez p1, :cond_2

    new-instance p1, Ljava/io/File;

    const-string v0, "/config/usb_gadget/g1"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v0, "HID interfaces are not enabled! Please enable in USB Arsenal."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "/dev/hidg0"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v0, "Fixing HID interface permissions.."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v0, "chmod 666 /dev/hidg*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v0, "HID interfaces are not patched or enabled, please check your kernel configuration."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$2$com-offsec-nethunter-DuckHunterFragment()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$openLanguageDialog$3$com-offsec-nethunter-DuckHunterFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/DuckHunterFragment;->setLang()V

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "ACTION"

    const-string v1, "WRITEDUCKY"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "com.offsec.nethunter.WRITEDUCKY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/modules/ducky_in.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyInputFile:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/modules/ducky_out.sh"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyOutputFile:Ljava/lang/String;

    sget-object p1, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v0, "American English"

    const-string v1, "us"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Turkish"

    const-string v1, "tr"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Swedish"

    const-string v1, "sv"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Slovenian"

    const-string v1, "si"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Russian"

    const-string v1, "ru"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Portuguese"

    const-string v1, "pt"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Norwegian"

    const-string v1, "no"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Croatian"

    const-string v1, "hr"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "United Kingdom"

    const-string v1, "gb"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "French"

    const-string v1, "fr"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Finland"

    const-string v1, "fi"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Spain"

    const-string v1, "es"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Danish"

    const-string v1, "dk"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "German"

    const-string v1, "de"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Candian"

    const-string v1, "ca"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Canadian Multilingual Standard"

    const-string v1, "cm"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Brazil"

    const-string v1, "br"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Belgian"

    const-string v1, "be"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Hungarian"

    const-string v1, "hu"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    sput-object p1, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->menu:Landroid/view/Menu;

    const v0, 0x7f0d0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090170

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c004c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/DuckHunterFragment;->setHasOptionsMenu(Z)V

    new-instance p3, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;Landroidx/fragment/app/FragmentManager;)V

    const v1, 0x7f090366

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p3, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lcom/offsec/nethunter/DuckHunterFragment$1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/DuckHunterFragment$1;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string p3, "DuckHunterLanguageIndex"

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    sget-object p2, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    array-length v1, p2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    aget-object p2, p2, v0

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "us"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->menu:Landroid/view/Menu;

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090104

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090170

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->openLanguageDialog()V

    return v2
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    :cond_0
    return-void
.end method
