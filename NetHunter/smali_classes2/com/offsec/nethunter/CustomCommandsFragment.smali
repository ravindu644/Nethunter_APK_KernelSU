.class public Lcom/offsec/nethunter/CustomCommandsFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomCommandsFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "CustomCommandsFragment"

.field public static targetPositionId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private addButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

.field private deleteButton:Landroid/widget/Button;

.field private moveButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetcustomCommandsRecyclerViewAdapter(Lcom/offsec/nethunter/CustomCommandsFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "CustomCommandsFragment"

    const-string v1, "CustomCommandsFragment: init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$11(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Landroid/view/Menu;Landroid/view/View;)V
    .locals 1

    const p1, 0x7f0901b6

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0901b6

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onDeleteItemSetup$15(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onDeleteItemSetup$16(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$20(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$21(Landroid/content/DialogInterface;I)V
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

.method public static newInstance(I)Lcom/offsec/nethunter/CustomCommandsFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CustomCommandsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onAddItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onDeleteItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onMoveItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAddItemSetup$12$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string p2, "Label cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string p2, "Command String cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
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

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p1

    sget p2, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    iget-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object p3

    invoke-virtual {p1, p2, p7, p3}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    invoke-virtual {p6}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method synthetic lambda$onAddItemSetup$13$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 10

    const/4 v0, -0x1

    move-object v8, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v9, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$14$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
    .locals 12

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Spinner;

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Spinner;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/CheckBox;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f0901a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v10}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const v11, 0x1090008

    invoke-direct {v4, v10, v11, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v3, Lcom/offsec/nethunter/CustomCommandsFragment$2;

    invoke-direct {v3, p0, v2, p1, v4}, Lcom/offsec/nethunter/CustomCommandsFragment$2;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "OK"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda13;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$17$com-offsec-nethunter-CustomCommandsFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
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

    const v3, 0x7f0901be

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

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string p2, "Nothing to be deleted."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$18$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$19$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0036

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;

    iget-object v4, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {p1, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {p1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda14;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda15;-><init>()V

    const-string v3, "Delete"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v2, "Select the service you want to remove: "

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, v1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onMoveItemSetup$22$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
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
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p3

    iget-object p5, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {p5}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object p5

    invoke-virtual {p3, p1, p2, p5}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->moveData(IILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string p2, "Successfully moved item."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string p2, "You are moving the item to the same position, nothing to be moved."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$23$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V
    .locals 7

    const/4 p5, -0x1

    invoke-virtual {p1, p5}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p5

    new-instance v6, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onMoveItemSetup$24$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c0038

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Spinner;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Spinner;

    const v1, 0x7f0901b9

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

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {p1, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v5, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v6, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "Move"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda10;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$10$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->backupData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

.method synthetic lambda$onOptionsItemSelected$6$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$9$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->restoreData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-CustomCommandsFragment(Ljava/util/List;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/CustomCommandsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const v0, 0x7f0d0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901a0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

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
    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda0;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda11;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$1;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0033

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->addButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->deleteButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->moveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const-string v4, "OK"

    const-string v5, "Cancel"

    const v6, 0x7f120117

    const-string v7, "/FragmentCustomCommands"

    packed-switch v3, :pswitch_data_0

    const-string v3, "Full path of the db file from where you want to restore:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_0
    const-string v3, "Full path to where you want to save the database:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->resetData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0901b4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->init(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->getLiveDataCustomCommandsModelList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->getLiveDataCustomCommandsModelList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, v1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    const p2, 0x7f0901bc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0901a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->addButton:Landroid/widget/Button;

    const p2, 0x7f0901ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->deleteButton:Landroid/widget/Button;

    const p2, 0x7f0901b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->moveButton:Landroid/widget/Button;

    const p2, 0x7f0901ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->onAddItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->onDeleteItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->onMoveItemSetup()V

    iget-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const-string v0, "com.offsec.nethunter"

    invoke-virtual {p2, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "running_on_wearos"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
