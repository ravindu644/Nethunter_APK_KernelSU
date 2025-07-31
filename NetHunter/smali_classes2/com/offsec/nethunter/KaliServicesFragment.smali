.class public Lcom/offsec/nethunter/KaliServicesFragment;
.super Landroidx/fragment/app/Fragment;
.source "KaliServicesFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "KaliServicesFragment"

.field private static targetPositionId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private addButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/Button;

.field private kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

.field private moveButton:Landroid/widget/Button;

.field private refreshButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetkaliServicesRecyclerViewAdapter(Lcom/offsec/nethunter/KaliServicesFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfputtargetPositionId(I)V
    .locals 0

    sput p0, Lcom/offsec/nethunter/KaliServicesFragment;->targetPositionId:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$12(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$14(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$16(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$18(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$20(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Landroid/view/Menu;Landroid/view/View;)V
    .locals 1

    const p1, 0x7f0901e3

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0901e3

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onDeleteItemSetup$24(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onDeleteItemSetup$25(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$29(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$30(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$7(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onRefreshItemSetup$11(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->refreshData()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/KaliServicesFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onAddItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onDeleteItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onMoveItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onRefreshItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->refreshButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAddItemSetup$13$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f1100e4

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda29;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$15$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f1100e5

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$17$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f1100e2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda15;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$19$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f1100e3

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$21$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const p2, 0x7f1100b6

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string p2, "Start Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string p2, "Stop Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string p2, "Check Status Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "1"

    goto :goto_0

    :cond_4
    const-string p1, "0"

    :goto_0
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    sget p2, Lcom/offsec/nethunter/KaliServicesFragment;->targetPositionId:I

    iget-object p3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object p3

    invoke-virtual {p1, p2, p7, p3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    invoke-virtual {p6}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method synthetic lambda$onAddItemSetup$22$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 10

    const/4 v0, -0x1

    move-object v8, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v9, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda17;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$23$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 17

    move-object/from16 v8, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "Service list is empty. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v8, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0059

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/EditText;

    const v2, 0x7f0901ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    const v2, 0x7f0901cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    const v2, 0x7f0901c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    const v2, 0x7f0901c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    const v2, 0x7f0901cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v9, 0x7f0901d0

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v10, 0x7f0901d1

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v11, 0x7f0901d2

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v12, 0x7f0901cd

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    const v13, 0x7f0901ce

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/offsec/nethunter/models/KaliServicesModel;

    move-object/from16 p1, v15

    invoke-virtual/range {v16 .. v16}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p1

    goto :goto_0

    :cond_1
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 p1, v7

    iget-object v7, v8, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    move-object/from16 v16, v3

    const v3, 0x1090008

    invoke-direct {v15, v7, v3, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v15, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v3, 0x7f1101cc

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(I)V

    const v3, 0x7f1101cd

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(I)V

    const v3, 0x7f1101cb

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(I)V

    new-instance v3, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda31;

    invoke-direct {v3, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda32;

    invoke-direct {v2, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v9, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v10, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v11, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$2;

    invoke-direct {v2, v8, v13, v0, v15}, Lcom/offsec/nethunter/KaliServicesFragment$2;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, v8, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {v0, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v10, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda3;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v10}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$26$com-offsec-nethunter-KaliServicesFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0901ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully deleted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " items."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string p2, "Nothing to be deleted."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$27$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p2, p1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$28$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c005b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;

    iget-object v4, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {p1, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {p1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda22;-><init>()V

    const-string v3, "Delete"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v2, "Select the service you want to remove: "

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onMoveItemSetup$31$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-eq p1, p2, :cond_3

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p5

    if-nez p5, :cond_0

    add-int/lit8 p5, p1, 0x1

    if-eq p2, p5, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p5

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    add-int/lit8 p5, p1, -0x1

    if-ne p2, p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    if-ne p3, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p3

    iget-object p5, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {p5}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object p5

    invoke-virtual {p3, p1, p2, p5}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->moveData(IILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string p2, "Successfully moved item."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string p2, "You are moving the item to the same position, nothing to be moved."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$32$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V
    .locals 7

    const/4 p5, -0x1

    invoke-virtual {p1, p5}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p5

    new-instance v6, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onMoveItemSetup$33$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c005d

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Spinner;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Spinner;

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Spinner;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {p1, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v5, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v6, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda13;-><init>()V

    const-string v2, "Move"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda14;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$10$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->backupData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db is successfully backup to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Failed to backup the DB."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$6$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$9$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->restoreData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db is successfully restored to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Failed to restore the DB."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-KaliServicesFragment(Ljava/util/List;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/KaliServicesFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const v0, 0x7f0d0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda8;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/KaliServicesFragment$1;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->refreshButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->addButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->deleteButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->moveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const-string v4, "OK"

    const-string v5, "Cancel"

    const v6, 0x7f120117

    const/4 v7, 0x0

    const-string v8, "{0}/FragmentKaliServices"

    const/4 v9, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const v3, 0x7f1100e0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v3, v1, v7

    invoke-static {v8, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_2
    const v3, 0x7f1100e1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v3, v1, v7

    invoke-static {v8, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->resetData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901e1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->refreshData()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->init(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->getLiveDataKaliServicesModelList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->getLiveDataKaliServicesModelList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, v1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    const p2, 0x7f0901e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0901ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->refreshButton:Landroid/widget/Button;

    const p2, 0x7f0901c7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->addButton:Landroid/widget/Button;

    const p2, 0x7f0901d5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->deleteButton:Landroid/widget/Button;

    const p2, 0x7f0901e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->moveButton:Landroid/widget/Button;

    const p2, 0x7f0901d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0901d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onRefreshItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onAddItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onDeleteItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onMoveItemSetup()V

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "running_on_wearos"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method
