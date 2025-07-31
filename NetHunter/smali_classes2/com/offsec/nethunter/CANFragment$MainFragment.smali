.class public Lcom/offsec/nethunter/CANFragment$MainFragment;
.super Lcom/offsec/nethunter/CANFragment;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CANFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# static fields
.field private static final SHORT_DELAY:J = 0x3e8L


# instance fields
.field private SelectedIface:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/CANFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$onCreateView$10(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$14(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$15(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$19(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$20(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$5(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$9(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    const p1, 0x1060016

    goto :goto_1

    :cond_2
    const p1, 0x1060014

    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 2

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Edit Command"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string p1, "Save"

    invoke-virtual {p3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string p2, "Cancel"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda9;

    invoke-direct {p2, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda9;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "Press CTRL+C to stop."

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Please set your slcan_attach command!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p2, p4

    const-string p2, "slcanAttach_cmd"

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Command updated!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 2

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Edit Command"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string p1, "Save"

    invoke-virtual {p3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda12;-><init>()V

    const-string p2, "Cancel"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda13;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "Press CTRL+C to stop."

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Please set your hlcand command!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p2, p4

    const-string p2, "hlcand_cmd"

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Command updated!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "Press CTRL+C to stop."

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Please set your ldattach command!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 2

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Edit Command"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string p1, "Save"

    invoke-virtual {p3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda15;-><init>()V

    const-string p2, "Cancel"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda16;

    invoke-direct {p2, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda16;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rfcomm bind "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface and Target field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-CANFragment$MainFragment(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "socketcand -v -l wlan0 -i "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$24$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/Map;Landroid/widget/Button;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "cantype_selected"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "start_caniface"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const-string v10, "^(can|vcan|slcan)[0-9]$"

    if-nez v9, :cond_e

    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "Interface "

    const-string v10, "vcan"

    const-string v11, " interface!"

    const-string v12, "Failed"

    const-string v13, "FATAL:"

    const-string v14, " && echo Success || echo Failed"

    const-string v15, "sudo ip link set "

    if-eqz v7, :cond_4

    iget-object v4, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " down && echo Success || echo Failed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sudo ip link delete "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to delete "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u25b6 CAN"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopped!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to stop "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 p1, v11

    const-string v11, "sudo ip link add dev "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Failed to add "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " interface! Interface may already existing."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 p1, v11

    :cond_7
    :goto_1
    const-string v7, "can"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "slcan"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v7, "ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM)[0-9]+$\'"

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v1, "No CAN Hardware detected, please connect adapter and try again."

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " mtu "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " txqueuelen "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    iget-object v4, v0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " up && echo Success || echo Failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_2

    :cond_c
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u23f9 CAN"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " started!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "Please set a CAN interface!"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v1, "CAN Interface should be named \"^(can|vcan|slcan)[0-9]$\""

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_10
    :goto_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, p5

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {p5 .. p5}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$onCreateView$25$com-offsec-nethunter-CANFragment$MainFragment(Ljava/util/Map;Landroid/widget/Button;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 1

    iget-object p4, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v0, "/opt/car_hacking/can_reset.sh"

    invoke-virtual {p4, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v0, "start_caniface"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "\u25b6 CAN"

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Interface reset!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$26$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    const-string p3, "cat "

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->context:Landroid/content/Context;

    const-string p2, "VIN must be exactly 17 characters long."

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/opt/car_hacking/car_venv/bin/vininfo show "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | tr -s [:space:] > /sdcard/nh_files/can_arsenal/output.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/can_arsenal/output.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "VINShowError"

    const-string v0, "Exception while reading VIN info"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$27$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    const-string p3, "cat "

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->context:Landroid/content/Context;

    const-string p2, "VIN must be exactly 17 characters long."

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/opt/car_hacking/car_venv/bin/vininfo check "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | tr -s [:space:] > /sdcard/nh_files/can_arsenal/output.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/can_arsenal/output.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "VINCheckError"

    const-string v0, "Exception while reading VIN info"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p2, p4

    const-string p2, "ldAttach_cmd"

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Command updated!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 2

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Edit Command"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string p1, "Save"

    invoke-virtual {p3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda18;-><init>()V

    const-string p2, "Cancel"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda19;

    invoke-direct {p2, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda19;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "Press CTRL+C to stop."

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Please set your slcand command!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p2, p4

    const-string p2, "slcand_cmd"

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Command updated!"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/CANFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0c002a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    const p2, 0x7f0900d1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const p3, 0x7f0904ce

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "setup_done"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->SetupDialog()V

    :cond_0
    const v1, 0x7f0900c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09032e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v5, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0904ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v6, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090434

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "ldAttach_prefs"

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ldAttach_cmd"

    const-string v7, "ldattach --debug --speed 38400 --eightbits --noparity --onestopbit --iflag -ICRNL,INLCR,-IXOFF 29 /dev/rfcomm0"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v0

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, v7}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, v7, v3}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f090442

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "slcand_prefs"

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "slcand_cmd"

    const-string v8, "slcand -s6 -t sw -S 200000 /dev/ttyUSB0"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v0

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v7}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v7, v3}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f090441

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "slcanAttach_prefs"

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "slcanAttach_cmd"

    const-string v8, "slcan_attach -s6 -o /dev/ttyUSB0"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v0

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v7}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v7, v3}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f090432

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "hlcand_prefs"

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "hlcand_cmd"

    const-string v8, "hlcand -F -s 500000 /dev/ttyUSB0"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v0

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v4}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v4, v3}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f090439

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090443

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v1, "CANInterfaceState"

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "start_caniface"

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f0900ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    const-string v0, "vcan"

    const-string v4, "slcan"

    const-string v7, "can"

    filled-new-array {v7, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1090003

    invoke-direct {v4, v7, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Lcom/offsec/nethunter/CANFragment$MainFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/CANFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090426

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u23f9 CAN"

    goto :goto_0

    :cond_1
    const-string v0, "\u25b6 CAN"

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;

    move-object v3, v0

    move-object v4, p0

    move-object v7, v2

    move-object v8, p2

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/Map;Landroid/widget/Button;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v2, p2, v1}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Ljava/util/Map;Landroid/widget/Button;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09002b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const v0, 0x7f0904cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p3, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p3, p2}, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
