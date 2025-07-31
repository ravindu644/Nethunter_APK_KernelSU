.class public Lcom/offsec/nethunter/CANFragment$CANUSBFragment;
.super Lcom/offsec/nethunter/CANFragment;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CANFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANUSBFragment"
.end annotation


# instance fields
.field private SelectedBaudrateUSB:Landroid/widget/EditText;

.field private SelectedCanSpeedUSB:Landroid/widget/EditText;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isDebugEnabled:Z

.field private selected_usb:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputselected_usb(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/CANFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->isDebugEnabled:Z

    return-void
.end method

.method private getVisibleParam(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method static synthetic lambda$refresh$11(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method static synthetic lambda$refresh$12(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V
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

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/Spinner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string p1, "Device list refreshed!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CANFragment$CANUSBFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

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

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$1;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/Spinner;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 4

    iget-object p6, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->SelectedCanSpeedUSB:Landroid/widget/EditText;

    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->SelectedBaudrateUSB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->isDebugEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, " -t"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, " -n "

    invoke-direct {p0, p1, v2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getVisibleParam(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, " -i "

    invoke-direct {p0, p2, v2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getVisibleParam(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, " -j "

    invoke-direct {p0, p3, v2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getVisibleParam(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, " -g "

    invoke-direct {p0, p4, v2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getVisibleParam(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v2, " -m "

    invoke-direct {p0, p5, v2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getVisibleParam(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canusb -d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " -b "

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "Please ensure your USB Device and USB CAN Speed, Baudrate, Data fields is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "Refreshing Devices..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/Spinner;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->isDebugEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->isDebugEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$refresh$13$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/Spinner;)V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ifconfig | awk \'/^[a-zA-Z0-9]/ {print $1}\' | sed \'s/://\' | grep -E \'^(can|vcan|slcan)[0-9]+$\';ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM)[0-9]+$\' | sed \'s|^|/dev/|\'"

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1, v1, v0, v2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "None"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v0, v1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/CANFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0c0027

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09009f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->SelectedBaudrateUSB:Landroid/widget/EditText;

    const p2, 0x7f0900ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->SelectedCanSpeedUSB:Landroid/widget/EditText;

    const p2, 0x7f09014e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/Spinner;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const p2, 0x7f0903a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/view/View;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const p2, 0x7f0904bf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/widget/Spinner;

    const-string p2, "1"

    const-string p3, "2"

    const-string v1, "Mode"

    const-string v2, "0"

    filled-new-array {v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$2;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {p3, p0, v1, v2, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$2;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    const p2, 0x1090009

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v7, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance p2, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$3;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$3;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;)V

    invoke-virtual {v7, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f0900ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0904bb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/EditText;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, v3, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0904bc

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/EditText;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, v5, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900cc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0904bd

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/EditText;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, v4, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900cd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, v7, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/Spinner;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ce

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0904c0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/EditText;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, v6, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900cf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p2}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09042b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda13;

    move-object v1, p3

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
