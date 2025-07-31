.class Lcom/offsec/nethunter/USBArsenalFragment$4;
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

    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$4;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

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

    iget-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$4;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$mgetusbNetWorkModeSpinnerPosition(Lcom/offsec/nethunter/USBArsenalFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment;->-$$Nest$mrefreshUSBNetworkInfos(Lcom/offsec/nethunter/USBArsenalFragment;I)V

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
