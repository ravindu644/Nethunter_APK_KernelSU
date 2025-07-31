.class Lcom/offsec/nethunter/CustomCommandsFragment$2;
.super Ljava/lang/Object;
.source "CustomCommandsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CustomCommandsFragment;->lambda$onAddItemSetup$14$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$customCommandsModelList:Ljava/util/List;

.field final synthetic val$insertLabels:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$customCommandsModelList:Ljava/util/List;

    iput-object p4, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x4

    const/4 p2, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {p3, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    sput p2, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    iget-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {p3, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$customCommandsModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p2

    sput p1, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    const/4 p2, 0x0

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    new-instance p2, Lcom/offsec/nethunter/CustomCommandsFragment$2$1;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$2$1;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    new-instance p2, Lcom/offsec/nethunter/CustomCommandsFragment$2$2;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$2$2;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string p1, "CustomCommandsFragment"

    const-string v0, "onNothingSelected: Nothing Selected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
