.class public Lcom/offsec/nethunter/CANFragment$ToolsFragment;
.super Lcom/offsec/nethunter/CANFragment;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CANFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolsFragment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isDisableLoopbackEnabled:Z

.field private isInteractiveEnabled:Z

.field private isVerboseEnabled:Z

.field private selected_caniface:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputselected_caniface(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/offsec/nethunter/CANFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/CANFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isInteractiveEnabled:Z

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isVerboseEnabled:Z

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    return-void
.end method

.method static synthetic lambda$onCreateView$10(Landroid/widget/EditText;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$11(Landroidx/activity/result/ActivityResultLauncher;Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "log/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Select output file"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p0, "Hide Advanced Options"

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p0, "Advanced Options"

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$8(Landroid/widget/EditText;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$9(Landroidx/activity/result/ActivityResultLauncher;Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "log/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Select input file"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$refresh$24(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method static synthetic lambda$refresh$25(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V
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

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/Spinner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string p1, "Device list refreshed!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CANFragment$ToolsFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->requireContext()Landroid/content/Context;

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

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$1;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/Spinner;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    new-instance v2, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v1, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isVerboseEnabled:Z

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string p1, " -v"

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v1, :cond_1

    const-string v0, " -x"

    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cangen "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cansniffer "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "candump "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -f "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface and Output File fields is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cansend "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface and Sequence fields is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isInteractiveEnabled:Z

    const-string v0, ""

    if-eqz p2, :cond_0

    const-string p2, " -i"

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-boolean v1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isVerboseEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, " -v"

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-boolean v2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v2, :cond_2

    const-string v0, " -x"

    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canplayer -I "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "Please ensure your Input File field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/sequence_finder.sh "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your Input File field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/view/View;)V
    .locals 0

    const-string p1, "sudo -u kali freediag"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/view/View;)V
    .locals 0

    const-string p1, "sudo -u kali diag_test"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "Refreshing Devices..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "sudo cannelloni -I "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -R "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -r "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -l "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface, RHOST, RPORT, LPORT fields is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "asc2log -I "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -O "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your Input and Output File fields is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "log2asc -I "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -O "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface, Input and Output File fields is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your Custom Command field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isInteractiveEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isInteractiveEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isVerboseEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isVerboseEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$refresh$26$com-offsec-nethunter-CANFragment$ToolsFragment(Landroid/widget/Spinner;)V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v1, v0, v2}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "None"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, p1, v0, v1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda11;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/CANFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0c002b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const p3, 0x7f0900e9

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const v0, 0x7f0900ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0900e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0902b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0902b0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090360

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f09035f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f09012c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const v7, 0x7f09014e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v9, p0, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/Spinner;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const v7, 0x7f0903a5

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/view/View;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const v7, 0x7f0900b6

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0904a2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    new-instance v9, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v9, v8, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda12;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0900bb

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v8, p0, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0900d0

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v8, p0, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0900be

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v8, p0, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v7}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v8, v2}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda16;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v7, v8}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v7

    new-instance v8, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v8, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda17;-><init>(Landroidx/activity/result/ActivityResultLauncher;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v7, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v7, v4}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda18;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v3, v7}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    new-instance v7, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v7, v3}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda22;-><init>(Landroidx/activity/result/ActivityResultLauncher;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090425

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09042a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090424

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, v4}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090429

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v5, p0, p2}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090428

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09043e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090430

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09042e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090427

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090421

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, v2, v4}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090436

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, v2, v4}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09042c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, v6}, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
