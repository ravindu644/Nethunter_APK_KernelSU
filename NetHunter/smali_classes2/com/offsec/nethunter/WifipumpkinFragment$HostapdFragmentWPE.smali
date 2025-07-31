.class public Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostapdFragmentWPE"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/offsec/nethunter/WifipumpkinFragment;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadOptions$2(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;)V
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

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p7, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p8}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p9, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0904eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f0904e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f0904ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f0904e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f0904ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/EditText;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?m)^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$loadOptions$3$com-offsec-nethunter-WifipumpkinFragment$HostapdFragmentWPE(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 15

    move-object v0, p0

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v2, "exe: "

    iget-object v3, v0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^interface=(.*)$"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v2, "^bssid=(.*)$"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v2, "^ssid=(.*)$"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v2, "^channel=(.*)$"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const-string v2, "^private_key_passwd=(.*)$"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda3;

    move-object v4, v1

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    invoke-direct/range {v4 .. v14}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda3;-><init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WifipumpkinFragment$HostapdFragmentWPE(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    const-string v0, "cd /etc/hostapd-wpe/certs && ./bootstrap"

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-WifipumpkinFragment$HostapdFragmentWPE(Landroid/view/View;)V
    .locals 7

    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0904eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0904e8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f0904ed

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f0904e9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v6, 0x7f0904ec

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "interface"

    invoke-direct {p0, v0, v6, v2}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bssid"

    invoke-direct {p0, v0, v3, v2}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssid"

    invoke-direct {p0, v0, v3, v2}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "channel"

    invoke-direct {p0, v0, v3, v2}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "private_key_passwd"

    invoke-direct {p0, v0, v2, v1}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->context:Landroid/content/Context;

    const-string v0, "Source updated"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->context:Landroid/content/Context;

    const-string v1, "Failed to read the configuration file."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/configs/hostapd-wpe.conf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0068

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0904ea

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->loadOptions(Landroid/view/View;)V

    new-instance v0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
