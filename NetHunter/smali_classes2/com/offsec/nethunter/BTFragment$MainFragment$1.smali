.class Lcom/offsec/nethunter/BTFragment$MainFragment$1;
.super Ljava/lang/Object;
.source "BTFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment$MainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

.field final synthetic val$ifaces:Landroid/widget/Spinner;

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/content/SharedPreferences;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;->val$sharedpreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;->val$ifaces:Landroid/widget/Spinner;

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

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->-$$Nest$fputselected_iface(Lcom/offsec/nethunter/BTFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;->val$ifaces:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    const-string p3, "selected_iface"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

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
