.class public Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DhcpdFragment"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WifipumpkinFragment$DhcpdFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->context:Landroid/content/Context;

    const-string p2, "Source updated"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->context:Landroid/content/Context;

    const-string p2, "Source not updated"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/etc/dhcp/dhcpd.conf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->configFilePath:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00d2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11011e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f090147

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090407

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iget-object p3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    const p3, 0x7f0904b7

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
