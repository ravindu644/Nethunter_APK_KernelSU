.class public Lcom/offsec/nethunter/AppNavHomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppNavHomeActivity.java"

# interfaces
.implements Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BOOT_CHANNEL_ID:Ljava/lang/String; = "BOOT_CHANNEL"

.field public static final CHROOT_INSTALLED_TAG:Ljava/lang/String; = "CHROOT_INSTALLED_TAG"

.field public static final GPS_BACKGROUND_FRAGMENT_TAG:Ljava/lang/String; = "BG_FRAGMENT_TAG"

.field public static final TAG:Ljava/lang/String; = "AppNavHomeActivity"

.field public static customCMDitem:Landroid/view/MenuItem;

.field public static isBackPressEnabled:Ljava/lang/Boolean;

.field public static lastSelectedMenuItem:Landroid/view/MenuItem;


# instance fields
.field public copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

.field private desiredFragment:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

.field private final locationServiceConnection:Landroid/content/ServiceConnection;

.field private locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

.field private locationUpdatesRequested:Z

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private mTitle:Ljava/lang/CharSequence;

.field private navigationView:Lcom/google/android/material/navigation/NavigationView;

.field private navigationViewWear:Lcom/google/android/material/navigation/NavigationView;

.field private nethunterReceiver:Landroid/content/BroadcastReceiver;

.field private nhPaths:Lcom/offsec/nethunter/utils/NhPaths;

.field private permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

.field private prefs:Landroid/content/SharedPreferences;

