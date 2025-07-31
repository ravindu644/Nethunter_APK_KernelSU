.class Lcom/offsec/nethunter/MacchangerFragment$2;
.super Ljava/lang/Object;
.source "MacchangerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MacchangerFragment;->setMacModeSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MacchangerFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MacchangerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

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

    const/16 p1, 0x8

    const/4 p2, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetregenerateMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetclearMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$mgenRandomMACAddress(Lcom/offsec/nethunter/MacchangerFragment;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    iget-object p3, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetregenerateMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetclearMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
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
