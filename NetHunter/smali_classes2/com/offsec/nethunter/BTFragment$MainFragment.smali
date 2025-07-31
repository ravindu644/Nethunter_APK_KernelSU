.class public Lcom/offsec/nethunter/BTFragment$MainFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private iswatch:Ljava/lang/Boolean;

.field selected_addr:Ljava/lang/String;

.field selected_class:Ljava/lang/String;

.field private selected_iface:Ljava/lang/String;

.field selected_name:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputselected_iface(Lcom/offsec/nethunter/BTFragment$MainFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/widget/Button;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p2, "#40FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setTextColor(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$5(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private refresh(Landroid/view/View;)V
    .locals 13

    const v0, 0x7f09000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f090010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f090009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0900a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const v0, 0x7f090133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const v0, 0x7f09028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    const v0, 0x7f090290

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/Spinner;

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string v0, "com.offsec.nethunter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$MainFragment([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd hciconfig | grep hci | cut -d: -f1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    const-string v0, "Start"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "/bootkali custom_cmd hciconfig "

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    const-string p3, "None"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "No interface, please refresh or check connections!"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " up noscan"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p3, "Stop"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " down"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Scanning.."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-BTFragment$MainFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/ListView;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "No devices found"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali custom_cmd rm /root/blue.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " bluelog -i "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -ncqo /root/blue.log;hciconfig "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " noscan"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p4, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/ListView;)V

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-BTFragment$MainFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/ListView;Ljava/io/File;Landroid/view/View;)V
    .locals 6

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-nez p5, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bootkali custom_cmd hciconfig "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | grep \'UP RUNNING\' | cut -f2 -d$\'\\t\'"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v1, "UP RUNNING "

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p5, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Interface is down!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "No interface selected!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1, p5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "No devices found"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "No target!"

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "echo "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " | cut -d , -f 1"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_addr:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " | cut -d , -f 2"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_class:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | cut -d , -f 3"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_name:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string p2, "selected_address"

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_addr:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string p2, "selected_class"

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_class:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string p2, "selected_name"

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_name:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Target selected!"

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$MainFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-BTFragment$MainFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-BTFragment$MainFragment()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "settings put global airplane_mode_on 0;am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false"

    const-string v2, "svc wifi enable"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p6

    const-string v0, "Start"

    invoke-virtual {p6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string v0, "echo 0 > "

    const-string v1, "svc bluetooth enable"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p6

    if-nez p6, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const p4, 0x7f120117

    invoke-direct {p2, p3, p4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string p3, "Internal bluetooth support disabled"

    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string p3, "Your device does not support hwbinder, vhci, or bt_smd. Make sure your kernel config has the recommended drivers enabled in order to use internal bluetooth."

    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p3, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Button;)V

    const-string p1, "Sure"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda6;-><init>()V

    const-string p3, "Try anyway"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    const-string p3, "svc bluetooth disable"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v2, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v2, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "echo 1 > "

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/usr/sbin/bluebinder"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "settings put global airplane_mode_on 1;am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true"

    const-string p4, "pm disable com.android.bluetooth"

    const-string p6, "svc wifi disable"

    filled-new-array {p3, p6, p2, p4}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    const-string p1, "echo -ne \"\\033]0;Bluebinder\\007\" && clear;screen -A bluebinder || bluebinder;exit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->run_cmd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Starting bluebinder..."

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;)V

    const-wide/16 p3, 0x2328

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Bluebinder is not installed. Launching setup.."

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->RunSetup()V

    :goto_0
    invoke-direct {p0, p5}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p3, "Stop"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v2, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p2, v2, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/bootkali custom_cmd pkill bluebinder;exit"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "pm enable com.android.bluetooth"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p5}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    const-string v0, "Start"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd service dbus start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p3, "Stop"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd service dbus stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bootkali custom_cmd service dbus status | grep dbus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "dbus is running."

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    const-string v1, "Start"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd service bluetooth start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p3, "Stop"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd service bluetooth stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Enable dbus service first!"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onResume$0$com-offsec-nethunter-BTFragment$MainFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$refresh$16$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Spinner;Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd hciconfig | grep hci | cut -d: -f1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const v3, 0x1090003

    if-eqz v2, :cond_0

    const-string p2, "None"

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string v1, "selected_iface"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "pidof bluebinder"

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    const-string v1, "/sys/module/hci_smd/parameters/hcismd_set"

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    const v1, 0x7f110044

    const v2, 0x7f11004a

    const v3, 0x7f110049

    const v4, 0x7f110048

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_2
    const-string p1, "hci0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f110042

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f110040

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v4}, Landroid/widget/Button;->setText(I)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/bootkali custom_cmd service dbus status | grep dbus"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dbus is running."

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p6, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p6, v4}, Landroid/widget/Button;->setText(I)V

    :goto_2
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/bootkali custom_cmd service bluetooth status | grep bluetooth"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bluetooth is running."

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p7, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p8, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p7, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p8, v4}, Landroid/widget/Button;->setText(I)V

    :goto_3
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/bootkali custom_cmd hciconfig "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " | grep \'UP RUNNING\' | cut -f2 -d$\'\\t\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UP RUNNING "

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f11004c

    invoke-virtual {p9, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p10, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_6
    const p1, 0x7f110041

    invoke-virtual {p9, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p10, v4}, Landroid/widget/Button;->setText(I)V

    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0c0023

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const p3, 0x7f0900b3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0900b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900b4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "running_on_wearos"

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f110043

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f110045

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const-string p3, "setup_done"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->SetupDialogWatch()V

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->SetupDialog()V

    :cond_2
    const p3, 0x7f090290

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    const v1, 0x7f0900a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/io/File;

    const-string v2, "/sys/module/hci_smd/parameters/hcismd_set"

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f110046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;[Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const v5, 0x1090003

    if-eqz v3, :cond_4

    const-string v0, "None"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_4
    aget-object v0, v1, v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/BTFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/content/SharedPreferences;Landroid/widget/Spinner;)V

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f0903a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    new-instance p3, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/view/View;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const p2, 0x7f0900a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f090133

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09028e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    new-instance v5, Ljava/io/File;

    const-string v1, "/dev/hwbinder"

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v1, "/dev/vhci"

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/view/View;)V

    invoke-virtual {p2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p3, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, v0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, v8, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v8, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09043b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0900b5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/TextView;

    const p3, 0x7f09046d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/root/blue.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/ListView;Ljava/io/File;)V

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, p3, v6}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/offsec/nethunter/BTFragment;->onResume()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Status updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
