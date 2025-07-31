.class public Lcom/offsec/nethunter/BadusbFragment;
.super Landroidx/fragment/app/Fragment;
.source "BadusbFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$loadOptions$1(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "^INTERFACE=(.*)$"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0902a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BadusbFragment;Landroid/widget/EditText;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/BadusbFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/BadusbFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BadusbFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/BadusbFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private start()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/start-badusb-lollipop &> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/badusb.log &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v1, "BadUSB attack started! Check /sdcard/nh_files/badusb.log"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private stop()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/stop-badusb-lollipop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v1, "BadUSB attack stopped!"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateOptions()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f0902a0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INTERFACE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?m)^INTERFACE=(.*)$"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v1, "Options updated!"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v1, "Options not updated!"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$loadOptions$2$com-offsec-nethunter-BadusbFragment(Landroid/widget/EditText;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BadusbFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/BadusbFragment;->updateOptions()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BadusbFragment;->activity:Landroid/app/Activity;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/configs/startbadusb-lollipop.sh"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090408

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c001d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BadusbFragment;->loadOptions(Landroid/view/View;)V

    const p2, 0x7f0904b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BadusbFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/BadusbFragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090408

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f09043f

    if-eq v0, v1, :cond_1

    const v1, 0x7f090450

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/offsec/nethunter/BadusbFragment;->stop()V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/BadusbFragment;->start()V

    return v2

    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->activity:Landroid/app/Activity;

    const-class v1, Lcom/offsec/nethunter/EditSourceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "path"

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BadusbFragment;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BadusbFragment;->loadOptions(Landroid/view/View;)V

    :cond_0
    return-void
.end method
