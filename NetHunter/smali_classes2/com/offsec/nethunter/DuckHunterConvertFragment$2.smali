.class Lcom/offsec/nethunter/DuckHunterConvertFragment$2;
.super Ljava/lang/Object;
.source "DuckHunterConvertFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/DuckHunterConvertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

.field final synthetic val$duckyscriptSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;->val$duckyscriptSpinner:Landroid/widget/Spinner;

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

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    iget-object p2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;->val$duckyscriptSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->-$$Nest$mgetPreset(Lcom/offsec/nethunter/DuckHunterConvertFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->-$$Nest$mwrite_ducky(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
