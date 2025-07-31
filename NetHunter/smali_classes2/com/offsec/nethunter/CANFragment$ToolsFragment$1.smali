.class Lcom/offsec/nethunter/CANFragment$ToolsFragment$1;
.super Ljava/lang/Object;
.source "CANFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CANFragment$ToolsFragment;->lambda$onCreateView$0$com-offsec-nethunter-CANFragment$ToolsFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CANFragment$ToolsFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CANFragment$ToolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$1;->this$0:Lcom/offsec/nethunter/CANFragment$ToolsFragment;

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

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$1;->this$0:Lcom/offsec/nethunter/CANFragment$ToolsFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->-$$Nest$fputselected_caniface(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "selected_usb"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$1;->this$0:Lcom/offsec/nethunter/CANFragment$ToolsFragment;

    const-string v0, "None"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->-$$Nest$fputselected_caniface(Lcom/offsec/nethunter/CANFragment$ToolsFragment;Ljava/lang/String;)V

    return-void
.end method
