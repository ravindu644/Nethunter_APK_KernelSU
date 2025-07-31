.class Lcom/offsec/nethunter/NmapFragment$1;
.super Ljava/lang/Object;
.source "NmapFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/NmapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/NmapFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/NmapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

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

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -e rndis0"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputnet_interface(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected value: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -e eth0"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputnet_interface(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -e wlan1"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputnet_interface(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -e wlan0"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputnet_interface(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetnet_interface(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

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
