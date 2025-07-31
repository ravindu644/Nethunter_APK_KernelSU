.class Lcom/offsec/nethunter/USBArsenalFragment$2;
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


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/USBArsenalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

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

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$sfgetis_init_exists()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$fgetadbSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$fgetadbSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$fgetadbSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$fgetadbSpinner(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$mgettargetOSSpinnerString(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

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
