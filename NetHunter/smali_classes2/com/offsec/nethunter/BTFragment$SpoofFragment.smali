.class public Lcom/offsec/nethunter/BTFragment$SpoofFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpoofFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    return-void
.end method

.method private refreshSpoof(Landroid/view/View;)V
    .locals 9

    new-instance v3, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v3}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const v0, 0x7f090411

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f090121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v8, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda3;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v8}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4

    iget-object p4, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    const-string v0, "selected_address"

    const-string v1, ""

    invoke-static {p4, v0, v1}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    const-string v2, "selected_class"

    invoke-static {v0, v2, v1}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    const-string v3, "selected_name"

    invoke-static {v2, v3, v1}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->refreshSpoof(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, " -a "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, " -c "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, " -n \""

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-string v1, ""

    if-eqz p5, :cond_0

    move-object p3, v1

    :cond_0
    const-string p5, " -n \"\""

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    move-object p4, v1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please enter at least one parameter!"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string p5, "echo -ne \"\\033]0;Spoofing Bluetooth\\007\" && clear;echo \'Spooftooph started..\';spooftooph -i "

    if-nez p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; sleep 2 && hciconfig "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " up && spooftooph -i "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " && echo \'\nBringing interface up with hciconfig..\n\nClass/Name changed, closing in 3 secs..\';sleep 3 && exit"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " && echo \'\nClass/Name changed, closing in 3 secs..\';sleep 3 && exit"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->run_cmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$refreshSpoof$3$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bootkali custom_cmd hciconfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | awk \'/Address/ { print $3 }\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -a | awk \'/Class:/ { print $2 }\' | sed \'/^Class:/d\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " -a | awk \'/Device Class:/ { print $3, $4, $5 }\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -a | grep Name | cut -d\\\' -f2"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Interface is down!"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0c0024

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090411

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/EditText;

    const p2, 0x7f090469

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/EditText;

    const p2, 0x7f09046a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/EditText;

    const p2, 0x7f09046c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/EditText;

    const p2, 0x7f0903f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v3, v4, v5}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0903a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09007f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda2;

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
