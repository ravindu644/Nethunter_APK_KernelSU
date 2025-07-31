.class public Lcom/offsec/nethunter/SETFragment$MainFragment;
.super Lcom/offsec/nethunter/SETFragment;
.source "SETFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/SETFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private nh:Lcom/offsec/nethunter/utils/NhPaths;

.field private selected_template:Ljava/lang/String;

.field private template_src:Ljava/lang/String;

.field private template_tempfile:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetselected_template(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettemplate_src(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselected_template(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtemplate_src(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtemplate_tempfile(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_tempfile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/SETFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private refresh(Landroid/view/View;)V
    .locals 14

    const v0, 0x7f090330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_tempfile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0903ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0903f0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f0903f1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f0903f2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cp "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "Twitter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_1
    const-string v8, "Messenger"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2
    const-string v8, "Facebook"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v7, v9

    const-string v3, "{0} sent you a Direct Message on Twitter!"

    invoke-static {v3, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v7, v9

    const-string v3, "{0} sent you a message on Messenger."

    invoke-static {v3, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v7, v9

    const-string v3, "{0} sent you a message on Facebook."

    invoke-static {v3, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v3, "sed \'s/\\&/\\\\\\&/g\' <<< \""

    const-string v7, "/g\' "

    const-string v8, "&"

    const-string v10, "\""

    if-nez p1, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "sed \'s|\\/|\\\\\\/|g\' <<< \""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array v11, v6, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "sed -i \'s/https\\:\\/\\/www.google.com/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v11, v9

    invoke-virtual {v2, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array v2, v6, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "sed -i \'s/E Corp/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sed -i \"s|id=\\\"set\\\".*|id=\\\"set\\\" src=\\\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\\" width=\\\"72\\\">|\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x217bfee6 -> :sswitch_2
        0x21d8daf3 -> :sswitch_1
        0x2c9a4253 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-SETFragment$MainFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-SETFragment$MainFragment(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-SETFragment$MainFragment(Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->refresh(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_tempfile:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "/root/setoolkit/src/templates/"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".template"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo \'SUBJECT=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"\' > "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " && echo \'HTML=\"\' >> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " && cat "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " >> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " && echo \'\\nEND\"\' >> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Successfully saved to SET templates folder"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-SETFragment$MainFragment(Landroid/view/View;)V
    .locals 0

    const-string p1, "echo -ne \"\\033]0;SET\\007\" && clear;cd /root/setoolkit && ./setoolkit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/SETFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0c00cd

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->context:Landroid/content/Context;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const p3, 0x7f0903f0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const v1, 0x7f0903f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "set_setup_done"

    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->SetupDialog()V

    :cond_0
    const-string p2, "Facebook"

    const-string v0, "Twitter"

    const-string v2, "Messenger"

    filled-new-array {v2, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0903f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p2, 0x7f090330

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    new-instance v2, Lcom/offsec/nethunter/SETFragment$MainFragment$1;

    invoke-direct {v2, p0, v1, p3, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p3, 0x7f0903ab

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f0903c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f090440

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0903a1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/webkit/WebView;)V

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
