.class public Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NethunterRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NethunterRecyclerView"


# instance fields
.field private final NethunterModelListFilter:Landroid/widget/Filter;

.field private final context:Landroid/content/Context;

.field private final nethunterModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
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
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->NethunterModelListFilter:Landroid/widget/Filter;

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->runCommandforItem(I)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$5(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$7(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->NethunterModelListFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

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

.method synthetic lambda$onBindViewHolder$10$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(ILandroid/view/View;)Z
    .locals 9

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c009c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f090213

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f090214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f09022b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/CheckBox;

    const v0, 0x7f090216

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f090217

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f090218

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v3, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getRunOnCreate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "Apply"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;

    move-object v1, p2

    move-object v2, p0

    move-object v3, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;I)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onBindViewHolder$2$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$4$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110178

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$6$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110179

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$8$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Title cannot be empty"

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

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Delimiter cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
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

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "1"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p2

    iget-object p2, p2, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object p3

    invoke-virtual {p1, p2, p7, p3}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    invoke-virtual {p6}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method synthetic lambda$onBindViewHolder$9$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroid/content/DialogInterface;)V
    .locals 10

    const/4 v0, -0x1

    move-object v8, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v9, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 4

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgettitleTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetresultRecyclerView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetresultRecyclerView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/NethunterModel;->getResult()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgetrunButton(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->-$$Nest$fgettitleTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder-IA;)V

    return-object p2
.end method
