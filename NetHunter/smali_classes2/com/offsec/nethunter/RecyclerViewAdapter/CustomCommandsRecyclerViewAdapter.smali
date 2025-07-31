.class public Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomCommandsRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KaliServiceRecycleView"


# instance fields
.field private final CustomCommandsModelListFilter:Landroid/widget/Filter;

.field private final context:Landroid/content/Context;

.field private final customCommandsModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->CustomCommandsModelListFilter:Landroid/widget/Filter;

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->CustomCommandsModelListFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$onBindViewHolder$1$com-offsec-nethunter-RecyclerViewAdapter-CustomCommandsRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Label cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Command string cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p2

    iget-object p2, p2, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    iget-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object p3

    invoke-virtual {p1, p2, p8, p3}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    invoke-virtual {p7}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method synthetic lambda$onBindViewHolder$2$com-offsec-nethunter-RecyclerViewAdapter-CustomCommandsRecyclerViewAdapter(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;ILandroid/content/DialogInterface;)V
    .locals 11

    const/4 v0, -0x1

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v10, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$3$com-offsec-nethunter-RecyclerViewAdapter-CustomCommandsRecyclerViewAdapter(ILandroid/view/View;)Z
    .locals 10

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0037

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f0901b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f0901b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    const v0, 0x7f0901b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Spinner;

    const v0, 0x7f0901af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v2

    iget-object v2, v2, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getExecutionMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "interactive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v2

    iget-object v2, v2, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRunOnBoot()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    const v3, 0x7f120117

    invoke-direct {v0, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;I)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onBindViewHolder$4$com-offsec-nethunter-RecyclerViewAdapter-CustomCommandsRecyclerViewAdapter(ILandroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object p2

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->runCommandforitem(ILandroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 3

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetcommandLabelTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetexecEnvTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetexecModeTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getExecutionMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetrunOnBootTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRunOnBoot()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetcommandLabelTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetrunButton(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder-IA;)V

    return-object p2
.end method