.field private final titles:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateServiceBound:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetlocationService(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/LocationUpdateService;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocationUpdateReceiver(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocationUpdatesRequested(Lcom/offsec/nethunter/AppNavHomeActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationView(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlocationService(Lcom/offsec/nethunter/AppNavHomeActivity;Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateServiceBound(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeFragment(Lcom/offsec/nethunter/AppNavHomeActivity;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAllRequiredPermissionsGranted(Lcom/offsec/nethunter/AppNavHomeActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->isAllRequiredPermissionsGranted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetRootView(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setRootView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "NetHunter"

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    new-instance v0, Lcom/offsec/nethunter/AppNavHomeActivity$2;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$2;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private changeDrawer(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-static {p1}, Lcom/offsec/nethunter/WPSFragment;->newInstance(I)Lcom/offsec/nethunter/WPSFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->newInstance(I)Lcom/offsec/nethunter/WifipumpkinFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.offsec.nethunter.kex"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "NetHunter KeX is not installed yet, please install from the store!"

    invoke-virtual {p0, v2, p1, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Lcom/offsec/nethunter/VNCFragment;->newInstance(I)Lcom/offsec/nethunter/VNCFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v4, "ls /config/usb_gadget/g1"

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->newInstance(I)Lcom/offsec/nethunter/USBArsenalFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "USB Arsenal (ConfigFS) is only supported by kernels above 4.x. Please note that HID, RNDIS, and Mass Storage should be automatically enabled on older devices with NetHunter patches."

    invoke-virtual {p0, v2, p1, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->newInstance(I)Lcom/offsec/nethunter/SettingsFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {p1}, Lcom/offsec/nethunter/SETFragment;->newInstance(I)Lcom/offsec/nethunter/SETFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->newInstance(I)Lcom/offsec/nethunter/SearchSploitFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p1}, Lcom/offsec/nethunter/PineappleFragment;->newInstance(I)Lcom/offsec/nethunter/PineappleFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->newInstance(I)Lcom/offsec/nethunter/NmapFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {p1}, Lcom/offsec/nethunter/NetHunterFragment;->newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {p1}, Lcom/offsec/nethunter/MPCFragment;->newInstance(I)Lcom/offsec/nethunter/MPCFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {p1}, Lcom/offsec/nethunter/ModulesFragment;->newInstance(I)Lcom/offsec/nethunter/ModulesFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->newInstance(I)Lcom/offsec/nethunter/MacchangerFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_d
    invoke-static {p1}, Lcom/offsec/nethunter/KernelFragment;->newInstance(I)Lcom/offsec/nethunter/KernelFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_e
    invoke-static {p1}, Lcom/offsec/nethunter/KaliServicesFragment;->newInstance(I)Lcom/offsec/nethunter/KaliServicesFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_f
    invoke-static {p1}, Lcom/offsec/nethunter/HidFragment;->newInstance(I)Lcom/offsec/nethunter/HidFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_10
    invoke-static {p1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->newInstance(I)Lcom/offsec/nethunter/KaliGpsServiceFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_11
    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterFragment;->newInstance(I)Lcom/offsec/nethunter/DuckHunterFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_12
    invoke-static {p1}, Lcom/offsec/nethunter/DeAuthFragment;->newInstance(I)Lcom/offsec/nethunter/DeAuthFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_13
    invoke-static {p1}, Lcom/offsec/nethunter/CustomCommandsFragment;->newInstance(I)Lcom/offsec/nethunter/CustomCommandsFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_14
    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->newInstance(I)Lcom/offsec/nethunter/ChrootManagerFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_15
    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->newInstance(I)Lcom/offsec/nethunter/CANFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_16
    invoke-static {p1}, Lcom/offsec/nethunter/BTFragment;->newInstance(I)Lcom/offsec/nethunter/BTFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_17
    invoke-static {p1}, Lcom/offsec/nethunter/BadusbFragment;->newInstance(I)Lcom/offsec/nethunter/BadusbFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :sswitch_18
    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->newInstance(I)Lcom/offsec/nethunter/AudioFragment;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090083 -> :sswitch_18
        0x7f09009c -> :sswitch_17
        0x7f0900b2 -> :sswitch_16
        0x7f0900e4 -> :sswitch_15
        0x7f09011e -> :sswitch_14
        0x7f09012a -> :sswitch_13
        0x7f090134 -> :sswitch_12
        0x7f090171 -> :sswitch_11
        0x7f09027b -> :sswitch_10
        0x7f090293 -> :sswitch_f
        0x7f0902bc -> :sswitch_e
        0x7f0902be -> :sswitch_d
        0x7f0902dd -> :sswitch_c
        0x7f090304 -> :sswitch_b
        0x7f090312 -> :sswitch_a
        0x7f09033a -> :sswitch_9
        0x7f090345 -> :sswitch_8
        0x7f09037b -> :sswitch_7
        0x7f0903dc -> :sswitch_6
        0x7f0903ee -> :sswitch_5
        0x7f0903f6 -> :sswitch_4
        0x7f0904c1 -> :sswitch_3
        0x7f0904d5 -> :sswitch_2
        0x7f0904dc -> :sswitch_1
        0x7f0904f1 -> :sswitch_0
    .end sparse-switch
.end method

.method private changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090114

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private isAllRequiredPermissionsGranted()Z
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v1, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v3, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/offsec/nethunter/utils/PermissionCheck;->checkPermissions([Ljava/lang/String;I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v3, Lcom/offsec/nethunter/utils/PermissionCheck;->NH_TERM_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v2, Lcom/offsec/nethunter/utils/PermissionCheck;->NH_TERM_PERMISSIONS:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/PermissionCheck;->checkPermissions([Ljava/lang/String;I)V

    return v1

    :cond_1
    return v2
.end method

.method static synthetic lambda$showLicense$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$showWarningDialog$4(ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method private setRootView()V
    .locals 8

    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x7f090338

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "snowfall_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v3, "catfish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "catshark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "catshark-4g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0xe

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x11

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x14

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x16

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x17

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x18

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const v2, 0x7f090406

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/config/usb_gadget/g1"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00cf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/navigation/NavigationView;->addHeaderView(Landroid/view/View;)V

    const v2, 0x7f0902ac

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v3, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd KK:mm:ss a zzz"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v3, Lcom/offsec/nethunter/BuildConfig;->BUILD_TIME:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900d5

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0900d6

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "2025.2"

    aput-object v6, v5, v4

    const v6, 0x78b35ac4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Version: %s (%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "Date: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setupDrawerContent(Lcom/google/android/material/navigation/NavigationView;)V

    :cond_6
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f060047

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f09033a

    invoke-static {v2}, Lcom/offsec/nethunter/NetHunterFragment;->newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;

    move-result-object v2

    const v3, 0x7f090114

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f090106

    invoke-interface {v0, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "seenNav"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_8
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x7f110094

    const v3, 0x7f110093

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/service/CompatCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeDrawer(I)V

    iput v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    :cond_9
    return-void
.end method

.method private setupDrawerContent(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1

    new-instance v0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private setupDrawerContentWear(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1

    new-instance v0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private showLicense()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f11017d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f11017c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "%s\n\n%s\n\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v4, 0x7f120116

    invoke-direct {v0, p0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v5, "README INFO"

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda4;-><init>()V

    const-string v5, "Cancel"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public blockActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setRootView$0$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->showLicense()V

    return-void
.end method

.method synthetic lambda$setupDrawerContent$2$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/MenuItem;)Z
    .locals 3

    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    sput-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeDrawer(I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    return v0
.end method

.method synthetic lambda$setupDrawerContentWear$3$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/MenuItem;)Z
    .locals 3

    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    sput-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeDrawer(I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    return v0
.end method

.method public onBackPressed()V
    .locals 7

    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eq v5, v4, :cond_1

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    sput-object v4, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    :cond_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move v4, v2

    :cond_2
    add-int/2addr v4, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "AppNavHomeActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/utils/NhPaths;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/utils/NhPaths;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nhPaths:Lcom/offsec/nethunter/utils/NhPaths;

    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Root permission is required!!"

    if-nez p1, :cond_0

    const-string p1, "Root permission"

    invoke-virtual {p0, p1, v1, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NetHunter app cannot be run properly"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/offsec/nethunter/utils/PermissionCheck;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/offsec/nethunter/utils/PermissionCheck;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    new-instance p1, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.offsec.nethunter.CHECKCOMPAT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.offsec.nethunter.BACKPRESSED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.offsec.nethunter.CHECKCHROOT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ChrootManager"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "com.offsec.nethunter"

    invoke-virtual {p0, p1, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity$1;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->setListener(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    invoke-virtual {p1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->execute()V

    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->isAllRequiredPermissionsGranted()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setRootView()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    invoke-virtual {p1}, Lcom/offsec/nethunter/utils/PermissionCheck;->requestPermissions()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nhPaths:Lcom/offsec/nethunter/utils/NhPaths;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/offsec/nethunter/utils/NhPaths;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z
    .locals 5

    const-string v0, "onReceiverReattach"

    const-string v1, "AppNavHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/offsec/nethunter/gps/LocationUpdateService;->isInstanceCreated()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "locationService: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    :goto_0
    return v4

    :cond_2
    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const-string v0, "AppNavHomeActivity"

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, p2, :cond_5

    :cond_0
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget v5, p3, v4

    if-eqz v5, :cond_3

    const-string p3, "NetHunter app cannot be run properly"

    if-ne p1, p2, :cond_2

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x21

    const-string v2, "com.offsec.nhterm"

    if-lt p1, p2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :goto_1
    const-string p1, "onRequestPermissionsResult: com.offsec.nhterm is found."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    const-string p1, "onRequestPermissionsResult: com.offsec.nhterm not found."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v3, :cond_2

    const-string p1, "NetHunter Terminal is not installed yet, please install from the store!"

    invoke-virtual {p0, p3, p1, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string p1, "Please grant all the permission requests from outside the app or restart the app to grant the rest of permissions again."

    invoke-virtual {p0, p3, p1, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->isAllRequiredPermissionsGranted()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setRootView()V

    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/service/CompatCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public onStopRequested()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopUpdates()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    :cond_0
    iget-boolean v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method public restoreActionBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDefaultSharePreference()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "DuckHunterLanguage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "us"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "chroot_default_tarball_path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/kalifs-backup.tar.gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "chroot_download_chroot_dir"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f120117

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p1, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;-><init>(Z)V

    const-string p2, "CLOSE"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
