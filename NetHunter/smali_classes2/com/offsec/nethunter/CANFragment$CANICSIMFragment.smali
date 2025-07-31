.class public Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;
.super Lcom/offsec/nethunter/CANFragment;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CANFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANICSIMFragment"
.end annotation


# static fields
.field private static final ICSIM_START_SCRIPT_PATH:Ljava/lang/String; = "/opt/car_hacking/icsim_start.sh"

.field private static final ICSIM_STOP_SCRIPT_PATH:Ljava/lang/String; = "/opt/car_hacking/icsim_stop.sh"

.field private static final LONG_DELAY:J = 0x7d0L

.field private static final SHORT_DELAY:J = 0x3e8L


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private selected_caniface:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputselected_caniface(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/CANFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "http://localhost:6080/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$refresh$8(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method static synthetic lambda$refresh$9(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "selected_device"

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private refresh(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f09014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/widget/Spinner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string p1, "Device list refreshed!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CANFragment$CANICSIMFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_usb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "None"

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$1;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "dmesg | grep \"now attached to\" | tail -1 | awk \'{ $1=$2=$3=$4=\"\"; print substr($0, 5) }\'"

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "^(can|vcan|slcan)\\d+$"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/widget/Spinner;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ifconfig | awk \'/^[a-zA-Z0-9]/ {print $1}\' | sed \'s/://\' | grep -E \'^(can|vcan|slcan)[0-9]+$\';ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM)[0-9]+$\' | sed \'s|^|/dev/|\'"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "None"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "Refreshing Devices..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 3

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "su -c \'sh /opt/car_hacking/icsim_start.sh "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "Running ICSim..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda7;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "Please set a CAN interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0

    const-string p2, "su -c \'sh /opt/car_hacking/icsim_stop.sh\'"

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "Stopping ICSim..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0

    const-string p2, "Refreshing ICSim display..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method synthetic lambda$refresh$10$com-offsec-nethunter-CANFragment$CANICSIMFragment(Landroid/widget/Spinner;)V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ifconfig | awk \'/^[a-zA-Z0-9]/ {print $1}\' | sed \'s/://\' | grep -E \'^(can|vcan|slcan)[0-9]+$\'"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "selected_device"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4, p1, v1, v0, v2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda9;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v0, "dmesg | grep \"now attached to\" | tail -1 | awk \'{ $1=$2=$3=$4=\"\"; print substr($0, 5) }\'"

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "^(can|vcan|slcan)\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "None"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1, v0, v1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda10;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/CANFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0029

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09014e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/widget/Spinner;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const p2, 0x7f0903a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/view/View;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const p2, 0x7f09029d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    new-instance p3, Landroid/webkit/WebViewClient;

    invoke-direct {p3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const p3, 0x7f0903bd

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/webkit/WebView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09044f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/webkit/WebView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0903a6

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Landroid/webkit/WebView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
