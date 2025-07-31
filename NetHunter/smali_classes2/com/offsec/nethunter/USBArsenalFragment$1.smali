.class Lcom/offsec/nethunter/USBArsenalFragment$1;
.super Ljava/lang/Object;
.source "USBArsenalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/USBArsenalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/USBArsenalFragment;

.field final synthetic val$usbFuncMACArrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$usbFuncWinArrayAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncMACArrayAdapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncWinArrayAdapter:Landroid/widget/ArrayAdapter;

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

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$fgetusbFuncSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncMACArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$fgetusbFuncSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncWinArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$mgettargetOSSpinnerString(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$mgetusbFuncSpinnerString(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$mrefreshUSBSwitchInfos(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/String;Ljava/lang/String;)V

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
