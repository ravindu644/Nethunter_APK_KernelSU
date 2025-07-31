.class public Lcom/offsec/nethunter/PineappleFragment;
.super Landroidx/fragment/app/Fragment;
.source "PineappleFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "PineappleFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private proxy_type:Ljava/lang/String;

.field private start_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "start "

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    return-void
.end method

.method private addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$4()V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su -c \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pine-nano stop\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PineappleFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/PineappleFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/PineappleFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/PineappleFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/PineappleFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private startConnection(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    const v0, 0x7f09037f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f09037a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090378

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f090377

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-PineappleFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "start_noup "

    iput-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "start "

    iput-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-PineappleFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " start_proxy "

    iput-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->proxy_type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->proxy_type:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-PineappleFragment(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su -c \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pine-nano "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/PineappleFragment;->startConnection(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->proxy_type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PineappleFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-PineappleFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/view/View;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    const-string p2, "Starting eth0 connection"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-PineappleFragment(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    const-string v0, "Bringing down eth0 conneciton"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/PineappleFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string p2, "PineappleFragment"

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f09037c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    new-instance p3, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09037e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    new-instance v0, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/view/View;)V

    const p3, 0x7f09037d

    invoke-direct {p0, p3, p2, p1}, Lcom/offsec/nethunter/PineappleFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    new-instance p2, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/PineappleFragment;)V

    const p3, 0x7f090379

    invoke-direct {p0, p3, p2, p1}, Lcom/offsec/nethunter/PineappleFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    return-object p1
.end method
