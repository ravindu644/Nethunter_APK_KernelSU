.class public Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "KaliServicesRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KaliServiceRecycleView"


# instance fields
.field private final KaliServicesModelListFilter:Landroid/widget/Filter;

.field private final context:Landroid/content/Context;

.field private final kaliServicesModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->KaliServicesModelListFilter:Landroid/widget/Filter;

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->KaliServicesModelListFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

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

.method synthetic lambda$onBindViewHolder$1$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f1100e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$10$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroid/content/DialogInterface;)V
    .locals 11

    const/4 v0, -0x1

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v10, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda9;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$11$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(ILandroid/view/View;)Z
    .locals 10

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c005c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f0901d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f0901da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f0901d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    const v0, 0x7f0901d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/CheckBox;

    const v0, 0x7f0901dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0901dd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f0901de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v3, 0x7f0901df

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v9, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v0, v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;I)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onBindViewHolder$12$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(ILandroid/widget/CompoundButton;Z)V
    .locals 1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    const-string p3, "1"

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->updateRunOnChrootStartServices(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$13$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetmSwitch(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p3

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetmSwitch(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3, p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->startServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p3

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetmSwitch(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3, p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->stopServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$3$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f1100e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$5$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f1100e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$7$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f1100e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$9$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Title cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Start Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Stop Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "String cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
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

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "1"

    goto :goto_0

    :cond_4
    const-string p1, "0"

    :goto_0
    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p2

    iget-object p2, p2, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object p3

    invoke-virtual {p1, p2, p8, p3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    invoke-virtual {p7}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[+]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, -0xff0100

    goto :goto_0

    :cond_0
    const-string v2, "#D81B60"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetnametextView(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetrunOnChrootStartCheckbox(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetmSwitch(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetstatustextView(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetnametextView(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetrunOnChrootStartCheckbox(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetmSwitch(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0060

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder-IA;)V

    return-object p2
.end method
