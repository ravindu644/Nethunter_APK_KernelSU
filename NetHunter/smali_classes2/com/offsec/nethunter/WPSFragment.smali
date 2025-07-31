.class public Lcom/offsec/nethunter/WPSFragment;
.super Landroidx/fragment/app/Fragment;
.source "WPSFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "WPSFragment"


# instance fields
.field private BruteCheckbox:Landroid/widget/CheckBox;

.field private CustomPIN:Landroid/widget/TextView;

.field private CustomPINCheckbox:Landroid/widget/CheckBox;

.field private DelayCMD:Landroid/widget/CheckBox;

.field private DelayLayout:Landroid/widget/LinearLayout;

.field private DelayTime:Landroid/widget/TextView;

.field private PbcCMD:Landroid/widget/CheckBox;

.field private PixieCheckbox:Landroid/widget/CheckBox;

.field private PixieForceCheckbox:Landroid/widget/CheckBox;

.field private WPSList:Landroid/widget/Spinner;

.field private WPSPinLayout:Landroid/widget/LinearLayout;

.field private activity:Landroid/app/Activity;

.field private final arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bruteCMD:Ljava/lang/String;

.field private customPIN:Ljava/lang/String;

.field private customPINCMD:Ljava/lang/String;

.field private delayCMD:Ljava/lang/String;

.field private delayTIME:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private ifaceSpinner:Landroid/widget/Spinner;

.field private iswatch:Ljava/lang/Boolean;

.field private pbcCMD:Ljava/lang/String;

.field private pixieCMD:Ljava/lang/String;

.field private pixieforceCMD:Ljava/lang/String;

.field private selectedInterface:Ljava/lang/String;

.field private selected_network:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetWPSList(Lcom/offsec/nethunter/WPSFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexe(Lcom/offsec/nethunter/WPSFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselectedInterface(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_network(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->selected_network:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/WPSFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/WPSFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/WPSFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/WPSFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private scanWifi()V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    const-string v1, "Scanning.."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    const v5, 0x1090003

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WPSFragment([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/WPSFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/WPSFragment$1;-><init>(Lcom/offsec/nethunter/WPSFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-WPSFragment()V
    .locals 5

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "arm64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/iw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/iw-armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using iw binary: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WPSFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iw version output: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dev | awk \'/Interface/ {print $2}\' | grep \'^wlan\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "wlan0"

    if-eqz v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v1, v0

    if-nez v1, :cond_2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/WPSFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->DelayCMD:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -d "

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->DelayLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->DelayLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->PbcCMD:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " --pbc"

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPIN:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->DelayTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->selected_network:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "python3 /sdcard/nh_files/modules/oneshot.py -b "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->selected_network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -i "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WPSFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "No target selected!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/WPSFragment;->scanWifi()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-WPSFragment()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "settings put system clockwork_wifi_setting off; sleep 1 && settings put system clockwork_wifi_setting on && ip link set wlan0 up"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "svc wifi disable; sleep 1 && svc wifi enable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Done"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-WPSFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->PixieCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -K"

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->PixieForceCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -F"

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->BruteCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -B"

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPINCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " -p "

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->WPSPinLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->WPSPinLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$scanWifi$13$com-offsec-nethunter-WPSFragment()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    const-string v1, "Scanning..."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method synthetic lambda$scanWifi$14$com-offsec-nethunter-WPSFragment(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "No nearby WPS networks"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_0
    const-string v0, "Error:;command"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Please reset the interface!"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$scanWifi$15$com-offsec-nethunter-WPSFragment()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd python3 /sdcard/nh_files/modules/oneshot.py -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -s | grep -E \'[0-9])\' | tr -s \' \' | cut -d \' \' -f 2-3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00e9

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->activity:Landroid/app/Activity;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "running_on_wearos"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p3, "ip link set wlan0 up"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p3, "svc wifi enable"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :goto_0
    const p2, 0x7f0904f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const p2, 0x7f0903c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0904f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x1090003

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {p2, p3, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object p3, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    const p2, 0x7f0903ac

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$2;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$2;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090381

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->PixieCheckbox:Landroid/widget/CheckBox;

    const p2, 0x7f090382

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->PixieForceCheckbox:Landroid/widget/CheckBox;

    const p2, 0x7f0900ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->BruteCheckbox:Landroid/widget/CheckBox;

    const p2, 0x7f09012d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPINCheckbox:Landroid/widget/CheckBox;

    const p2, 0x7f0904f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPIN:Landroid/widget/TextView;

    const p2, 0x7f09013e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->DelayCMD:Landroid/widget/CheckBox;

    const p2, 0x7f090373

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->PbcCMD:Landroid/widget/CheckBox;

    const p2, 0x7f090380

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->WPSPinLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f090142

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->DelayLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->PixieCheckbox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->PixieForceCheckbox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->BruteCheckbox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPINCheckbox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->DelayCMD:Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment;->PbcCMD:Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090437

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f090143

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/offsec/nethunter/WPSFragment;->DelayTime:Landroid/widget/TextView;

    new-instance p3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
