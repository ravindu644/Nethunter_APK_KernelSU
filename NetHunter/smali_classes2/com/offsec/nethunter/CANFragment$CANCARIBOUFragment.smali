.class public Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;
.super Lcom/offsec/nethunter/CANFragment;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CANFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANCARIBOUFragment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private SelectedFile:Landroid/widget/EditText;

.field private SelectedMessage:Landroid/widget/EditText;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isCandumpEnabled:Z

.field private isLoopEnabled:Z

.field private isOutputEnabled:Z

.field private isPadEnabled:Z

.field private isReverseEnabled:Z

.field private selected_caniface:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputselected_caniface(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isPadEnabled:Z

    iput-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    return-void
.end method

.method private getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method static synthetic lambda$onCreateView$5(Landroidx/activity/result/ActivityResultLauncher;Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Select input file"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$6(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
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

.method static synthetic lambda$refresh$28(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method static synthetic lambda$refresh$29(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V
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

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Spinner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string p1, "Device list refreshed!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

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

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$1;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Spinner;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v1, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isPadEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isPadEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "Refreshing Devices..."

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    if-eqz p2, :cond_0

    const p2, 0x1060014

    goto :goto_0

    :cond_0
    const p2, 0x1060016

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3

    iget-boolean p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    const-string v0, ""

    if-eqz p2, :cond_0

    const-string p2, " -t"

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-boolean v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, " -s "

    invoke-direct {p0, p1, v1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "Please chose a CAN Interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    if-eqz p1, :cond_0

    const-string p1, " -r"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "Please chose a CAN Interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$24$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object p4

    const-string v0, "fuzzer_selected"

    const-string v1, ""

    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, " "

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " -min "

    invoke-direct {p0, p2, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, " --seed "

    invoke-direct {p0, p3, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "brute"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\" > $HOME/.canrc && caringcaribou -i "

    const-string v3, "printf \"[default]\ninterface = socketcan\nchannel = "

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fuzzer brute"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v0, "identify"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fuzzer identify"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v0, "mutate"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fuzzer mutate"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    const-string p1, "random"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fuzzer random"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    const-string p1, "replay"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " fuzzer replay"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "Please chose a CAN Interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$25$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 9

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedMessage:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " -d "

    invoke-direct {p0, p1, v1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " -l"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isPadEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, " -p"

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "send_selected"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v5, "None"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " "

    const-string v6, "\" > $HOME/.canrc && caringcaribou -i "

    const-string v7, "printf \"[default]\ninterface = socketcan\nchannel = "

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " send file"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v0, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " send message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "Please chose a CAN Interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$26$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4

    const-string p6, " "

    invoke-direct {p0, p1, p6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p6, " -min "

    invoke-direct {p0, p3, p6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p6, " -max "

    invoke-direct {p0, p4, p6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p6, " -d "

    invoke-direct {p0, p5, p6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object p6

    const-string v0, "uds_selected"

    const-string v1, ""

    invoke-interface {p6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "discovery"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\" > $HOME/.canrc && caringcaribou -i "

    const-string v2, "printf \"[default]\ninterface = socketcan\nchannel = "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uds discovery"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string p3, "services"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " uds services"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "Please chose a CAN Interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$27$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5

    const-string p7, " "

    invoke-direct {p0, p1, p7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " -f "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-direct {p0, p3, p7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, p7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p7, " -min "

    invoke-direct {p0, p5, p7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string p7, " -max "

    invoke-direct {p0, p6, p7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object p7

    const-string v2, "xcp_selected"

    invoke-interface {p7, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "discovery"

    invoke-virtual {v1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\" > $HOME/.canrc && caringcaribou -i "

    const-string v3, "printf \"[default]\ninterface = socketcan\nchannel = "

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " xcp discovery"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string p5, "info"

    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " xcp info"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string p5, "dump"

    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " xcp dump"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "Please chose a CAN Interface!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroidx/activity/result/ActivityResult;)V
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

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$refresh$30$com-offsec-nethunter-CANFragment$CANCARIBOUFragment(Landroid/widget/Spinner;)V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v1, v0, v2}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

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

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "None"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, p1, v0, v1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;-><init>(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/CANFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v8, p0

    const v0, 0x7f0c0028

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0900ef

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v8, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    const v0, 0x7f0900f0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v8, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->SelectedMessage:Landroid/widget/EditText;

    const v0, 0x7f09014e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, v8, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda25;

    invoke-direct {v2, v8, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Spinner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const v0, 0x7f0903a5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8, v9}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, v8, v9}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {v8, v0, v1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda17;-><init>(Landroidx/activity/result/ActivityResultLauncher;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b6

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0900ee

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda18;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090420

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, v8, v7, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900bc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0902cf

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, v8, v10, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c6

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0903ea

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, v8, v1, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0903de

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3, v8, v2, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ba

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f09029e

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda26;

    invoke-direct {v4, v8, v3, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f090419

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/EditText;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda27;

    invoke-direct {v4, v8, v11, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f09016f

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/EditText;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda28;

    invoke-direct {v4, v8, v12, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f0902fc

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/EditText;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda29;

    invoke-direct {v4, v8, v13, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900bf

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f0902f6

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/EditText;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda30;

    invoke-direct {v4, v8, v14, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f090141

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/EditText;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8, v6, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, v8, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, v8, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v8, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900bd

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, v8, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c4

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, v8, v0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09042f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4, v8, v1}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090435

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090274

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const-string v1, "random"

    const-string v4, "replay"

    const-string v5, "brute"

    const-string v15, "identify"

    move-object/from16 p1, v10

    const-string v10, "mutate"

    filled-new-array {v5, v15, v10, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x1090003

    invoke-direct {v4, v5, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$2;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$2;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f090431

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, v8, v3, v13, v2}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903e8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const-string v1, "file"

    const-string v2, "message"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$3;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$3;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f09043d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, v8, v6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const-string v1, "services"

    const-string v15, "discovery"

    filled-new-array {v15, v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$4;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$4;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f090444

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda13;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v10, v4

    move-object v4, v13

    move-object/from16 p3, v13

    move-object v13, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v13, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904f9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const-string v1, "info"

    const-string v2, "dump"

    filled-new-array {v15, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$5;

    invoke-direct {v1, v8}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$5;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f090446

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    new-instance v13, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda14;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p3

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v9
.end method
