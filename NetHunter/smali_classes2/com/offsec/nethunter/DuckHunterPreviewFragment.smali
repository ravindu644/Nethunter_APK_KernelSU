.class public Lcom/offsec/nethunter/DuckHunterPreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "DuckHunterPreviewFragment.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final duckyInputFile:Ljava/lang/String;

.field private final duckyOutputFile:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isReceiverRegistered:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private previewSource:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetduckyInputFile(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyInputFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetduckyOutputFile(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyOutputFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexe(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexecutorService(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainHandler(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewSource(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewSource:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyInputFile:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyOutputFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090407

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewSource:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewSource:Landroid/widget/TextView;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.offsec.nethunter.PREVIEWDUCKY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    :cond_0
    return-void
.end method
