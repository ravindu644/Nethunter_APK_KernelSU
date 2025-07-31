.class public Lcom/offsec/nethunter/ModulesFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/ModulesFragment$PreferencesData;,
        Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "ModulesFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentSortOrder:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public modules_path:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    return-void
.end method

.method private checkFaultyModule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$checkFaultyModule$16(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Module Load Failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Kernel Logs:\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$refreshModules$11(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showModuleDependencies$2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Module Dependencies: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$showModuleInfo$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Module Info: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/ModulesFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/ModulesFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/ModulesFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshModules(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090302

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v2, 0x7f090303

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "[^a-zA-Z0-9/_-]"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_modulespath"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v3, v1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/concurrent/atomic/AtomicReference;Landroid/widget/ListView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showLoadedModules(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090302

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showModuleDependencies(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showModuleInfo(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$checkFaultyModule$17$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "dmesg | tail -n 20"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "No kernel logs available"

    :cond_0
    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1, p1, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda13;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;Landroid/content/SharedPreferences;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lsmod | cut -d\' \' -f1 | grep "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090301

    move-object/from16 v6, p4

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v6, "ModulesFragment"

    const-string v7, "Success"

    const-string v8, " && echo Success || echo Failed"

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "rmmod "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Module disabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Module Disabled: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz v5, :cond_6

    const v1, 0x7f080099

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed - rmmod "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "find "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -name "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ko -print -quit"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v4, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "insmod "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const v11, 0x7f080098

    const-string v12, "Module Enabled: "

    const-string v13, "Module enabled: "

    const-string v14, " from path: "

    if-eqz v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz v5, :cond_6

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "modprobe -d "

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz v5, :cond_6

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed - modprobe -d "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "enable_faulty_check"

    move-object/from16 v4, p2

    invoke-interface {v4, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {v0, v1, v3}, Lcom/offsec/nethunter/ModulesFragment;->checkFaultyModule(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Module not found in the directory structure"

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-ModulesFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showLoadedModules(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Show module information"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showModuleInfo(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "View Dependencies"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showModuleDependencies(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-virtual {p1, p4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p3

    const-string p4, "Show module information"

    invoke-interface {p3, p4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p3

    const-string p4, "View Dependencies"

    invoke-interface {p3, p4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p3, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-ModulesFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->refreshModules(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$15$com-offsec-nethunter-ModulesFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->refreshModules(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$refreshModules$12$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No modules found"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method synthetic lambda$refreshModules$13$com-offsec-nethunter-ModulesFragment(Ljava/util/List;Ljava/util/Map;Landroid/widget/ListView;)V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method synthetic lambda$refreshModules$14$com-offsec-nethunter-ModulesFragment(Ljava/util/concurrent/atomic/AtomicReference;Landroid/widget/ListView;)V
    .locals 6

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "test -d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " && echo exists || echo not_exists"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not_exists"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, p2, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda17;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -name *.ko -printf \"%f\\n\" | sed \'s/\\.ko$//1\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v2, "lsmod | cut -d\' \' -f1"

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p1, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    if-nez p1, :cond_6

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/List;Ljava/util/Map;Landroid/widget/ListView;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method synthetic lambda$showLoadedModules$4$com-offsec-nethunter-ModulesFragment(Ljava/util/List;Landroid/widget/ListView;Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "No modules loaded"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, p3, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showLoadedModules$5$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;)V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "lsmod | cut -d\' \' -f1"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Module"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/List;Landroid/widget/ListView;Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method synthetic lambda$showModuleDependencies$3$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -name "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ko -print -quit"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Module not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modinfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | grep depends"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No dependencies found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method synthetic lambda$showModuleInfo$1$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -name "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ko -print -quit"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Module not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modinfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No information available for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f0d0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090066

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const-string v2, "Search modules"

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/offsec/nethunter/ModulesFragment$1;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0079

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090302

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    const p3, 0x7f0902db

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/view/View;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090303

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v1, "com.offsec.nethunter"

    invoke-virtual {p3, v1, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "last_modulespath"

    const-string v1, ""

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f09039e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->refreshModules(Landroid/view/View;)V

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;Landroid/content/SharedPreferences;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09005f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v0, 0x7f090067

    if-eq v1, v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Sort Modules"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Alphabetical"

    const-string v1, "Reverse"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/ModulesFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enable_faulty_check"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "com.offsec.nethunter"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "/system/lib/modules"

    const-string v0, "last_modulespath"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "autoload_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ko"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insmod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
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

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
